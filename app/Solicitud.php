<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Solicitud extends Model
{
    
    protected $table="res_solicitudes";
    protected $primaryKey="id_solicitud";
    public $incrementing=true;
    public $timestamps=false;
    protected $fillable=[
        'id_solicitud',
        // 'nick',
        'id_espacio',
        'fecha_solicitud',
        // 'fecha_solicitada',
        // 'fecha_autorizacion',
        'titulo_actividad',
        'detalle_actividad',
        'aprobado',
        // 'activa',
        // 'clave_grupo',
        'ClaveAsig',
        'participantes'
        // 'tipo_solicitud'
    ];
}
