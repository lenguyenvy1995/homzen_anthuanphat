<?php

use Botble\Base\Facades\AdminHelper;
use Botble\Construction\Http\Controllers\ConstructionController;
use Botble\Construction\Http\Controllers\ConstructionCategoryController;
use Illuminate\Support\Facades\Route;

AdminHelper::registerRoutes(function () {
    Route::group(['prefix' => 'constructions', 'as' => 'construction.'], function () {
        Route::resource(
            'categories',
            ConstructionCategoryController::class
        );
        Route::group(['prefix' => 'categories', 'as' => 'categories.'], function (): void {

            Route::put('update-tree', [
                'as' => 'update-tree',
                'uses' => [ConstructionCategoryController::class, 'updateTree'],
                'permission' => 'construction.categories.index',
            ]);
        });
        Route::resource('', ConstructionController::class)->parameters(['' => 'construction']);
    });
});
