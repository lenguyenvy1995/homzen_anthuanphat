<?php

namespace Botble\Construction;

use Illuminate\Support\Facades\Schema;
use Botble\PluginManagement\Abstracts\PluginOperationAbstract;

class Plugin extends PluginOperationAbstract
{
    public static function remove(): void
    {
        Schema::dropIfExists('Constructions');
        Schema::dropIfExists('Constructions_translations');
    }
}
