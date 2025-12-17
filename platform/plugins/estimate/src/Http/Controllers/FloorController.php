<?php

namespace Botble\Estimate\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Estimate\Tables\FloorTable;
use Botble\Estimate\Forms\FloorForm;
use Botble\Estimate\Models\Floor;
use Illuminate\Http\JsonResponse;

class FloorController extends BaseController
{
    /**
     * Danh sách số tầng
     */
    public function index(FloorTable $table)
    {
        page_title()->setTitle('Số tầng');

        return $table->renderTable();
    }

    /**
     * Form tạo mới
     */
    public function create()
    {
        page_title()->setTitle('Thêm số tầng');

        return FloorForm::create()->renderForm();
    }

    /**
     * Lưu dữ liệu tạo mới
     */
    public function store()
    {
        $form = FloorForm::create();
        $form->save();

        return redirect()
            ->route('estimate.floors.index')
            ->with('success_msg', 'Thêm số tầng thành công');
    }

    /**
     * Form chỉnh sửa
     */
    public function edit(int $id)
    {
        $floor = Floor::findOrFail($id);

        page_title()->setTitle('Chỉnh sửa số tầng');

        return FloorForm::createFromModel($floor)->renderForm();
    }

    /**
     * Cập nhật dữ liệu
     */
    public function update(int $id)
    {
        $floor = Floor::findOrFail($id);

        FloorForm::createFromModel($floor)->save();

        return redirect()
            ->route('estimate.floors.index')
            ->with('success_msg', 'Cập nhật số tầng thành công');
    }

    /**
     * Xóa (AJAX)
     */
    public function destroy(int $id): JsonResponse
    {
        $floor = Floor::findOrFail($id);
        $floor->delete();

        return response()->json([
            'message' => 'Đã xóa số tầng',
        ]);
    }
}