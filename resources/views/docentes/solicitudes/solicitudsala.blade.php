@extends('layouts.plantilladocentes')
@section('titulo','Solicitud de Sala')
@section('contenido')
<!-- 
<div class="row">
  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
    <h3><p class="font-italic">Solicitar Sala</p></h3>
  </div>
</div> -->

<br>

<div class="container">
  @if( session('datos'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
      {{ session('datos') }}
      <button type="button" class="close" data-dismiss="alert" aria-label="close"><span aria-hidden="true">&times;</span></button>
    </div>
  @endif
  @if( session('cancelar'))
    <div class="alert alert-danger alert-dismissible fade show" role="alert">
      {{ session('cancelar') }}
      <button type="button" class="close" data-dismiss="alert" aria-label="close"><span aria-hidden="true">&times;</span></button>
    </div>
  @endif
</div>
<form action="" method="POST" name="solicitudsform">
  {{csrf_field()}}
  <div class="row">
    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-10">
      <div class="form-group">
        <label for="nick">Nombre Maestro</label>
                <select name="nick" class="form-control" required="">
                  <option value="">Elija Un Docente:</option>
                  @foreach($nicks as $nick)
                    <option value="{{$nick->nick}}">{{$nick->nick}}</option>
                  @endforeach
                </select>
      </div>
    </div>
    <br>

    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-10">
      <div class="form-group">
        <label for="id_espacio">Nombre de Sala</label>
                <select name="id_espacio" class="form-control" required="">
                  <option value="">Elija un nombre:</option>
                  @foreach($sala as $sala)
                    <option value="{{$sala->nombre}}">{{$sala->nombre}}</option>
                  @endforeach
                </select>
      </div>
    </div>
    <br>

    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
      <div class="form-group">
        <label for="participantes">Cupo de alumnos</label>
        <input type="number" name="participantes" value="" class="form-control" placeholder="cupo de alumnos..." required="">
      </div>
    </div>
    <br>

    
    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-10">
      <div class="form-group">
        <label for="ClaveAsig">Carrera</label>
                <select name="ClaveAsig" class="form-control" required="">
                  <option value="">Elija una carrera:</option>
                  @foreach($ClaveAsig as $ClaveAsig)
                    <option value="{{$ClaveAsig->ClaveAsig}}">{{$ClaveAsig->ClaveAsig}}</option>
                  @endforeach
                </select>
      </div>
    </div>
    <br>


      <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
        <div class="form-group">
              <label for="fecha_solicitud">Fecha de Solicitud</label>
              <input type="date" name="fecha_solicitud" value="" class="form-control" placeholder="fecha" required="">
            </div>
      </div>
      <br>

      <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
        <div class="form-group">
              <label for="titulo_actividad">Titulo de actividad</label>
              <input type="text" name="titulo_actividad" value="" class="form-control" placeholder="Titulo..." required="">
            </div>
      </div>
      <br>

      <div class="col-lg-6 col-sm-6 col-md-6 col-xs-12">
        <div class="form-group">
              <label for="detalle_actividad">Detalles de la actividad</label>
              <input type="text" name="detalle_actividad" value="" class="form-control" placeholder="Detalles..." required="">
            </div>
      </div>
      <br>
      
      <div class="col-lg-4 ">
        <div class="form-group">
              <button class="btn btn-primary float-right" type="submit" name="submit" value="Enviar"> Enviar</button>
              
            </div>
      </div>
  </div>
</form>

@endsection

@push('scripts')
@endpush