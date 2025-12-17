<?php

namespace Botble\Estimate\Services;

use Botble\Estimate\Models\HouseType;
use Botble\Estimate\Models\ConstructionType;
use Botble\Estimate\Models\Floor;
use Botble\Estimate\Models\Foundation;
use Botble\Estimate\Models\Roof;

class EstimateCalculatorService
{
    public function calculate(array $data): array
    {
        $width  = (float) $data['width'];
        $length = (float) $data['length'];

        $area = $width * $length;

        $houseType = HouseType::findOrFail($data['house_type_id']);
        $constructionType = ConstructionType::findOrFail($data['construction_type_id']);
        $floor = Floor::findOrFail($data['floor_id']);
        $foundation = Foundation::findOrFail($data['foundation_id']);
        $roof = Roof::findOrFail($data['roof_id']);

        // Giá cơ bản / m2
        $basePrice = (float) $constructionType->price_per_m2;

        // Tổng hệ số
        $totalCoefficient =
            (float) $floor->coefficient *
            (float) $foundation->coefficient *
            (float) $roof->coefficient;

        $totalPrice = $area * $basePrice * $totalCoefficient;

        return [
            'area' => $area,
            'base_price_per_m2' => $basePrice,
            'items' => [
                [
                    'label' => 'Diện tích xây dựng',
                    'value' => $area . ' m²',
                ],
                [
                    'label' => 'Đơn giá / m²',
                    'value' => number_format($basePrice) . ' đ',
                ],
                [
                    'label' => 'Hệ số tầng',
                    'value' => $floor->coefficient,
                ],
                [
                    'label' => 'Hệ số móng',
                    'value' => $foundation->coefficient,
                ],
                [
                    'label' => 'Hệ số mái',
                    'value' => $roof->coefficient,
                ],
            ],
            'total_price' => round($totalPrice),
            'formatted_total_price' => number_format($totalPrice) . ' đ',
        ];
    }
}
