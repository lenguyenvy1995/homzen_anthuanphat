<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        Schema::create('estimate_house_types', function (Blueprint $table) {
            $table->id();
            $table->string('name');
            $table->decimal('coefficient', 5, 2)->default(1.00);
            $table->string('description')->nullable();
            $table->boolean('is_active')->default(true);
             $table->string('status', 60)->default('published');
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('estimate_house_types');
    }
};