<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Botble\Base\Enums\BaseStatusEnum;

return new class() extends Migration {
    public function up(): void
    {
   Schema::create('construction_categories', function (Blueprint $table) {
            $table->id();

            $table->string('name', 250);
            $table->text('description')->nullable();

            // Tree category
            $table->unsignedBigInteger('parent_id')->default(0)->index();

            // Order + feature
            $table->unsignedInteger('order')->default(0);
            $table->boolean('is_featured')->default(false);
            $table->boolean('is_default')->default(false);

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
        Schema::dropIfExists('construction_categories');
    }
};
