<?php

namespace Botble\Estimate\Http\Controllers;

use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Estimate\Http\Requests\EstimateRequest;
use Botble\Estimate\Models\Estimate;
use Botble\Base\Http\Controllers\BaseController;
use Botble\Estimate\Tables\EstimateTable;
use Botble\Estimate\Forms\EstimateForm;

class EstimateController extends BaseController
{
    public function __construct()
    {
        $this
            ->breadcrumb()
            ->add(trans(trans('plugins/estimate::estimate.name')), route('estimate.index'));
    }

    public function index(EstimateTable $table)
    {
        $this->pageTitle(trans('plugins/estimate::estimate.name'));

        return $table->renderTable();
    }

    public function create()
    {
        $this->pageTitle(trans('plugins/estimate::estimate.create'));

        return EstimateForm::create()->renderForm();
    }

    public function store(EstimateRequest $request)
    {
        $form = EstimateForm::create()->setRequest($request);

        $form->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('estimate.index'))
            ->setNextUrl(route('estimate.edit', $form->getModel()->getKey()))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(Estimate $estimate)
    {
        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $estimate->name]));

        return EstimateForm::createFromModel($estimate)->renderForm();
    }

    public function update(Estimate $estimate, EstimateRequest $request)
    {
        EstimateForm::createFromModel($estimate)
            ->setRequest($request)
            ->save();

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('estimate.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Estimate $estimate)
    {
        return DeleteResourceAction::make($estimate);
    }
}
