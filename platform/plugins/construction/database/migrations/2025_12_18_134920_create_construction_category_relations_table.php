<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class() extends Migration {
    public function up(): void
    {
        Schema::create('construction_category_relations', function (Blueprint $table) {
            $table->unsignedBigInteger('construction_id');
            $table->unsignedBigInteger('construction_category_id');

            $table->primary(['construction_id', 'construction_category_id']);

            $table->foreign('construction_id')
                ->references('id')
                ->on('constructions')
                ->onDelete('cascade');

            $table->foreign('construction_category_id')
                ->references('id')
                ->on('construction_categories')
                ->onDelete('cascade');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('construction_category_relations');
    }
};
