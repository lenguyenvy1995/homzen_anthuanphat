<?php

namespace Botble\Estimate\Tables;

use Botble\Estimate\Models\ConstructionType;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\EditAction;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\Columns\CreatedAtColumn;
use Botble\Table\Columns\TextColumn;

class ConstructionTypeTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(ConstructionType::class)
            ->addActions([
                EditAction::make()->route('estimate.construction-types.edit'),
                DeleteAction::make()->route('estimate.construction-types.destroy'),
            ]);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            NameColumn::make()->title('Hình thức xây dựng')
                ->route('estimate.construction-types.edit'),
            NameColumn::make('price_per_m2')->title('Đơn giá / m²'),
            StatusColumn::make(),
            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('estimate.construction-types.create'));
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()
                ->permission('estimate.construction-types.destroy'),
        ];
    }
}