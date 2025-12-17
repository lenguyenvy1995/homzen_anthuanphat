<?php

namespace Botble\Estimate\Forms;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Base\Forms\FormAbstract;
use Botble\Base\Forms\Fields\TextField;
use Botble\Base\Forms\Fields\SelectField;
use Botble\Base\Forms\FieldOptions\TextFieldOption;
use Botble\Base\Forms\FieldOptions\SelectFieldOption;
use Botble\Estimate\Http\Requests\FoundationRequest;
use Botble\Estimate\Models\Foundation;

class FoundationForm extends FormAbstract
{
    public function buildForm(): void
    {
        $this
            ->setupModel(new Foundation())
            ->setValidatorClass(FoundationRequest::class)
            ->withCustomFields()

            ->add('name', TextField::class, TextFieldOption::make()
                ->label('Móng nhà')
                ->placeholder('Ví dụ: Móng băng')
                ->required()
            )
            ->add('coefficient', TextField::class, TextFieldOption::make()
                ->label('Hệ số')
                ->placeholder('Ví dụ: 1.10')
                ->required()
            )
            ->add('status', SelectField::class, SelectFieldOption::make()
                ->label(trans('core/base::tables.status'))
                ->choices(BaseStatusEnum::labels())
            )
            ->setBreakFieldPoint('status');
    }
}