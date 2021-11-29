<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Salas extends Model
{
    // esta linea sirve para vincular el modelo con una tabla.
    protected $table='res_solicitudes';

    // se especifica la clave primaria.
    protected $primaryKey='id_solicitud';

    // cuando no sea un numero la clave primaria y sea un varchar poner el siguiente comando.
    public $incrementing=false;

    // desactiva las etiquetas de tiempo.
    public $timestamps=false;

    // definimos los campos que van a recivir valor de los que se pueden pedir por el usuario.
    protected $fillable=[
    	'id_solicitud',
    	'nick',
    	'id_espacio',
        'fecha_solicitud',
        'fecha_solicitada',
        'fecha autorizacion',
        'detalle_actividad',
        'aprobado',
        'clave_grupo',
        'claveAsig',
        'participantes',
        'tipo_solicitud'
   ];
}
