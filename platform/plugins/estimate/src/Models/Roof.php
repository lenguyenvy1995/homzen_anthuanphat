<?php

namespace Botble\Estimate\Models;

use Botble\Base\Models\BaseModel;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Database\Eloquent\Builder;
class Roof extends BaseModel
{
    protected $table = 'estimate_roofs';

    protected $fillable = [
        'name',
        'coefficient',
        'status',
    ];
    public function scopePublished(Builder $query): Builder
    {
        return $query->where('status', BaseStatusEnum::PUBLISHED);
    }
}