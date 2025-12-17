<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('estimate_floors', function (Blueprint $table) {
            $table->id();
            $table->string('name');            // Tầng 1, Tầng 2, 1 trệt 1 lầu…
            $table->decimal('coefficient', 8, 2); // hệ số
            $table->string('status')->default('published');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('estimate_floors');
    }
};
