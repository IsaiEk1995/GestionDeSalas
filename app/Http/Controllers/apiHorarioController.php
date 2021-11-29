<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Horario;

class apiHorarioController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $horarios=Horario::all();
        return $horarios;
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //
        $horarios=new Horario;
        $horarios->id_horario=$request->get('id_horario');
        $horarios->horario=$request->get('horario');
        $horarios->save();
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        //
        //$horarios=Horario::find($id);
        //return $horarios;
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
        $horarios=Horario::find($id);
        $horarios->id_horario=$request->get('id_horario');
        $horarios->horario=$request->get('horario');
        $horarios->update();
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        //
        return Horario::destroy($id);
    }
}
