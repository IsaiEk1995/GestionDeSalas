@extends('layouts.plantilla')
@section('titulo','Administrar Usuarios')
@section('contenido')

 <div class="row">
  <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12">
    <h3>Gestión de Usuarios</h3>
  </div>
</div>

<div id="usuarios" class="container">
	<div class="row">
		<div class="col">
		<table class="table table-striped table-bordered">

        <button class="fa fa-plus-square btn btn-lg btn-warning" data-toggle="modal" data-target="#agregar"></button>
        <br>
        <br>
		<thead style="background-color:#207197">
			<tr>
				<th><center><p class="font-italic">No</p></center></th>
				<th><center><p class="font-italic">Nombre</p></center></th>
				<th><center><p class="font-italic">Rol</p></center></th>
        <th><center><p class="font-italic">Usuario</p></center></th>
        <th><center><p class="font-italic">Password</p></center></th>
        <th><center><p class="font-italic">E-mail</p></center></th>
        <th><center><p class="font-italic">imagen</p></center></th>
        <th><center><p class="font-italic">Opciones</p></center></th>
			</tr>
		</thead>
		
		<tbody>
			<tr v-for="usuarios in usuarios">
               <td><center><p class="font-italic">@{{usuarios.id_espacio}}</p></center></td>
               <td><center><p class="font-italic">@{{usuarios.nombre}}</p></center></td>
               <td><center><p class="font-italic">@{{usuarios.rol}}</p></center></td>
               <td><center><p class="font-italic">@{{usuarios.usuario}}</p></center></td>
               <td><center><p class="font-italic">@{{usuarios.pasword}}</p></center></td>
               <td><center><p class="font-italic">@{{usuarios.email}}</p></center></td>
               <td><center><p class="font-italic">@{{usuarios.imagen}}</p></center></td>
            	<td>
                	<center>
                		<span class="fa fa-check btn btn-xs btn-primary" data-toggle="modal" data-target="#editarSal" v-on:click="guardarSal(sala.id_espacio)">
                		</span>

                		<span class="fa fa-trash btn btn-xs btn-danger" v-on:click="eliminarSal(sala.id_espacio)">
                		</span>
                	</center>
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
	              <input type="number" name="No" v-model="id_espacio" class="form-control" ><br> -->

	            <label><p class="font-italic">Nombre</p></label>
              <input type="text" name="Nombre Usuario" v-model="nombre" class="form-control"><br> 

              <label><p class="font-italic">Rol</p></label>
              <select name="rol" class="form-control">
                    <option value="administrador">Administrador</option>
                    <option value="docente">Docente</option>
    			</select><br>
              <!--<input type="text" name="rol" v-model="rol" class="form-control"><br>-->

              <label><p class="font-italic">Usuario</p></label>
              <input type="text" name="usuario" v-model="usuario" class="form-control"><br>

              <label><p class="font-italic">password</p></label>
              <input type="text" name="password" v-model="password" class="form-control"><br> 

              <label><p class="font-italic">E-mail</p></label>
              <input type="text" name="email" v-model="email" class="form-control"><br>

              <label><p class="font-italic">imagen</p></label>
              <input type="file" v-model="imagen" class="form-control"><br> 
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
              <input type="number" name="No" v-model="id_espacio" class="form-control" disabled=""><br> 

              <label><p class="font-italic">Nombre</p></label>
              <input type="text" name="Nombre Usuario" v-model="nombre" class="form-control"><br> 

              <label><p class="font-italic">Rol</p></label>
              <input type="text" name="rol" v-model="rol" class="form-control"><br>

              <label><p class="font-italic">Usuario</p></label>
              <input type="text" name="usuario" v-model="usuario" class="form-control"><br>

              <label><p class="font-italic">password</p></label>
              <input type="text" name="password" v-model="password" class="form-control"><br> 

              <label><p class="font-italic">E-mail</p></label>
              <input type="text" name="email" v-model="email" class="form-control"><br>

              <label><p class="font-italic">imagen</p></label>
              <input type="file" v-model="imagen" class="form-control"><br> 

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
		</div>



@endsection
@push('scripts')
<!--<script src="js/vue-resource.js"></script>
<script src="js/salas/sala.js"></script>-->
@endpush
<!--<input type="hidden" name="route" value="{{url('/')}}">-->