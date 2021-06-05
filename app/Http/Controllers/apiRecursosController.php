<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Recursos;

class apiRecursosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $recursos=Recursos::all();
        return $recursos;
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
        $recursos=new Recursos;
        $recursos->id_recurso=$request->get('id_recurso');
        $recursos->recurso=$request->get('recurso');
        $recursos->save();
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
        $recursos=Recursos::find($id);
        return $recursos;
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
        $recursos=Recursos::find($id);
        $recursos->id_recurso=$request->get('id_recurso');
        $recursos->recurso=$request->get('recurso');
        $recursos->update();
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
        return Recursos::destroy($id);
    }
}
