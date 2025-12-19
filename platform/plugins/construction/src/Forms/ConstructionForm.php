<?php

namespace Botble\Construction\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\Base\Forms\Fields\EditorField;
use Botble\Base\Forms\Fields\MediaImageField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\Fields\TextareaField;
use Botble\Base\Forms\Fields\TextField;
use Botble\Construction\Http\Requests\ConstructionRequest;
use Botble\Construction\Models\Construction;
use Botble\Construction\Models\ConstructionCategory;
use Botble\Base\Forms\Fields\TreeCategoryField;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Base\Forms\FieldOptions\ContentFieldOption;
use Botble\Base\Forms\FieldOptions\DescriptionFieldOption;


class ConstructionForm extends FormAbstract
{
    public function setup(): void
    {
        $this
            ->model(new Construction())
            ->setValidatorClass(ConstructionRequest::class)

            ->add('name', TextField::class, [
                'label' => trans('core/base::forms.name'),
                'required' => true,
            ])
            ->add('description', TextareaField::class, DescriptionFieldOption::make())
            ->add('content', EditorField::class, ContentFieldOption::make()->allowedShortcodes())
            ->add('status', SelectField::class, [
                'label' => trans('core/base::tables.status'),
                'choices' => BaseStatusEnum::labels(),
            ])
            ->add(
                'categories[]',
                TreeCategoryField::class,
                SelectFieldOption::make()
                    ->label('Danh mục thi công')
                    ->choices(function () {
                        return ConstructionCategory::query()
                            ->wherePublished()
                            ->select(['id', 'name', 'parent_id'])
                            ->with('activeChildren')
                            ->where('parent_id', 0)
                            ->get();
                    })
                    ->when(
                        $this->getModel()->getKey(),
                        function (SelectFieldOption $fieldOption) {
                            /** @var \Botble\Construction\Models\Construction $construction */
                            $construction = $this->getModel();

                            return $fieldOption->selected(
                                $construction->categories()
                                    ->pluck('construction_category_id')
                                    ->all()
                            );
                        },
                        function (SelectFieldOption $fieldOption) {
                            return $fieldOption->selected(
                                ConstructionCategory::query()
                                    ->wherePublished()
                                    ->where('is_default', 1)
                                    ->pluck('id')
                                    ->all()
                            );
                        }
                    )
            )
            ->add('image', MediaImageField::class, [
                'label' => trans('core/base::forms.image'),
            ])
            ->setBreakFieldPoint('status');
    }
}
