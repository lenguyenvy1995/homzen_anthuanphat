<?php

namespace Botble\Estimate\Models;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Database\Eloquent\Builder;
use Botble\Base\Models\BaseModel;

class HouseType extends BaseModel
{
    protected $table = 'estimate_house_types';

    protected $fillable = [
        'name',
        'coefficient',
        'description',
        'is_active',
    ];
    
    public function scopePublished(Builder $query): Builder
    {
        return $query->where('is_active', BaseStatusEnum::PUBLISHED);
    }
}