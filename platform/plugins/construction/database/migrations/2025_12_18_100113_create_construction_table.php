<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Botble\Base\Enums\BaseStatusEnum;

return new class() extends Migration {
    public function up(): void
    {
        Schema::create('constructions', function (Blueprint $table) {
            $table->id();

            $table->string('name', 250);
            $table->text('description')->nullable();
            $table->longText('content')->nullable();

            // Thumbnail / image
            $table->string('image')->nullable();

            // View count
            $table->unsignedBigInteger('views')->default(0);

            // Feature
            $table->boolean('is_featured')->default(false);

            // Status
            $table->string('status', 60)->default(BaseStatusEnum::PUBLISHED);

            // Author
            $table->unsignedBigInteger('author_id')->nullable();
            $table->string('author_type')->nullable();

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('construction');
    }
};
