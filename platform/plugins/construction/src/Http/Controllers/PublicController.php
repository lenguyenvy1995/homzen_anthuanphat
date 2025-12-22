<?php

namespace Botble\Construction\Http\Controllers;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Construction\Models\Construction;
use Botble\Construction\Models\ConstructionCategory;
use Botble\Slug\Facades\SlugHelper;
use Botble\SeoHelper\Facades\SeoHelper;
use Botble\Theme\Facades\Theme;
use Botble\Slug\Models\Slug;
use Symfony\Component\HttpKernel\Exception\NotFoundHttpException;
use Illuminate\Http\Request;

class PublicController extends BaseController
{
    public function __construct()
    {
        Theme::asset()
            ->add('construction-css', 'vendor/core/plugins/construction/css/construction.css')
            ->add('construction-js', 'vendor/core/plugins/construction/js/construction.js', [], ['defer' => true]);
    }
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
            compact('constructions', 'categories')
        )->render();
    }
  public function handle(string $slug, Request $request)
    {
        // 1. Tìm slug trong bảng slugs
        $slugItem = Slug::query()
            ->where('key', $slug)
            ->whereIn('reference_type', [
                Construction::class,
                ConstructionCategory::class,
            ])
            ->first();

        if (! $slugItem) {
            throw new NotFoundHttpException();
        }

        /**
         * ==============================
         * CASE 1: SLUG LÀ BÀI VIẾT
         * ==============================
         */
        if ($slugItem->reference_type === Construction::class) {
            $construction = Construction::query()
                ->where('id', $slugItem->reference_id)
                ->wherePublished()
                ->with(['categories'])
                ->firstOrFail();

            Theme::set('title', $construction->name);
            Theme::set('description', $construction->description);

            return Theme::scope(
                'construction.show',
                compact('construction')
            )->render();
        }

        /**
         * ==============================
         * CASE 2: SLUG LÀ DANH MỤC
         * ==============================
         */
        if ($slugItem->reference_type === ConstructionCategory::class) {
            $category = ConstructionCategory::query()
                ->where('id', $slugItem->reference_id)
                ->wherePublished()
                ->firstOrFail();

            $constructions = Construction::query()
                ->wherePublished()
                ->whereHas('categories', function ($query) use ($category) {
                    $query->where('construction_categories.id', $category->id);
                })
                ->latest()
                ->paginate(9);

            $categories = ConstructionCategory::query()
                ->wherePublished()
                ->where('parent_id', 0)
                ->get();

            Theme::set('title', $category->name);
            Theme::set('description', $category->description);

            return Theme::scope(
                'construction.category',
                compact('category', 'constructions', 'categories')
            )->render();
        }

        throw new NotFoundHttpException();
    }

    /**
     * Chi tiết bài thi công
     */
    protected function handleConstruction(int $id)
    {
        $construction = Construction::query()
            ->where('id', $id)
            ->where('status', 'published')
            ->firstOrFail();

        /**
         * Tăng view nếu cần
         */
        $construction->increment('views');

        return Theme::scope(
            'construction.show',
            compact('construction')
        )->render();
    }

    /**
     * Danh sách bài theo category
     */
    protected function handleCategory(int $id)
    {
        $category = ConstructionCategory::query()
            ->where('id', $id)
            ->where('status', 'published')
            ->firstOrFail();

        $categories = ConstructionCategory::query()
            ->where('status', 'published')
            ->orderBy('order')
            ->get();

        $constructions = Construction::query()
            ->where('status', 'published')
            ->whereHas('categories', function ($q) use ($category) {
                $q->where('construction_category_id', $category->id);
            })
            ->latest()
            ->paginate(9);

        return Theme::scope(
            'construction.category',
            compact('category', 'categories', 'constructions')
        )->render();
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
