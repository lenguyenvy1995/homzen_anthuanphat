<?php

namespace Botble\Estimate\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Estimate\Http\Requests\FloorRequest;
use Botble\Estimate\Models\Floor;

class FloorForm extends FormAbstract
{
    public function buildForm(): void
    {
        $this->setupModel(new Floor())
            ->setValidatorClass(FloorRequest::class)
            ->withCustomFields()
            ->add('name', TextField::class, TextFieldOption::make()->label('Số tầng')->required())
            ->add('coefficient', TextField::class, TextFieldOption::make()->label('Hệ số')->required())
            ->add('status', SelectField::class, SelectFieldOption::make()
                ->label(trans('core/base::tables.status'))
                ->choices(BaseStatusEnum::labels()))
            ->setBreakFieldPoint('status');
    }
}