<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class() extends Migration {
    public function up(): void
    {
        Schema::create('construction', function (Blueprint $table) {
            $table->id();
            $table->string('name', 255);
            $table->text('description')->nullable();
            $table->longText('content')->nullable();

            $table->string('image', 255)->nullable();
            $table->tinyInteger('is_featured')->default(0);
            $table->tinyInteger('is_default')->unsigned()->default(0);

            $table->tinyInteger('order')->default(0);

            // Trạng thái chuẩn Botble
            $table->string('status', 60)->default('published')->index();

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('construction');
    }
};
