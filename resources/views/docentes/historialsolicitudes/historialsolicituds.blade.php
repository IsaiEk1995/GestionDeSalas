@extends('layouts.plantilladocentes')
@section('titulo','Historial')
@section('contenido')

<div class="container" id="solicitud">
<div class="container">
    @if( session('datos'))
    <div class="alert alert-success alert-dismissible fade show" role="alert">
      {{ session('datos') }}
      <button type="button" class="close" data-dismiss="alert" aria-label="close"><span aria-hidden="true">&times;</span></button>
    </div>
    @endif
<!-- 
<div class="inputWithIcon">
  <input type="text" placeholder="Buscar Por Nombre" v-model="buscar">
  <i class="fa fa-search fa-lg fa-fw" aria-hidden="true"></i>
</div> -->
<br>
<br>

<div class=" table-responsive">
<table class="table table-hover  table-striped">
  <thead style="background-color:orange">
    <tr>
      
      <th><center><p class="font-italic"><font color="black">No.</font></p></center></th>
      <th><center><p class="font-italic"><font color="black">Espacio</font></p></center></th>
      <th><center><p class="font-italic"><font color="black">Docente</font></p></center></th>
      <th><center><p class="font-italic"><font color="black">Carrera</font></p></center></th>
      <th><center><p class="font-italic"><font color="black">Alumnos</font></p></center></th>
      <th><center><p class="font-italic"><font color="black">Fecha Solicitud</font></p></center></th>
      <th><center><p class="font-italic"><font color="black">Titulo Actividad</font></p></center></th>
      <th><center><p class="font-italic"><font color="black">Detalle Actividad</font></p></center></th>
      <th><center><p class="font-italic"><font color="black">Generador</font></p></center></th>
    </tr>
  </thead>
  <tbody>
    <tr v-for="(sol,index) in solicitudes">
    <td><center><p class="font-italic">@{{index+1}}</p></center></td>
    <td><center><p class="font-italic">@{{sol.id_espacio}}</p></center></td>
    <td><center><p class="font-italic">@{{sol.nick}}</p></center></td>
    <td><center><p class="font-italic">@{{sol.ClaveAsig}}</p></center></td>
    <td><center><p class="font-italic">@{{sol.participantes}}</p></center></td>
    <td><center><p class="font-italic">@{{sol.fecha_solicitud}}</p></center></td>
    <td><center><p class="font-italic">@{{sol.titulo_actividad}}</p></center></td>
    <td><center><p class="font-italic">@{{sol.detalle_actividad}}</p></center></td>
    <td>
    <center><a v-bind:href="'imprimir/'+ sol.id_espacio"><button class="btn btn-outline-success">PDF</button></a></center> 
    </tr>

  </tbody>
  </div>
</table>
</div>

@endsection
@push('scripts')
<script src="js/vue.js"></script>
<script src="js/vue-resource.js"></script>
<script src="js/solicitudes/solicitud.js"></script>
@endpush
<input type="hidden" name="route" value="{{url('/')}}">

