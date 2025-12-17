<?php

namespace Botble\Estimate\Tables;

use Botble\Estimate\Models\Foundation;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\EditAction;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\BulkActions\DeleteBulkAction;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\Columns\CreatedAtColumn;

class FoundationTable extends TableAbstract
{
    public function setup(): void
    {
        $this
            ->model(Foundation::class)
            ->addActions([
                EditAction::make()->route('estimate.foundations.edit'),
                DeleteAction::make()->route('estimate.foundations.destroy'),
            ]);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            NameColumn::make()->title('Móng nhà')->route('estimate.foundations.edit'),
            NameColumn::make('coefficient')->title('Hệ số'),
            StatusColumn::make(),
            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('estimate.foundations.create'));
    }

    public function bulkActions(): array
    {
        return [
            DeleteBulkAction::make()->permission('estimate.foundations.destroy'),
        ];
    }
}