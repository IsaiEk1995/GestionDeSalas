@extends('layouts.adminltedocentes')
@section('titulo','Historial')
@section('contenido')

<div id="solicitud">
  <div class="container">
    @if( session('datos'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
      {{ session('datos') }}
      <button type="button" class="close" data-dismiss="alert" aria-label="close"><span aria-hidden="true">&times;</span></button>
    </div>
    @endif
    <div class="row">
      <div class="col-xs-12 col-xs-12">
        <div class="table-responsive">
          <table class="table table-bordered table-hover table-striped">
            <thead>
              <th>No.</th>
              <th>Espacio</th>
              <th>Carrera</th>
              <th>Alumnos</th>
              <th>Fecha Solicitud</th>
              <th>Titulo Actividad</th>
              <th>Detalle Actividad</th>
              <th>Estatus</th>
            </thead>
            <tbody>
              <tr v-for="(sol,index) in solicitudes">
                <td>@{{index+1}}</td>
                <td>@{{sol.id_espacio}}</td>
                <td>@{{sol.clave_asignatura}}</td>
                <td>@{{sol.participantes}}</td>
                <td>@{{sol.fecha_solicitud}}</td>
                <td>@{{sol.titulo_actividad}}</td>
                <td>@{{sol.detalle_actividad}}</td>
                <td></td>

                <!-- <span class="btn btn-outline-success">Aceptar</span>
                <span class="btn btn-outline-danger">Cancelar</span> -->
                  
                
              </tr>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </div>
</div>
@endsection
@push('scripts')
<script src="js/vue.js"></script>
<script src="js/vue-resource.js"></script>
<script src="js/solicitudes/solicitud.js"></script>
@endpush
<input type="hidden" name="route" value="{{url('/')}}">

