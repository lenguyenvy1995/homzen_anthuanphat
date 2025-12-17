<?php

namespace Botble\Estimate\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class RoofRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => 'required|string|max:255',
            'coefficient' => 'required|numeric|min:0',
            'status' => Rule::in(BaseStatusEnum::values()),
        ];
    }

    public function attributes(): array
    {
        return [
            'name' => 'Mái nhà',
            'coefficient' => 'Hệ số',
            'status' => trans('core/base::tables.status'),
        ];
    }
}