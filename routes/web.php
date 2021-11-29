<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return view('welcome');
});

//Vista De inicio principal
Route::view('/','principal.principal');
Route::post('home','AccesoController@validar');
Route::get('home','AccesoController@salir');


//Vista De Error
Route::view('error','login.error');

//Vista de inicio
Route::view('bienvenida','layouts.inicio');
Route::view('inicio','principal.principal');
Route::view('sesion','login.logueo');
Route::view('calendario','principal.calendario');


//Vista De Adminlte
Route::view('administrador','layouts.plantilla');
Route::view('docentes', 'layouts.plantilladocentes');

//Vista administrador
Route::view('horas','administrador.horarios.horarios');
Route::view('recurso','administrador.recursos.recursos');
Route::view('sala','administrador.salas.salas');
Route::view('solicitudre','administrador.solicitudre.solicitudre');
Route::view('home','administrador.home.home');
Route::view('escritorio','administrador.home.home');
Route::view('solicitudsa','administrador.solicitudsa.solicitudsa');
Route::view('usuarios','administrador.usuarios.usuarios');
Route::view('administradores','administrador.admin.admin');
Route::view('adminis','administrador.adminis.adminis');


//Vista docentes
Route::view('configuracion','docentes.configuracion.configuracion');
Route::view('solicitudes','docentes.historialsolicitudes.historialsolicituds');
Route::view('panelsolicitudes','docentes.paneldesolicitudes.panelsolicituds');
Route::view('solicitudrecurso','docentes.solicitudes.solicitudrecurso');
Route::view('solicitudsala','docentes.solicitudes.solicitudsala');
//Route::view('calendario','principal.calendario');
Route::view('saladocente','docentes.salas.sala');


Route::get('solicitudsala', 'apiSolController@index')->name('solicitudsala.solicitudsala');



//Apis Vistas
Route::apiResource('apiSalas','apiSalasController');
Route::apiResource('apiRecursos','apiRecursosController');
Route::apiResource('apisolicitudsa','apisolicitudsaController');
Route::apiResource('apiDocentes','apiDocentesController');
Route::apiResource('apiHorarios','apiHorarioController');

//Route::apiResource('apiSalas','apiSalasController');
//Route::apiResource('apiRecursos','apiRecursosController');
//Route::apiResource('apiDocentes','apiDocentesController');
Route::apiResource('apiSol','apiSolController');
Route::apiResource('apiSolicitud','apiSolicitudController');

Route::apiResource('apiAdministrador','apiAdministradoresController');

Route::apiResource('apiAdminis','apiAdminisController');


//Rutas de botones
//ruta cancelar
Route::get('cancelar/{ruta}', function($ruta) {
    return redirect()->route('solicitudsala.solicitudsala')->with('cancelar','Acción Cancelada!');
})->name('cancelar');

//peticiones post éste es la que permite guardar las solicitudes
Route::post('solicitudsala','apiSolController@store');

// PDF
Route::get('imprimir/{id}','apiSolController@imprimir');
// Route::get('imprimir2/{id}','apiSolController@imprimir2');


Route::apiResource('apiRelacion','apiRelacionController');

Route::view('Prueba','prueba.prueba');