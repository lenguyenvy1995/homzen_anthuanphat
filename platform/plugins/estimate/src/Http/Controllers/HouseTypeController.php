<?php

namespace Botble\Estimate\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Estimate\Models\HouseType;
use Botble\Estimate\Tables\HouseTypeTable;
use Botble\Estimate\Forms\HouseTypeForm;

class HouseTypeController extends BaseController
{
    public function index(HouseTypeTable $table)
    {
        page_title()->setTitle('Loại nhà');

        return $table->renderTable();
    }

    public function create()
    {
        page_title()->setTitle('Thêm loại nhà');

        return HouseTypeForm::create()->renderForm();
    }

    public function store()
    {
        $form = HouseTypeForm::create();
        $form->save();

        return redirect()->route('estimate.house-types.index')
            ->with('success_msg', 'Thêm loại nhà thành công');
    }

    public function edit($id)
    {
        $houseType = HouseType::findOrFail($id);

        page_title()->setTitle('Chỉnh sửa loại nhà');

        return HouseTypeForm::createFromModel($houseType)->renderForm();
    }

    public function update($id)
    {
        $houseType = HouseType::findOrFail($id);

        HouseTypeForm::createFromModel($houseType)->save();

        return redirect()->route('estimate.house-types.index')
            ->with('success_msg', 'Cập nhật thành công');
    }

    public function destroy($id)
    {
        HouseType::findOrFail($id)->delete();

        return response()->json([
            'message' => 'Xóa thành công',
        ]);
    }
}