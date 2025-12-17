<?php

namespace Botble\Estimate\Http\Controllers\Api;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Estimate\Services\EstimateCalculatorService;
use Illuminate\Http\Request;

class EstimateApiController extends BaseController
{
    public function calculate(Request $request, EstimateCalculatorService $service)
    {
        $data = $request->validate([
            'width' => 'required|numeric|min:1',
            'length' => 'required|numeric|min:1',
            'house_type_id' => 'required|exists:estimate_house_types,id',
            'construction_type_id' => 'required|exists:estimate_construction_types,id',
            'floor_id' => 'required|exists:estimate_floors,id',
            'foundation_id' => 'required|exists:estimate_foundations,id',
            'roof_id' => 'required|exists:estimate_roofs,id',
        ]);

        $result = $service->calculate($data);

        return response()->json([
            'success' => true,
            'data' => $result,
        ]);
    }
}