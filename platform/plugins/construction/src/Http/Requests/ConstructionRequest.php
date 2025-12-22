<?php

namespace Botble\Construction\Http\Requests;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Support\Http\Requests\Request;
use Illuminate\Validation\Rule;

class ConstructionRequest extends Request
{
    public function rules(): array
    {
        return [
            'name' => ['required', 'string', 'max:255'],
            'categories' => ['required', 'array', 'min:1'],
            'categories.*' => ['required', 'integer', 'exists:construction_categories,id'],
            'description' => ['nullable', 'string'],
            'content' => ['nullable', 'string'],
            'image' => ['nullable', 'string', 'max:255'],
            'status' => ['required', Rule::in(BaseStatusEnum::values())],
        ];
    }
}
