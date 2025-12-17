<?php

namespace Botble\Estimate\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Estimate\Tables\ConstructionTypeTable;
use Botble\Estimate\Forms\ConstructionTypeForm;
use Botble\Estimate\Models\ConstructionType;


class ConstructionTypeController extends BaseController
{
    public function index(ConstructionTypeTable $table)
    {
        page_title()->setTitle('Hình thức xây dựng');

        return $table->renderTable();
    }

    public function create()
    {
        page_title()->setTitle('Thêm hình thức xây dựng');

        return ConstructionTypeForm::create()->renderForm();
    }

    public function store()
    {
        ConstructionTypeForm::create()->save();

        return redirect()
            ->route('estimate.construction-types.index')
            ->with('success_msg', 'Thêm thành công');
    }

    public function edit($id)
    {
        $item = ConstructionType::findOrFail($id);

        page_title()->setTitle('Chỉnh sửa hình thức xây dựng');

        return ConstructionTypeForm::createFromModel($item)->renderForm();
    }

    public function update($id)
    {
        $item = ConstructionType::findOrFail($id);

        ConstructionTypeForm::createFromModel($item)->save();

        return redirect()
            ->route('estimate.construction-types.index')
            ->with('success_msg', 'Cập nhật thành công');
    }

    public function destroy($id)
    {
        ConstructionType::findOrFail($id)->delete();

        return response()->json(['message' => 'Đã xoá']);
    }

}
