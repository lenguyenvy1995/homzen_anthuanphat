<?php

namespace Botble\Estimate\Shortcodes;

use Botble\Shortcode\Compilers\Shortcode;
use Botble\Estimate\Models\ConstructionType;
use Botble\Estimate\Models\Floor;
use Botble\Estimate\Models\Foundation;
use Botble\Estimate\Models\HouseType;
use Botble\Estimate\Models\Roof;
use Botble\Base\Enums\BaseStatusEnum;

class EstimateCalculatorShortcode
{
    public static function render(Shortcode $shortcode)
    {
        // ✅ CSS
        theme()->asset()->add(
            'estimate-css',
            asset('vendor/core/plugins/estimate/css/estimate.css')
        );

        // ✅ JS (footer)
        theme()->asset()->container('footer')->add(
            'estimate-js',
            asset('vendor/core/plugins/estimate/js/estimate.js')
        );

        return view('estimate::frontend.form', [
            'houseTypes' => HouseType::where('status', BaseStatusEnum::PUBLISHED)->get(),
            'constructionTypes' => ConstructionType::where('status', BaseStatusEnum::PUBLISHED)->get(),
            'floors' => Floor::where('status', BaseStatusEnum::PUBLISHED)->get(),
            'foundations' => Foundation::where('status', BaseStatusEnum::PUBLISHED)->get(),
            'roofs' => Roof::where('status', BaseStatusEnum::PUBLISHED)->get(),
        ]);
    }
}
