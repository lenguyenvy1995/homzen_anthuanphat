<?php

namespace Botble\Construction\Providers;

use Botble\Base\Supports\ServiceProvider;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Base\Facades\DashboardMenu;
use Botble\Construction\Models\Construction;
use Botble\Construction\Models\ConstructionCategory;
use Botble\Slug\Facades\SlugHelper;
use Botble\LanguageAdvanced\Supports\LanguageAdvancedManager;
use Botble\Base\Facades\MetaBox;
use Botble\SeoHelper\Facades\SeoHelper;

class ConstructionServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/construction')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadAndPublishTranslations()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->loadMigrations();

        if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
            LanguageAdvancedManager::registerModule(Construction::class, [
                'name',
            ]);
        }
        SeoHelper::registerModule([
            Construction::class,
            ConstructionCategory::class,
        ]);
        DashboardMenu::default()->beforeRetrieving(function () {
            DashboardMenu::registerItem([
                'id' => 'cms-plugins-construction',
                'priority' => 5,
                'parent_id' => null,
                'name' => 'Thi công xây dựng',
                'icon' => 'fa fa-building',
                'permissions' => ['construction.categories.index'],
            ])
                ->registerItem([
                    'id' => 'cms-plugins-construction-categories',
                    'priority' => 1,
                    'parent_id' => 'cms-plugins-construction',
                    'name' => 'Danh mục thi công',
                    'icon' => 'fa fa-folder',
                    'url' => route('construction.categories.index'),
                    'permissions' => ['construction.categories.index'],
                ])
                ->registerItem([
                    'id' => 'cms-plugins-construction-posts',
                    'parent_id' => 'cms-plugins-construction',
                    'name' => 'Bài viết thi công',
                    'icon' => 'fa fa-file-text',
                    'url' => route('construction.index'),
                ]);
        });
        SlugHelper::registering(function () {
            // Category
            SlugHelper::registerModule(ConstructionCategory::class);
            SlugHelper::setPrefix(ConstructionCategory::class, 'thi-cong-xay-dung');

            // Construction (bài viết)
            SlugHelper::registerModule(Construction::class);
            SlugHelper::setPrefix(Construction::class, 'thi-cong-xay-dung');
        });
    }
}
