<?php

use Illuminate\Support\Facades\Route;
use Botble\Base\Facades\BaseHelper;
use Botble\Base\Facades\AdminHelper;
use Botble\Estimate\Http\Controllers\HouseTypeController;
use Botble\Estimate\Http\Controllers\ConstructionTypeController;
use Botble\Estimate\Http\Controllers\FloorController;
use Botble\Estimate\Http\Controllers\FoundationController;
use Botble\Estimate\Http\Controllers\RoofController;
use Botble\Estimate\Http\Controllers\Frontend\EstimateController;

Route::group([
    'middleware' => ['web', 'core'],
    'prefix'     => BaseHelper::getAdminPrefix(),
], function () {

    Route::group(['prefix' => 'estimate'], function () {

        Route::resource(
            'house-types',
            HouseTypeController::class
        )->except(['show'])->names('estimate.house-types');
        Route::resource(
            'construction-types',
            ConstructionTypeController::class
        )->except(['show'])->names('estimate.construction-types');
        Route::resource('floors', FloorController::class)
            ->except(['show'])->names('estimate.floors');
        Route::resource(
            'foundations',
            FoundationController::class
        )->except(['show'])->names('estimate.foundations');

        Route::resource(
            'roofs',
            RoofController::class
        )->except(['show'])->names('estimate.roofs');
    });
});

// route test frontend (giữ để test)
Route::get('estimate-test', function () {
    return 'Estimate plugin is working!';
});
Route::get('estimate', [EstimateController::class, 'index']);