<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class () extends Migration {
    public function up(): void
    {
        if (! Schema::hasTable('estimates')) {
            Schema::create('estimates', function (Blueprint $table) {
                $table->id();
                $table->string('name', 255);
                $table->string('status', 60)->default('published');
                $table->timestamps();
            });
        }

        if (! Schema::hasTable('estimates_translations')) {
            Schema::create('estimates_translations', function (Blueprint $table) {
                $table->string('lang_code');
                $table->foreignId('estimates_id');
                $table->string('name', 255)->nullable();

                $table->primary(['lang_code', 'estimates_id'], 'estimates_translations_primary');
            });
        }
    }

    public function down(): void
    {
        Schema::dropIfExists('estimates');
        Schema::dropIfExists('estimates_translations');
    }
};
