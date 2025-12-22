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
    Route::group([
        'middleware' => ['web'],
        'prefix' => SlugHelper::getPrefix(Construction::class), // ví dụ: thi-cong-xay-dung
        'as' => 'public.construction.',
    ], function () {
        Route::get('', [PublicController::class, 'index'])->name('index');

        // category hoặc bài viết đều đi qua đây
        Route::get('{slug}', [PublicController::class, 'handle'])->name('handle');
    });
}