<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Salas;
use App\Solicitud;
use App\Usuario;
use App\Asignaturas;
// use DB;
use Codedge\Fpdf\Fpdf\Fpdf;

class apiSolController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        //
        $sala = Salas::all();
        $nick = Usuario::all();
        $asignatura = Asignaturas::all();
        return view('docentes.solicitudes.solicitudsala', ['ClaveAsig'=>$asignatura,'nicks'=>$nick,'sala'=>$sala]);

        

    }
    public function solicitud()
    {
        return view('docentes.solicitudes.solicitudsala');
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
        $solicitud = new Solicitud;
        $solicitud->id_solicitud=$request->get('id_solicitud');
        $solicitud->nick=$request->get('nick');
        $solicitud->id_espacio=$request->get('id_espacio');
        $solicitud->ClaveAsig=$request->get('ClaveAsig');
        $solicitud->titulo_actividad=$request->get('titulo_actividad');
        $solicitud->participantes=$request->get('participantes');
        $solicitud->fecha_solicitud=$request->get('fecha_solicitud');
        $solicitud->detalle_actividad=$request->get('detalle_actividad');
        // $solicitud->aprobado=$request->get('aprobado');
        $solicitud->save();
        return redirect()->route('solicitudsala.solicitudsala')->with('datos','Datos Agregados!');
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
    }

    public function imprimir($id){
        
        
        // Instanciando un nuevo objeto con las dimensiones
        $pdf=new Fpdf('P','mm','A4');

        // $solicitud=Solicitud::find($id);

        // Agregar una pagina
        $pdf->AddPage();


        // $pdf->SetFont('Arial','B',8);
        // $pdf->Cell(90,5,utf8_decode('CLAVE:'),0,1,'C');

        // $pdf->SetFont('Arial','',8);
        // $pdf->Cell(112,5,utf8_decode($solicitud->id_solicitud),0,0,'C');
        // $pdf->Ln(15);

        // $pdf->SetFont('Arial','B',8);
        // $pdf->Cell(90,5,utf8_decode('Espacio:'),0,1,'C');

        // $pdf->SetFont('Arial','',8);
        // $pdf->Cell(112,5,utf8_decode($solicitud->id_espacio),0,0,'C');
        // $pdf->Ln(15);

        // $pdf->SetFont('Arial','B',8);
        // $pdf->Cell(90,5,utf8_decode('Carrera:'),0,1,'C');

        // $pdf->SetFont('Arial','',8);
        // $pdf->Cell(112,5,utf8_decode($solicitud->clave_asignatura),0,0,'C');
        // $pdf->Ln(15);

        // $pdf->SetFont('Arial','B',8);
        // $pdf->Cell(90,5,utf8_decode('Titulo Actividad:'),0,1,'C');

        // $pdf->SetFont('Arial','',8);
        // $pdf->Cell(112,5,utf8_decode($solicitud->titulo_actividad),0,0,'C');
        // $pdf->Ln(15);

        // $pdf->SetFont('Arial','B',8);
        // $pdf->Cell(90,5,utf8_decode('Participantes:'),0,1,'C');

        // $pdf->SetFont('Arial','',8);
        // $pdf->Cell(112,5,utf8_decode($solicitud->participantes),0,0,'C');
        // $pdf->Ln(15);

        // $pdf->SetFont('Arial','B',8);
        // $pdf->Cell(90,5,utf8_decode('Fecha Solicitud:'),0,1,'C');

        // $pdf->SetFont('Arial','',8);
        // $pdf->Cell(112,5,utf8_decode($solicitud->fecha_solicitud),0,0,'C');
        // $pdf->Ln(15);

        // $pdf->SetFont('Arial','B',8);
        // $pdf->Cell(90,5,utf8_decode('Detalle Actividad:'),0,1,'C');

        // $pdf->SetFont('Arial','',8);
        // $pdf->Cell(112,5,utf8_decode($solicitud->detalle_actividad),0,0,'C');
        // $pdf->Ln(15);



        $pdf->Output();
        exit;
    }

    //  public function imprimir2($id){
        
        
    //     // Instanciando un nuevo objeto con las dimensiones
    //     $pdf=new Fpdf('P','mm','A4');

    //     $solicitud=Solicitud::find($id);

    //     // Agregar una pagina
    //     $pdf->AddPage();


    //     $pdf->SetFont('Arial','B',8);
    //     $pdf->Cell(90,5,utf8_decode('CLAVE:'),0,1,'C');

    //     $pdf->SetFont('Arial','',8);
    //     $pdf->Cell(112,5,utf8_decode($solicitud->id_solicitud),0,0,'C');
    //     $pdf->Ln(15);

    //     $pdf->SetFont('Arial','B',8);
    //     $pdf->Cell(90,5,utf8_decode('Espacio:'),0,1,'C');

    //     $pdf->SetFont('Arial','',8);
    //     $pdf->Cell(112,5,utf8_decode($solicitud->id_espacio),0,0,'C');
    //     $pdf->Ln(15);

    //     $pdf->SetFont('Arial','B',8);
    //     $pdf->Cell(90,5,utf8_decode('Carrera:'),0,1,'C');

    //     $pdf->SetFont('Arial','',8);
    //     $pdf->Cell(112,5,utf8_decode($solicitud->clave_asignatura),0,0,'C');
    //     $pdf->Ln(15);

    //     $pdf->SetFont('Arial','B',8);
    //     $pdf->Cell(90,5,utf8_decode('Titulo Actividad:'),0,1,'C');

    //     $pdf->SetFont('Arial','',8);
    //     $pdf->Cell(112,5,utf8_decode($solicitud->titulo_actividad),0,0,'C');
    //     $pdf->Ln(15);

    //     $pdf->SetFont('Arial','B',8);
    //     $pdf->Cell(90,5,utf8_decode('Participantes:'),0,1,'C');

    //     $pdf->SetFont('Arial','',8);
    //     $pdf->Cell(112,5,utf8_decode($solicitud->participantes),0,0,'C');
    //     $pdf->Ln(15);

    //     $pdf->SetFont('Arial','B',8);
    //     $pdf->Cell(90,5,utf8_decode('Fecha Solicitud:'),0,1,'C');

    //     $pdf->SetFont('Arial','',8);
    //     $pdf->Cell(112,5,utf8_decode($solicitud->fecha_solicitud),0,0,'C');
    //     $pdf->Ln(15);

    //     $pdf->SetFont('Arial','B',8);
    //     $pdf->Cell(90,5,utf8_decode('Detalle Actividad:'),0,1,'C');

    //     $pdf->SetFont('Arial','',8);
    //     $pdf->Cell(112,5,utf8_decode($solicitud->detalle_actividad),0,0,'C');
    //     $pdf->Ln(15);



    //     $pdf->Output();
    //     exit;
    // }

}
