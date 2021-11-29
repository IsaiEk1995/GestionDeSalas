@extends('layouts.plantilla')
@section('titulo','Administrar Laboratorios')
@section('contenido')

<br>

<center><button class="fa fa-plus-square btn btn-lg btn-success" data-toggle="modal" data-target="#agregar"></button>
</center>

<br>

<div class="table_responsive" id="sala">
  <table>

    <div class="inputWithIcon">
      <input type="text" placeholder="Buscar Por Nombre" v-model="buscar">
      <i class="fa fa-search fa-lg fa-fw" aria-hidden="true"></i>
    </div>
  <br>

    <thead>
      <tr>
        <th><center><p class="font-italic">No</p></center></th>
        <th><center><p class="font-italic">Nombre De La Sala</p></center></th>
        <th><center><p class="font-italic">Espacio</p></center></th>
        <th><center><p class="font-italic">Opciones</p></center></th>
        
      </tr>
    </thead>

    <tbody>
      <tr v-for="(sala,index) in filtroSal">
        <td><center><p class="font-italic">@{{sala.id_espacio}}</p></center></td>
        <td><center><p class="font-italic">@{{sala.nombre}}</p></center></td>
        <td><center><p class="font-italic">@{{sala.cupo}}</p></center></td>
      
        <td>
          <center><span class="fa fa-pencil btn btn-xs btn-primary" data-toggle="modal" data-target="#editarSal" v-on:click="guardarSal(sala.id_espacio)"></span>
          <span class="fa fa-trash btn btn-xs btn-danger" v-on:click="eliminarSal(sala.id_espacio)"></span></center></td>
        </td>
      </tr>


   <!-- Modal Agregar -->
   <div class="modal fade" id="agregar" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header"  style="background-color:orange">
            <!-- <center><h4 class="modal-title" id="exampleModalLabel"><strong class="color">Agregar</strong></h4></center> -->
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" v-on:click="limpiar()">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
          
          <div>
            <div class="col-xs-12">
              

              <label><p class="font-italic">Nombre Sala</p></label>
             <input type="text" name="Nombre Sala" v-model="nombre" class="form-control"><br> 

              <label><p class="font-italic">Cupo</p></label>
              <input type="number" name="Cupo" v-model="cupo" class="form-control" ><br> 

              <!--<label>Cupo</label>
              <input type="number" name="Cupo" v-model="cupo" class="form-control"><br> -->

            </div>
          </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal" v-on:click="limpiar()"><p class="font-italic">Cancelar</p></button>
            <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal" v-on:click="agregarSal(id_espacio)"><p class="font-italic">Guardar</p></button>
          </div>
        </div>
      </div>
    </div>
    <!-- Fin de modal -->

     <!-- Modal Editar -->
     <div class="modal fade" id="editarSal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header"  style="background-color:orange">
            <!-- <center><h4 class="modal-title" id="exampleModalLabel"><strong class="color">Editar</strong></h4></center> -->
            <button type="button" class="close" data-dismiss="modal" aria-label="Close" v-on:click="limpiar()">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <div class="modal-body">
          
          <div>
            <div class="col-xs-12">

              <label>No</label>
              <input type="number" name="No" v-model="id_espacio" class="form-control" disabled=""><br>
              
              <label><p class="font-italic">Nombre Sala</p></label>
              <input type="text" name="Nombre Sala" v-model="nombre" class="form-control"><br> 

              <label><p class="font-italic">Cupo</p></label>
              <input type="number" name="Cupo" v-model="cupo" class="form-control"><br> 
            </div>
          </div>
          </div>
          <div class="modal-footer">

            <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal" v-on:click="limpiar()"><p class="font-italic">Cancelar</p></button>
            <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal" v-on:click="actualizarSal(id_espacio)"><p class="font-italic">Guardar cambios</p></button>
            
           </div>
        </div>
      </div>
    </div>
    <!-- Fin de modal -->
    </tbody>
  </table>
</div>


@endsection
@push('scripts')
<!-- <script src="js/tablas.js"></script> -->
<script src="js/vue-resource.js"></script>
<script src="js/salas/sala.js"></script>
@endpush
<input type="hidden" name="route" value="{{url('/')}}">