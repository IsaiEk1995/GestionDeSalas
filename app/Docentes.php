<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use App\Asignaturas;

class Docentes extends Model

{
    // esta linea sirve para vincular el modelo con una tabla.
    protected $table='docentesporgrupo';

    // se especifica la clave primaria.
    protected $primaryKey='ClaveCarga';

    // cuando no sea un numero la clave primaria y sea un varchar poner el siguiente comando.
    public $incrementing=false;

    // desactiva las etiquetas de tiempo.
    public $timestamps=false;

      //relaciones
      protected $with=['Cedula','ClaveAsig'];

    // definimos los campos que van a recivir valor de los que se pueden pedir por el usuario.
    protected $fillable=[
    	'ClaveCarga',
    	'periodo',
        'ClaveAsig',
        'Cedula',
        'ClaveGrupo'
   ];

   public function Cedula(){
    return $this->hasMany(Profesores::class,'cedula','Cedula');
    }
    public function ClaveAsig(){
     return $this->hasMany(Asignaturas::class,'ClaveAsig','ClaveAsig');
 }
}
