@extends('layouts.adminlte')
@section('titulo','Solicitudes_recursos')
@section('contenido')


<div id="sala" class="container" >

     <div class="container"> 
       <div class="row">
        <div class="col-xs-12">


          <button class="btn btn-md btn-warning" data-toggle="modal" data-target="#agregar">Agregar</button>

          <br>
          <br>
        
          <div class="row">
            <div class="col-xs-12 col-xs-12">

            <input type="text" placeholder="Buscar Por Nombre" v-model="buscar" class="form-control">

            <br>

            <div class="table-responsive" >
            <table class="table">
              <thead style="background-color:#207197" >
              <th><font color="white"><center>Id Solicitud del Recurso</center></font></th>
              <th><font color="white"><center>Id Solicitud</center></font></th>
              <th><font color="white"><center>Id Recurso</center></font></th>
              <th><font color="white"><center>Opciones</center></font></th>
            
            </thead>
            <!--<tbody>
              <tr v-for="sala in salas">
                <td><center>@{{sala.id_espacio}}</center></td>
                <td><center>@{{sala.nombre}}</center></td>
                <td><center>@{{sala.cupo}}</center></td>
                
                <td>
                 <center><span class="fa fa-pencil btn btn-xs btn-primary" data-toggle="modal" data-target="#editarSal" v-on:click="guardarSal(sala.id_espacio)"></span>

                  <span class="fa fa-trash btn btn-xs btn-danger" v-on:click="eliminarSal(sala.id_espacio)"></span></center>

                </td>
              </tr>
            </tbody>-->
          </table>
          </div>
          
        </div>

      </div>

    </div>
        

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
          
          <div class="row">
            <div class="col-xs-12">
              

              <label>Id Solicitud del Recurso</label>
              <center><input type="number" name="Id Solicitud del Recurso" v-model="id_solicitud_recursos" class="form-control"><br> 

              <label>Id Solicitud</label>
              <input type="text" name="id_solicitud" placeholder="Id Solicitud" v-model="id_solicitud" class="form-control" ><br> 

              <label>Id Recurso</label>
              <input type="number" name="id_recurso" v-model="cupo" class="form-control"><br> 

            </div>
          </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal" v-on:click="limpiar()">Cancelar</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal" v-on:click="agregarSal(id_espacio)">Guardar</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Fin de modal -->

    <!-- Modal Editar -->
    <div class="modal fade" id="editarSal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header"  style="background-color:#207197">
            <!-- <center><h4 class="modal-title" id="exampleModalLabel"><strong class="color">Editar</strong></h4></center> -->
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" v-on:click="limpiar()">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
          
          <div class="row">
            <div class="col-xs-12">
              
              <label>No</label>
              <input type="number" name="No" v-model="id_espacio" class="form-control" disabled=""><br> 

              <label>Nombre Sala</label>
              <input type="text" name="Nombre Sala" v-model="nombre" class="form-control"><br> 

              <label>Cupo</label>
              <input type="number" name="Cupo" v-model="cupo" class="form-control"><br> 

            </div>
          </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal" v-on:click="limpiar()">Cancelar</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal" v-on:click="actualizarSal(id_espacio)">Guardar cambios</button>
           </div>
        </div>
      </div>
    </div>
    <!-- Fin de modal -->
  </div>
</div>

@endsection
@push('scripts')
<script src="js/vue-resource.js"></script>
<script src="js/salas/sala.js"></script>
@endpush
<input type="hidden" name="route" value="{{url('/')}}">