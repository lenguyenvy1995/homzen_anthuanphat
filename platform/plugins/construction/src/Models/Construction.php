<?php

namespace Botble\Construction\Models;

use Botble\Base\Models\BaseModel;
use Botble\Base\Models\Concerns\HasSlug;
use Botble\Base\Enums\BaseStatusEnum;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Construction extends BaseModel
{
    use HasSlug;

    protected $table = 'constructions';

    protected $fillable = [
        'name',
        'order',
        'is_default',
        'is_featured',
        'description',
        'content',
        'image',
        'status',
    ];

    protected $casts = [
        'status' => BaseStatusEnum::class,
        'is_default' => 'bool',
        'order' => 'int',
    ];
    public function categories(): BelongsToMany
    {
        return $this->belongsToMany(
            ConstructionCategory::class,
            'construction_category_relations'
        );
    }
}
