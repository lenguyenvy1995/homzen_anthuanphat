<?php
namespace Botble\Estimate\Shortcodes;

use Botble\Shortcode\Compilers\Shortcode;
use Botble\Estimate\Models\ConstructionType;
use Botble\Estimate\Models\Floor;
use Botble\Estimate\Models\Foundation;
use Botble\Estimate\Models\HouseType;
use Botble\Estimate\Models\Roof;
use Botble\Base\Enums\BaseStatusEnum;

class EstimateHomePageShortcode
{
    public static function render(Shortcode $shortcode)
    {
        theme()->asset()->add(
            'estimate-core-css',
            asset('vendor/core/plugins/estimate/css/estimate.css')
        );
        
        theme()->asset()->add(
            'estimate-custom-css',
            asset('vendor/core/plugins/estimate/css/tiva-estimate-style.css')
        );

        theme()->asset()->container('footer')->add(
            'estimate-js',
            asset('vendor/core/plugins/estimate/js/estimate.js')
        );
    
        // Trả về view riêng cho shortcode này
        return view("estimate::frontend.form-home-page", [
            'houseTypes' => HouseType::where('status', BaseStatusEnum::PUBLISHED)->get(),
            'constructionTypes' => ConstructionType::where('status', BaseStatusEnum::PUBLISHED)->get(),
            'floors' => Floor::where('status', BaseStatusEnum::PUBLISHED)->get(),
            'foundations' => Foundation::where('status', BaseStatusEnum::PUBLISHED)->get(),
            'roofs' => Roof::where('status', BaseStatusEnum::PUBLISHED)->get(),
        ]);
    }
}