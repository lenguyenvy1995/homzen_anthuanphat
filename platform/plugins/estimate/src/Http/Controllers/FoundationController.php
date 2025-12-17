<?php

namespace Botble\Estimate\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Estimate\Tables\FoundationTable;
use Botble\Estimate\Forms\FoundationForm;
use Botble\Estimate\Models\Foundation;
use Illuminate\Http\JsonResponse;

class FoundationController extends BaseController
{
    /**
     * Danh sách móng
     */
    public function index(FoundationTable $table)
    {
        page_title()->setTitle('Móng nhà');

        return $table->renderTable();
    }

    /**
     * Form tạo mới
     */
    public function create()
    {
        page_title()->setTitle('Thêm móng nhà');

        return FoundationForm::create()->renderForm();
    }

    /**
     * Lưu dữ liệu tạo mới
     */
    public function store()
    {
        FoundationForm::create()->save();

        return redirect()
            ->route('estimate.foundations.index')
            ->with('success_msg', 'Thêm móng nhà thành công');
    }

    /**
     * Form chỉnh sửa
     */
    public function edit(int $id)
    {
        $foundation = Foundation::findOrFail($id);

        page_title()->setTitle('Chỉnh sửa móng nhà');

        return FoundationForm::createFromModel($foundation)->renderForm();
    }

    /**
     * Cập nhật dữ liệu
     */
    public function update(int $id)
    {
        $foundation = Foundation::findOrFail($id);

        FoundationForm::createFromModel($foundation)->save();

        return redirect()
            ->route('estimate.foundations.index')
            ->with('success_msg', 'Cập nhật móng nhà thành công');
    }

    /**
     * Xóa (AJAX)
     */
    public function destroy(int $id): JsonResponse
    {
        $foundation = Foundation::findOrFail($id);
        $foundation->delete();

        return response()->json([
            'message' => 'Đã xóa móng nhà',
        ]);
    }
}