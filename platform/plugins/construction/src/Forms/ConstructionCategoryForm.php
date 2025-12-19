<?php

namespace Botble\Construction\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\FieldOptions\TextareaFieldOption;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\FieldOptions\NameFieldOption;
use Botble\Base\Forms\FormAbstract;
use Botble\Construction\Http\Requests\ConstructionCategoryRequest;
use Botble\Construction\Models\ConstructionCategory;

class ConstructionCategoryForm extends FormAbstract
{


    public function setup(): void
    {
        $this
            ->model(ConstructionCategory::class)
            ->setValidatorClass(ConstructionCategoryRequest::class)
            ->add('name', TextField::class, NameFieldOption::make()->required())
            ->add(
                'parent_id',
                SelectField::class,
                SelectFieldOption::make()
                    ->label('Danh mục cha')
                    ->choices(
                        ConstructionCategory::query()
                            ->where('id', '!=', $this->getModel()->id)
                            ->pluck('name', 'id')
                            ->all()
                    )
                    ->choices(
                        [0 => '— Danh mục gốc —'] +
                            ConstructionCategory::query()
                            ->where('id', '!=', $this->getModel()->id)
                            ->pluck('name', 'id')
                            ->all()
                    )
                    ->toArray()
            )
            ->add(
                'description',
                TextareaField::class,
                TextareaFieldOption::make()
                    ->label(trans('core/base::forms.description'))
                    ->rows(4)
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
