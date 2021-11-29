@extends('layouts.adminlte')
@section('titulo','Administrar Horarios')
@section('contenido')


<!-- Content Wrapper. Contains page content -->
    <!-- /.content-header -->
<div id="horario" class="container">
    <div class="row">
      <div class="col">
        <table class="table table-striped table-bordered">

        <button class="fa fa-plus-square btn btn-lg btn-warning" data-toggle="modal" data-target="#agregar"></button>

        <br>
        <br>
        
          <thead style="background-color:#207197">
            <tr>
              <th><center><p class="font-italic">id</p></center></th>
              <th><center><p class="font-italic">Horario</p></center></th>
              <th><center><p class="font-italic">Opciones</p></center></th>
            </tr>

          </thead>
            <tbody>
              <tr v-for="horario in horario">
                <td><center><p class="font-italic">@{{horario.id_horario}}</p></center></td>
                <td><center><p class="font-italic">@{{horario.horario}}</p></center></td>
                <td>

                  <center><span class="fa fa-pencil btn btn-xs btn-primary" data-toggle="modal" data-target="#editarHora" v-on:click="guardarHora(horario.id_horario)"></span>

                  <span class="fa fa-trash btn btn-xs btn-danger" v-on:click="eliminarHora(horario.id_horario)"></span></center>

                  </td>
                </tr>

              <!-- Modal Agregar -->
    <div class="modal fade" id="agregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header"  style="background-color:#207197">
            <!-- <center><h4 class="modal-title" id="exampleModalLabel"><strong class="color">Agregar</strong></h4></center> -->
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" v-on:click="limpiar()">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
           <div>
            <div class="col-xs-12">
              <!--<label><p class="font-italic">No</p></label>
              <input type="number" name="No" v-model="id_horario" class="form-control" ><br> -->
              <label><p class="font-italic">Horario</p></label>
              <input type="time" v-model="horario" class="form-control" ><br> 
            </div>
           </div>
          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal" v-on:click="limpiar()"><p class="font-italic">Cancelar</p></button>

            <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal" v-on:click="agregarHora(id_horario)"><p class="font-italic">Guardar</p></button>
          </div>

        </div>
      </div>
    </div>
    <!-- Fin de modal -->

    <!-- Modal Editar -->
    <div class="modal fade" id="editarHora" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header"  style="background-color:#207197">
            <!-- <center><h4 class="modal-title" id="exampleModalLabel"><strong class="color">Editar</strong></h4></center> -->
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" v-on:click="limpiar()">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
          
          <div>
            <div class="col-xs-12">
              
              <label><p class="font-italic">No</p></label>
              <input type="number" name="No" v-model="id_horario" class="form-control" disabled=""><br>

              <label><p class="font-italic">Horario</p></label>
              <input type="time" name="Horario" v-model="horario" class="form-control"><br> 

             
            </div>
          </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal" v-on:click="limpiar()"><p class="font-italic">Cancelar</p></button>
            <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal" v-on:click="actualizarHora(id_horario)"><p class="font-italic">Guardar cambios</p></button>
           </div>
        </div>
      </div>
    </div>
    <!-- Fin de modal -->

          </tbody>
        </table>
      </div>
    </div>

@endsection
@push('scripts')
<script src="js/vue-resource.js"></script>
<script src="js/horarios/horario.js"></script>
@endpush
<input type="hidden" name="route" value="{{url('/')}}">