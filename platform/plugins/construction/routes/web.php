<?php

use Botble\Base\Facades\AdminHelper;
use Botble\Construction\Http\Controllers\ConstructionController;
use Botble\Construction\Http\Controllers\ConstructionCategoryController;
use Illuminate\Support\Facades\Route;
use Botble\Construction\Http\Controllers\PublicController;
use Botble\Slug\Facades\SlugHelper;
use Botble\Construction\Models\Construction;

AdminHelper::registerRoutes(function () {
    Route::group(['prefix' => 'constructions', 'as' => 'construction.'], function () {

        Route::resource(
            'categories',
            ConstructionCategoryController::class
        );
        Route::group(['prefix' => 'categories', 'as' => 'categories.'], function (): void {

            Route::put('update-tree', [ConstructionCategoryController::class, 'updateTree'])
                ->name('update-tree')
                ->permission('construction.categories.index');
        });

        Route::resource('', ConstructionController::class)->parameters(['' => 'construction']);
    });
});

if (defined('THEME_MODULE_SCREEN_NAME')) {

    Route::group(['middleware' => ['web']], function () {

        /**
         * Trang listing (optional)
         * URL thực tế phụ thuộc permalink trong admin
         */
        Route::get(SlugHelper::getPrefix(Construction::class), [
            'as' => 'public.construction.index',
            'uses' => PublicController::class . '@index',
        ])->name('public.construction.index');

        /**
         * ROUTE DUY NHẤT – GIỐNG BLOG
         * BẮT MỌI SLUG TỪ BẢNG slugs
         */
        Route::get('{slug}', [
            'as' => 'public.construction.handle',
            'uses' => PublicController::class . '@handle',
        ]);
    });
}
