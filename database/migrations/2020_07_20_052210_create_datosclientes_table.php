<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateDatosclientesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('datosclientes', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->date(00-00-0000)('fecha');
            $table->string('razonsocialcliente');
            $table->string('rfccliente');
            $table->decimal('monto');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('datosclientes');
    }
}
