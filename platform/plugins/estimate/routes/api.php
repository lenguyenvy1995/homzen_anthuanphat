<?php

use Illuminate\Support\Facades\Route;
use Botble\Estimate\Http\Controllers\Api\EstimateApiController;

Route::post('estimate/calculate', [EstimateApiController::class, 'calculate']);