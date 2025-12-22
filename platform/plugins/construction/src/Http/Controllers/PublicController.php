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

        $constructions = Construction::query()
            ->wherePublished()
            ->with(['categories', 'slugable'])
            ->orderByDesc('created_at')
            ->paginate(10);

        return Theme::scope(
            'construction.index',
            compact('constructions')
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


    protected function category(int $categoryId)
    {
        $category = ConstructionCategory::findOrFail($categoryId);

        SeoHelper::setTitle($category->name);

        $constructions = Construction::query()
            ->wherePublished()
            ->whereHas('categories', function ($q) use ($categoryId) {
                $q->where('construction_categories.id', $categoryId);
            })
            ->paginate(9);

        return Theme::scope(
            'construction.category',
            compact('category', 'constructions')
        )->render();
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
