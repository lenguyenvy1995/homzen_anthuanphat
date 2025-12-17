<?php

namespace Botble\Estimate\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class HouseTypeRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => 'required|string|max:255',
            'coefficient' => 'required|numeric|min:0',
            'description' => 'nullable|string|max:500',
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }

    public function attributes(): array
    {
        return [
            'name' => 'Tên loại nhà',
            'coefficient' => 'Hệ số',
            'description' => 'Mô tả',
            'status' => trans('core/base::tables.status'),
        ];
    }
}