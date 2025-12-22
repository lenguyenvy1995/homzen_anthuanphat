<?php

namespace Botble\Construction\Tables;

use Botble\Base\Facades\Html;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Construction\Models\Construction;
use Botble\Construction\Models\ConstructionCategory;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Actions\EditAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\Columns\ImageColumn;
use Botble\Table\Columns\FormattedColumn;
use Botble\Table\Columns\Column;

class ConstructionTable extends TableAbstract
{
    public function setup(): void
    {
        $this->defaultSortColumnName = 'created_at';

        $this
            ->model(Construction::class)
            ->addActions([
                EditAction::make()->route('construction.edit'),
                DeleteAction::make()->route('construction.destroy'),
            ]);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            ImageColumn::make(),
            NameColumn::make()
                ->route('construction.edit'),
            FormattedColumn::make('categories_name')
                ->title('Danh mục')
                ->width(180)
                ->orderable(false)
                ->searchable(false)
                ->getValueUsing(function (FormattedColumn $column) {
                    $categories = $column
                        ->getItem()
                        ->categories
                        ->sortBy('name')
                        ->map(function (ConstructionCategory $category) {
                            return Html::link(
                                route('construction.categories.edit', $category->getKey()),
                                $category->name,
                                ['target' => '_blank']
                            );
                        })
                        ->all();

                    return implode(', ', $categories);
                })
                ->withEmptyState(),
            StatusColumn::make(),

            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('construction.create'));
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()->permission('construction.destroy'),
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
}
