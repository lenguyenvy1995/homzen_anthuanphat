<?php

namespace Botble\Estimate\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Estimate\Tables\RoofTable;
use Botble\Estimate\Forms\RoofForm;
use Botble\Estimate\Models\Roof;
use Illuminate\Http\JsonResponse;

class RoofController extends BaseController
{
    /**
     * Danh sách mái
     */
    public function index(RoofTable $table)
    {
        page_title()->setTitle('Mái nhà');

        return $table->renderTable();
    }

    /**
     * Form tạo mới
     */
    public function create()
    {
        page_title()->setTitle('Thêm mái nhà');

        return RoofForm::create()->renderForm();
    }

    /**
     * Lưu dữ liệu tạo mới
     */
    public function store()
    {
        RoofForm::create()->save();

        return redirect()
            ->route('estimate.roofs.index')
            ->with('success_msg', 'Thêm mái nhà thành công');
    }

    /**
     * Form chỉnh sửa
     */
    public function edit(int $id)
    {
        $roof = Roof::findOrFail($id);

        page_title()->setTitle('Chỉnh sửa mái nhà');

        return RoofForm::createFromModel($roof)->renderForm();
    }

    /**
     * Cập nhật dữ liệu
     */
    public function update(int $id)
    {
        $roof = Roof::findOrFail($id);

        RoofForm::createFromModel($roof)->save();

        return redirect()
            ->route('estimate.roofs.index')
            ->with('success_msg', 'Cập nhật mái nhà thành công');
    }

    /**
     * Xóa (AJAX)
     */
    public function destroy(int $id): JsonResponse
    {
        $roof = Roof::findOrFail($id);
        $roof->delete();

        return response()->json([
            'message' => 'Đã xóa mái nhà',
        ]);
    }
}