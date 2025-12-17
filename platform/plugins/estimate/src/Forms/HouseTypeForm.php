<?php

namespace Botble\Estimate\Forms;

use Botble\Base\Forms\FormAbstract;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Estimate\Models\HouseType;
use Botble\Estimate\Http\Requests\HouseTypeRequest;

class HouseTypeForm extends FormAbstract
{
    public function buildForm(): void
    {
        $this
            ->setupModel(new HouseType())
            ->setValidatorClass(HouseTypeRequest::class)
            ->withCustomFields()

            ->add(
                'name',
                TextField::class,
                TextFieldOption::make()
                    ->label('Tên loại nhà')
                    ->placeholder('Ví dụ: Nhà phố')
                    ->required()
            )

            ->add(
                'coefficient',
                TextField::class,
                TextFieldOption::make()
                    ->label('Hệ số')
                    ->placeholder('Ví dụ: 1.0')
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