<?php

namespace Botble\Estimate\Http\Controllers\Frontend;

use Botble\Base\Http\Controllers\BaseController;
use Botble\Estimate\Models\ConstructionType;
use Botble\Estimate\Models\Floor;
use Botble\Estimate\Models\Foundation;
use Botble\Estimate\Models\Roof;

class EstimateController extends BaseController
{
    public function index()
    {
        return view('estimate::frontend.form', [
            'constructionTypes' => ConstructionType::published()->get(),
            'floors' => Floor::published()->get(),
            'foundations' => Foundation::published()->get(),
            'roofs' => Roof::published()->get(),
        ]);
    }
}