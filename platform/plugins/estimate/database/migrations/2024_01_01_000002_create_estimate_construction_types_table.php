<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::create('estimate_construction_types', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->decimal('price_per_m2', 15, 0);
            $table->string('description')->nullable();
            $table->string('status')->default('published');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('estimate_construction_types');
    }
};
