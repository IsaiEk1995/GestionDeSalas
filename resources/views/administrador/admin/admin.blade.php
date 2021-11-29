@extends('layouts.plantilla')
@section('titulo','Lista De Administradores')
@section('contenido')

<br>

<center><button class="fa fa-plus-square btn btn-lg btn-success" data-toggle="modal" data-target="#agregar"></button>
</center>

<br>

<div class="table_responsive" id="administrador">
  <table>

    <div class="inputWithIcon">
      <input type="text" placeholder="Buscar Por Nombre" v-model="buscar">
      <i class="fa fa-search fa-lg fa-fw" aria-hidden="true"></i>
    </div>
  <br>

    <thead>
      <tr>
        <th><center><p class="font-italic">Usuario</p></center></th>
		    <th><center><p class="font-italic">Nombre</p></center></th>
		    <th><center><p class="font-italic">Apellido</p></center></th>
		    <th><center><p class="font-italic">Rol</p></center></th>
        <th><center><p class="font-italic">Opciones</p></center></th>
        
      </tr>
    </thead>

    <tbody>
      <tr v-for="(admin,index) in filtroAdmin">
          <td><center><p class="font-italic">@{{admin.nick}}</p></center></td>
          <td><center><p class="font-italic">@{{admin.nombre}}</p></center></td>
          <td><center><p class="font-italic">@{{admin.apellidos}}</p></center></td>
          <td><center><p class="font-italic">@{{admin.id_rol}}</p></center></td>
      
        <td>
        <center><span class="fa fa-pencil btn btn-xs btn-primary" data-toggle="modal" data-target="#editarAdmin" v-on:click="guardarAdmin(admin.nick)"></span>
        <span class="fa fa-trash btn btn-xs btn-danger" v-on:click="eliminarAdmin(admin.nick)"></span></center></td>
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

              <label><p class="font-italic">Nombre Usuario</p></label>
              <input type="text" name="nick" v-model="nick" class="form-control"><br> 

              <label><p class="font-italic">Contraseña</p></label>
              <input type="password" name="password" v-model="password" class="form-control"><br> 

              <label><p class="font-italic">Nombre</p></label>
              <input type="text" name="nombre" v-model="nombre" class="form-control" ><br> 

              <label><p class="font-italic">Apellidos</p></label>
              <input type="text" name="apellidos" v-model="apellidos" class="form-control" ><br> 
              

            </div>
          </div>

          </div>
          <div class="modal-footer">

            <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal" v-on:click="limpiar()"><p class="font-italic">Cancelar</p></button>

            <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal" v-on:click="agregarAdmin(nick)"><p class="font-italic">Guardar</p></button>

          </div>
        </div>
      </div>
    </div>
    <!-- Fin de modal -->

    <!-- Modal Editar -->
    <div class="modal fade" id="editarAdmin" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
              
              <label><p class="font-italic">Usuario</p></label>
              <input type="text" name="nick" v-model="nick" class="form-control" disabled=""><br> 

              <label><p class="font-italic">Contraseña</p></label>
              <input type="password" name="password" v-model="password" class="form-control"><br> 

              <label><p class="font-italic">Nombre</p></label>
              <input type="text" name="nombre" v-model="nombre" class="form-control" ><br> 

              <label><p class="font-italic">Apellidos</p></label>
              <input type="text" name="apellidos" v-model="apellidos" class="form-control" ><br> 

              <label><p class="font-italic">Rol</p></label>
              <select class="form-control" v-model="id_rol">
               <option>
                1
               </option>
               <option>
                2
               </option>
               </select> 

            </div>
          </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-sm btn-danger" data-dismiss="modal" v-on:click="limpiar()"><p class="font-italic">Cancelar</p></button>
            <button type="button" class="btn btn-sm btn-primary" data-dismiss="modal" v-on:click="actualizarAdmin(nick)"><p class="font-italic">Guardar cambios</p></button>
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
<script src="js/vue-resource.js"></script>
<script src="js/admin/administrador.js"></script>

@endpush

<input type="hidden" name="route" value="{{url('/')}}">