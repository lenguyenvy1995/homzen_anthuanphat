<?php

namespace Botble\Construction\Tables;

use Botble\Base\Enums\BaseStatusEnum;
use Botble\Construction\Models\ConstructionCategory;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Illuminate\Database\Eloquent\Builder;

class ConstructionCategoryTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(ConstructionCategory::class)
            ->addActions([
                EditAction::make()
                    ->route('construction.categories.edit'),
                DeleteAction::make()
                    ->route('construction.categories.destroy'),
            ]);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),

            NameColumn::make()
                ->route('construction.categories.edit'),

            StatusColumn::make(),

            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('construction.categories.create'));
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()
                ->permission('construction.categories.destroy'),
        ];
    }

    public function getFilters(): array
    {
        return [
            'name' => [
                'title' => trans('core/base::tables.name'),
                'type' => 'text',
            ],
            'status' => [
                'title' => trans('core/base::tables.status'),
                'type' => 'select',
                'choices' => BaseStatusEnum::labels(),
            ],
        ];
    }

    public function query(): Builder
    {
        return ConstructionCategory::query()
        ->with('children')
        ->orderBy('parent_id')
        ->orderBy('id');
    }
}