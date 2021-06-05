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

//Apis Vistas

Route::apiResource('apiSalas','apiSalasController');
Route::apiResource('apiRecursos','apiRecursosController');
Route::apiResource('apisolicitudsa','apisolicitudsaController');
Route::apiResource('apiDocentes','apiDocentesController');

//Vista De Logueo
Route::view('/','login.logueo');

//Vista De Adminlte
Route::view('administrador','layouts.adminlte');

//Vista Horarios
Route::view('horas','horarios.horarios');
Route::view('recurso','recursos.recursos');
Route::view('sala','salas.salas');
Route::view('solicitudre','solicitudre.solicitudre');

//Vista Solicitud Salas
Route::view('solicitudsa','solicitudsa.solicitudsa');

Route::view('docentes', 'docentes.docentes');

//configuracion
Route::view('configuracion','docentes.configuracion');
//historialsolicitudes
Route::view('solicitudes','docentes.historialsolicitudes.historialsolicituds');
//paneldesolicitudes
Route::view('panelsolicitudes','docentes.paneldesolicitudes.panelsolicituds');
//solicitudes
Route::view('solicitudrecurso','docentes.solicitudes.solicitudrecurso');
Route::view('solicitudsala','docentes.solicitudes.solicitudsala');

