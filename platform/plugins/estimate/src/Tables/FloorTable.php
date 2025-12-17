<?php
namespace Botble\Estimate\Tables;

use Botble\Estimate\Models\Floor;
use Botble\Table\Abstracts\TableAbstract;
use Botble\Table\Actions\EditAction;
use Botble\Table\Actions\DeleteAction;
use Botble\Table\Columns\IdColumn;
use Botble\Table\Columns\NameColumn;
use Botble\Table\Columns\StatusColumn;
use Botble\Table\Columns\CreatedAtColumn;

class FloorTable extends TableAbstract
{
    public function setup(): void
    {
        $this->model(Floor::class)->addActions([
            EditAction::make()->route('estimate.floors.edit'),
            DeleteAction::make()->route('estimate.floors.destroy'),
        ]);
    }

    public function columns(): array
    {
        return [
            IdColumn::make(),
            NameColumn::make()->title('Số tầng')->route('estimate.floors.edit'),
            NameColumn::make('coefficient')->title('Hệ số'),
            StatusColumn::make(),
            CreatedAtColumn::make(),
        ];
    }

    public function buttons(): array
    {
        return $this->addCreateButton(route('estimate.floors.create'));
    }
}