<?php

namespace Botble\Estimate\Models;

use Botble\Base\Models\BaseModel;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Database\Eloquent\Builder;

class ConstructionType extends BaseModel
{
    protected $table = 'estimate_construction_types';

    protected $fillable = [
        'name',
        'price_per_m2',
        'description',
        'status',
    ];
    public function scopePublished(Builder $query): Builder
    {
        return $query->where('status', BaseStatusEnum::PUBLISHED);
    }
}
