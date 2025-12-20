<?php

namespace Botble\Construction\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Construction\Forms\ConstructionCategoryForm;
use Botble\Construction\Http\Requests\ConstructionCategoryRequest;
use Botble\Construction\Models\ConstructionCategory;
use Botble\Construction\Tables\ConstructionCategoryTable;
use Botble\Base\Http\Requests\UpdateTreeCategoryRequest;
use Botble\Base\Http\Responses\BaseHttpResponse;
use Illuminate\Http\Request;
use Botble\Base\Supports\RepositoryHelper;
use Botble\Base\Facades\Assets;
use Botble\Base\Forms\FormAbstract;
use Illuminate\Support\Facades\Auth;
use Botble\Base\Http\Actions\DeleteResourceAction;

class ConstructionCategoryController extends BaseController
{
    public function index(Request $request, ConstructionCategoryTable $dataTable)
    {
        $this->pageTitle(trans('plugins/construction::categories.menu'));

        if ($request->get('as') === 'table') {
            return $dataTable->renderTable();
        }

        $categories = ConstructionCategory::query()
            ->latest('is_default')
            ->oldest('order')
            ->with('slugable');

        $categories = RepositoryHelper::applyBeforeExecuteQuery(
            $categories,
            new ConstructionCategory()
        )->get();

        if ($request->ajax()) {
            $data = view(
                'core/base::forms.partials.tree-categories',
                $this->getOptions(compact('categories'))
            )->render();

            return $this->httpResponse()->setData($data);
        }

        Assets::addStylesDirectly('vendor/core/core/base/css/tree-category.css')
            ->addScriptsDirectly('vendor/core/core/base/js/tree-category.js');

        $form = ConstructionCategoryForm::create([
            'template' => 'plugins/construction::categories.form-tree-category',
        ]);

        $form = $this->setFormOptions($form, null, compact('categories'));
        $form->setUrl(route('construction.categories.create'));

        return $form->renderForm();
    }
    protected function setFormOptions(FormAbstract $form, ?ConstructionCategory $model = null, array $options = []): FormAbstract
    {
        if (! $model) {
            $form->setUrl(route('construction.categories.create'));
        }

        if (! Auth::guard()->user()->hasPermission('construction.categories.create') && ! $model) {
            $class = $form->getFormOption('class');
            $form->setFormOption('class', $class . ' d-none');
        }

        $form->setFormOptions($this->getOptions($options));

        return $form;
    }
    protected function getOptions(array $options = []): array
    {
        return array_merge([
            'canCreate' => Auth::guard()->user()->hasPermission('construction.categories.create'),
            'canEdit' => Auth::guard()->user()->hasPermission('construction.categories.edit'),
            'canDelete' => Auth::guard()->user()->hasPermission('construction.categories.destroy'),
            'createRoute' => 'construction.categories.create',
            'editRoute' => 'construction.categories.edit',
            'deleteRoute' => 'construction.categories.destroy',
            'updateTreeRoute' => 'construction.categories.update-tree',
        ], $options);
    }
    public function updateTree(UpdateTreeCategoryRequest $request): BaseHttpResponse
    {
        ConstructionCategory::updateTree($request->validated('data'));

        return $this
            ->httpResponse()
            ->withUpdatedSuccessMessage();
    }
    public function create(Request $request)
    {
        page_title()->setTitle(trans('plugins/construction::construction.create_category'));

        if ($request->ajax()) {
            return $this
                ->httpResponse()
                ->setData($this->getForm());
        }

        return ConstructionCategoryForm::create()->renderForm();
    }

    public function store(ConstructionCategoryRequest $request)
    {
        $category = ConstructionCategory::create($request->validated());

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('construction.categories.index'))
            ->setNextUrl(route('construction.categories.edit', $category->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }
    public function edit(ConstructionCategory $category, Request $request)
    {
        if ($request->ajax()) {
            return $this
                ->httpResponse()
                ->setData($this->getForm($category));
        }

        $this->pageTitle(trans('core/base::forms.edit_item', ['name' => $category->name]));

        return ConstructionCategoryForm::createFromModel($category)
            ->setUrl(route('construction.categories.edit', $category->getKey()))
            ->renderForm();
    }
  

    public function update(int $id, ConstructionCategoryRequest $request)
    {
        $category = ConstructionCategory::findOrFail($id);
        $category->update($request->validated());

        return $this
            ->httpResponse()
            ->setPreviousUrl(route('construction.categories.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    // public function destroy(int $id)
    // {
    //     ConstructionCategory::findOrFail($id)->delete();

    //     return $this
    //         ->httpResponse()
    //         ->setMessage(trans('core/base::notices.delete_success_message'));
    // }
    public function destroy(ConstructionCategory $category)
    {
        return DeleteResourceAction::make($category);
    }
    protected function getForm(?ConstructionCategory $model = null): string
    {
        $options = ['template' => 'core/base::forms.form-no-wrap'];

        if ($model) {
            $options['model'] = $model;
        }

        $form = ConstructionCategoryForm::create($options);

        $form = $this->setFormOptions($form, $model);

        if (! $model) {
            $form->setUrl(route('construction.categories.create'));
        } else {
            $form->setUrl(route('construction.categories.edit', $model->getKey()));
        }

        return $form->renderForm();
    }
}
