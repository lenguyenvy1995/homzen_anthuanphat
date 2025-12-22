<?php

namespace Botble\Construction\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Construction\Models\Construction;
use Botble\Construction\Models\ConstructionCategory;
use Botble\Slug\Facades\SlugHelper;
use Botble\SeoHelper\Facades\SeoHelper;
use Botble\Theme\Facades\Theme;
use Botble\Slug\Models\Slug;

class PublicController extends BaseController
{
    public function index()
    {
        SeoHelper::setTitle('Thi Công Xây Dựng');
        SeoHelper::setDescription('Danh sách các công trình thi công xây dựng');
        // 2. LẤY DANH SÁCH CATEGORY (để render tabs) ← THIẾU CÁI NÀY
        $categories = ConstructionCategory::query()
            ->wherePublished()
            ->where('parent_id', 0)
            ->orderBy('order')
            ->get();

        $constructions = Construction::query()
            ->wherePublished()
            ->with(['categories', 'slugable'])
            ->orderByDesc('created_at')
            ->paginate(10);

        return Theme::scope(
            'construction.index',
            compact('constructions','categories')
        )->render();
    }
    public function handle(string $slug)
    {
        $slug = Slug::query()
            ->where('key', $slug)
            ->where('reference_type', 'LIKE', '%Construction%')
            ->firstOrFail();

        return match ($slug->reference_type) {
            Construction::class =>
            $this->detail(Construction::findOrFail($slug->reference_id)),

            ConstructionCategory::class =>
            $this->category(ConstructionCategory::findOrFail($slug->reference_id)),

            default => abort(404),
        };
    }


    public function category(string $slug)
    {
        // 1. Lấy category hiện tại theo slug
        $slugItem = SlugHelper::getSlug($slug, SlugHelper::getPrefix(ConstructionCategory::class));

        abort_if(! $slugItem, 404);

        $category = ConstructionCategory::query()
            ->where('id', $slugItem->reference_id)
            ->wherePublished()
            ->firstOrFail();

        // 2. LẤY DANH SÁCH CATEGORY (để render tabs) ← THIẾU CÁI NÀY
        $categories = ConstructionCategory::query()
            ->wherePublished()
            ->where('parent_id', 0)
            ->orderBy('order')
            ->get();
        // 3. LẤY BÀI VIẾT THEO CATEGORY
        $constructions = Construction::query()
            ->wherePublished()
            ->whereHas('categories', function ($q) use ($category) {
                $q->where('construction_categories.id', $category->id);
            })
            ->latest()
            ->paginate(9);

        // 4. SEO
        SeoHelper::setTitle($category->name)
            ->setDescription($category->description);

        // 5. Trả view
        return Theme::scope('construction.category', [
            'category'      => $category,
            'categories'    => $categories, // ← QUAN TRỌNG
            'constructions' => $constructions,
        ])->render();
    }
    protected function detail(int $constructionId)
    {
        $construction = Construction::findOrFail($constructionId);

        SeoHelper::setTitle($construction->name)
            ->setDescription($construction->description);

        return Theme::scope(
            'construction.detail',
            compact('construction')
        )->render();
    }
}
