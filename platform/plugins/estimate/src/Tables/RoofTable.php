<?php

namespace Botble\Estimate\Tables;

use Botble\Estimate\Models\Roof;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\EditAction;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\Columns\CreatedAtColumn;

class RoofTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(Roof::class)
            ->addActions([
                EditAction::make()->route('estimate.roofs.edit'),
                DeleteAction::make()->route('estimate.roofs.destroy'),
            ]);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            NameColumn::make()->title('Mái nhà')->route('estimate.roofs.edit'),
            NameColumn::make('coefficient')->title('Hệ số'),
            StatusColumn::make(),
            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('estimate.roofs.create'));
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()->permission('estimate.roofs.destroy'),
        ];
    }
}