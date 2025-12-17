<?php

namespace Botble\Estimate\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class ConstructionTypeRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => 'required|string|max:255',
            'price_per_m2' => 'required|numeric|min:0',
            'description' => 'nullable|string|max:500',
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }

    public function attributes(): array
    {
        return [
            'name' => 'Hình thức xây dựng',
            'price_per_m2' => 'Đơn giá / m²',
            'description' => 'Mô tả',
            'status' => trans('core/base::tables.status'),
        ];
    }
}