<?php

namespace Botble\Construction\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Construction\Forms\ConstructionForm;
use Botble\Construction\Http\Requests\ConstructionRequest;
use Botble\Construction\Models\Construction;
use Botble\Construction\Tables\ConstructionTable;
use Botble\Base\Http\Actions\DeleteResourceAction;
use Botble\Base\Events\CreatedContentEvent;
use Botble\Base\Events\UpdatedContentEvent;
use Botble\Base\Events\DeletedContentEvent;
use Botble\Base\Http\Responses\BaseHttpResponse;

class ConstructionController extends BaseController
{
    public function index(ConstructionTable $table)
    {
        page_title()->setTitle('Thi công xây dựng');

        return $table->renderTable();
    }

    public function create()
    {
        page_title()->setTitle('Thêm bài thi công');

        return ConstructionForm::create()->renderForm();
    }

    public function store(ConstructionRequest $request)
    {
        $construction = Construction::create($request->validated());
        $construction->categories()->sync($request->input('categories', []));
        event(new CreatedContentEvent('construction', $request, $construction));

        return $this->httpResponse()
            ->setPreviousUrl(route('construction.index'))
            ->setNextUrl(route('construction.edit', $construction->id))
            ->setMessage(trans('core/base::notices.create_success_message'));
    }

    public function edit(int $id)
    {
        $construction = Construction::findOrFail($id);

        page_title()->setTitle('Chỉnh sửa bài thi công');

        return ConstructionForm::createFromModel($construction)->renderForm();
    }

    public function update(int $id, ConstructionRequest $request)
    {
        $construction = Construction::findOrFail($id);
        $construction->update($request->validated());
        $construction->categories()->sync($request->input('categories', []));
        event(new UpdatedContentEvent('construction', $request, $construction));
        return $this->httpResponse()
            ->setPreviousUrl(route('construction.index'))
            ->setMessage(trans('core/base::notices.update_success_message'));
    }

    public function destroy(Construction $construction, BaseHttpResponse $response)
    {
        return DeleteResourceAction::make($construction)
            ->afterDeleting(function (DeleteResourceAction $action) {
                $action->getHttpResponse()
                    ->setMessage('Xóa danh mục thi công thành công!');
            });
    }
}
