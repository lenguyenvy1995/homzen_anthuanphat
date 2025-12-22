<?php

namespace Botble\Construction\Models;

use Botble\Base\Models\BaseModel;
use Illuminate\Database\Eloquent\Relations\HasMany;
use Botble\Base\Contracts\HasTreeCategory as HasTreeCategoryContract;
use Botble\Base\Traits\HasTreeCategory;
use Illuminate\Support\Collection;
use Illuminate\Database\Eloquent\Casts\Attribute;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;
use Botble\Base\Enums\BaseStatusEnum;
use Botble\Slug\Models\Slug;

class ConstructionCategory extends BaseModel implements HasTreeCategoryContract
{
    use HasTreeCategory;

    protected $table = 'construction_categories';

    protected $fillable = [
        'name',
        'is_default',
        'is_featured',
        'order',
        'parent_id',
        'description',
        'status',
    ];

    protected $casts = [
        'status' => BaseStatusEnum::class,
        'is_default' => 'bool',
        'order' => 'int',
    ];
    protected static function booted(): void
    {
        static::deleted(function (ConstructionCategory $category): void {
            $category->children()->each(fn(Model $child) => $child->delete());
        });
    }
    public function constructions(): BelongsToMany
    {
        return $this->belongsToMany(
            Construction::class,
            'construction_category_relations'
        );
    }

    // 🔹 Parent
    public function parent()
    {
        return $this->belongsTo(self::class, 'parent_id')->withDefault();
    }
    public function activeChildren(): HasMany
    {
        return $this
            ->children()
            ->wherePublished()
            ->with(['slugable', 'activeChildren']);
    }

    // 🔹 Children
    public function children()
    {
        return $this->hasMany(self::class, 'parent_id');
    }
    protected function parents(): Attribute
    {
        return Attribute::get(function (): Collection {
            $parents = collect();

            $parent = $this->parent;

            while ($parent->id) {
                $parents->push($parent);
                $parent = $parent->parent;
            }

            return $parents;
        });
    }
}
