@extends('layouts.plantilla')
@section('titulo','Solicitudes_recursos')
@section('contenido')


<div id="sala" class="container">
    <div class="row">
      <div class="col">
        <table class="table table-striped table-bordered">

          <thead style="background-color:#207197">
            <tr>
              <th><center><p class="font-italic">No. Recurso</p></center></th>
              <th><center><p class="font-italic">Nombre Recurso</p></center></th>
              <!--<th><center><p class="font-italic">Fecha y Hora De Registo</p></center></th>-->
              <th><center><p class="font-italic">Opciones</p></center></th>
            </tr>

          </thead>
          
            <tbody>
              <tr v-for="sala in salas">
                <td><center><p class="font-italic">@{{sala.id_espacio}}</p></center></td>
                <td><center><p class="font-italic">@{{sala.nombre}}</p></center></td>
                 

                <td>
                 <center><span class="fa fa-check btn btn-xs btn-primary" data-toggle="modal" data-target="#editarRec" v-on:click="guardarRec(recurso.id_recurso)">Aceptar</span>

                  <span class="fa fa-ban btn btn-xs btn-danger" v-on:click="eliminarSal(sala.id_espacio)">Cancelar</span></center>
                </td>
              </tr>
           </tbody>
         </table>
        </div>
      </div>

@endsection
@push('scripts')
<script src="js/vue-resource.js"></script>
<script src="js/salas/sala.js"></script>
@endpush
<input type="hidden" name="route" value="{{url('/')}}">