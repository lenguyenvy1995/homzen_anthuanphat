<?php

namespace Botble\Estimate\Providers;

use Botble\Base\Supports\ServiceProvider;
use Botble\Base\Traits\LoadAndPublishDataTrait;
use Botble\Base\Facades\DashboardMenu;
use Botble\Estimate\Models\Estimate;
use Botble\LanguageAdvanced\Supports\LanguageAdvancedManager;
use Botble\Shortcode\Facades\Shortcode;
use Botble\Estimate\Shortcodes\EstimateCalculatorShortcode;

class EstimateServiceProvider extends ServiceProvider
{
    use LoadAndPublishDataTrait;

    public function boot(): void
    {
        $this
            ->setNamespace('plugins/estimate')
            ->loadHelpers()
            ->loadAndPublishConfigurations(['permissions'])
            ->loadAndPublishTranslations()
            ->loadRoutes()
            ->loadAndPublishViews()
            ->loadMigrations();

        if (defined('LANGUAGE_ADVANCED_MODULE_SCREEN_NAME')) {
            LanguageAdvancedManager::registerModule(Estimate::class, [
                'name',
            ]);
        }
        $this->loadRoutesFrom(__DIR__ . '/../../routes/api.php');
        $this->loadViewsFrom(
            __DIR__ . '/../../resources/views',
            'estimate'
        );
        Shortcode::register(
            'estimate_calculator',
            'Dự toán chi phí xây dựng',
            'Form dự toán chi phí xây dựng',
            [EstimateCalculatorShortcode::class, 'render']
        );
        // DashboardMenu::make()
        //     ->registerItem([
        //         'id'          => 'cms-plugins-estimate',
        //         'priority'    => 5,
        //         'parent_id'   => null,
        //         'name'        => 'Dự toán xây dựng',
        //         'icon'        => 'fa fa-calculator',
        //         'url'         => '',
        //         'permissions' => [],
        //     ])
        //     ->registerItem([
        //         'id'          => 'cms-plugins-estimate-house-types',
        //         'priority'    => 1,
        //         'parent_id'   => 'cms-plugins-estimate',
        //         'name'        => 'Loại nhà',
        //         'icon'        => null,
        //         'url'         => route('estimate.house-types.index'),
        //         'permissions' => [],
        //     ])
        //     ->registerItem([
        //         'id'        => 'cms-plugins-estimate-construction-types',
        //         'parent_id' => 'cms-plugins-estimate',
        //         'name'      => 'Hình thức xây dựng',
        //         'url'       => route('estimate.construction-types.index'),
        //     ])
        //     ->registerItem([
        //         'id' => 'cms-plugins-estimate-floors',
        //         'parent_id' => 'cms-plugins-estimate',
        //         'name' => 'Số tầng',
        //         'url' => route('estimate.floors.index'),
        //     ])
        //     ->registerItem([
        //         'id' => 'cms-plugins-estimate-foundations',
        //         'parent_id' => 'cms-plugins-estimate',
        //         'name' => 'Móng',
        //         'url' => route('estimate.foundations.index'),
        //     ])
        //     ->registerItem([
        //         'id' => 'cms-plugins-estimate-roofs',
        //         'parent_id' => 'cms-plugins-estimate',
        //         'name' => 'Mái',
        //         'url' => route('estimate.roofs.index'),
        //     ]);
    }
}
