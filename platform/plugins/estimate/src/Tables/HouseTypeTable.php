<?php

namespace Botble\Estimate\Tables;

use Botble\Estimate\Models\HouseType;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\EditAction;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\Columns\CreatedAtColumn;

class HouseTypeTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(HouseType::class)
            ->addActions([
                EditAction::make()
                    ->route('estimate.house-types.edit'),
                DeleteAction::make()
                    ->route('estimate.house-types.destroy'),
            ]);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            NameColumn::make()
                ->title('Tên loại nhà')
                ->route('estimate.house-types.edit'),
            StatusColumn::make(),
            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('estimate.house-types.create'));
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()
                ->permission('estimate.house-types.destroy'),
        ];
    }
}