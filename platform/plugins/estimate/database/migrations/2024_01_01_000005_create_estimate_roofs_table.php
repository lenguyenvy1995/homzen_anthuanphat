<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::create('estimate_roofs', function (Blueprint $table) {
            $table->id();
            $table->string('name');                // Mái BTCT, mái tôn, mái ngói
            $table->decimal('coefficient', 8, 2);  // Hệ số
            $table->string('status')->default('published');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('estimate_roofs');
    }
};