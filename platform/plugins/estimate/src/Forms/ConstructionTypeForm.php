<?php

namespace Botble\Estimate\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Estimate\Http\Requests\ConstructionTypeRequest;
use Botble\Estimate\Models\ConstructionType;

class ConstructionTypeForm extends FormAbstract
{
    public function buildForm(): void
    {
        $this
            ->setupModel(new ConstructionType())
            ->setValidatorClass(ConstructionTypeRequest::class)
            ->withCustomFields()

            ->add(
                'name',
                TextField::class,
                TextFieldOption::make()
                    ->label('Hình thức xây dựng')
                    ->placeholder('Ví dụ: Xây phần thô')
                    ->required()
            )

            ->add(
                'price_per_m2',
                TextField::class,
                TextFieldOption::make()
                    ->label('Đơn giá / m²')
                    ->placeholder('Ví dụ: 3500000')
                    ->required()
            )

            ->add(
                'description',
                TextareaField::class,
                TextareaFieldOption::make()
                    ->label('Mô tả')
                    ->rows(3)
            )

            ->add(
                'status',
                SelectField::class,
                SelectFieldOption::make()
                    ->label(trans('core/base::tables.status'))
                    ->choices(BaseStatusEnum::labels())
            )

            ->setBreakFieldPoint('status');
    }
}