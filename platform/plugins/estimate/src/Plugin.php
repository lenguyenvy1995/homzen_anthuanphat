<?php

namespace Botble\Estimate;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Schema::dropIfExists('Estimates');
        Schema::dropIfExists('Estimates_translations');
    }
}
