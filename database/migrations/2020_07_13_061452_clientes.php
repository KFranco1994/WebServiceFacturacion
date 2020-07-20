<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Clientes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema:create('clientes', function(Blueprint $table){
            $table->string('rfc');
            $table->string('razonsocial');
            $table->string('cpcliente');
            $table->string('correocliente');
            $table->string('telefonocliente');
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema:dropIfExists('clientes');
    }
}
