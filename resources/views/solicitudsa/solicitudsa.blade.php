@extends('layouts.adminlte')
@section('titulo','solicitudsa')
@section('contenido')


<div id="solicitudsa" class="container" >

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
              <th><font color="white"><center>No. Solicitud</center></font></th>
              <th><font color="white"><center>Cedula</center></font></th>
              <th><font color="white"><center>Espacio</center></font></th>
              <th><font color="white"><center>Fecha de la Solicitud</center></font></th>
              <th><font color="white"><center>Fecha Solicitada</center></font></th>
              <th><font color="white"><center>Fecha de autorizacion</center></font></th>
              <th><font color="white"><center>Tipo de Actividad</center></font></th>
              <th><font color="white"><center>Detalle de la actividad</center></font></th>
              <th><font color="white"><center>Aprobado</center></font></th>
              <th><font color="white"><center>Activa</center></font></th>
              <th><font color="white"><center>Clave del Grupo</center></font></th>
              <th><font color="white"><center>Clave de la Asignatura</center></font></th>
              <th><font color="white"><center>Participantes</center></font></th>
              <th><font color="white"><center>Tipo de Solicitud</center></font></th>
              <th><font color="white"><center>Opciones</center></font></th>
            
            </thead>
            
            <tbody>
              <tr v-for="solicitudsa in solicitudsa">
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                <td><center></center></td>
                
                
                <td>
                 <center><span class="fa fa-pencil btn btn-xs btn-primary" data-toggle="modal" data-target="#editarRec" v-on:click="guardarRec(recurso.id_recurso)"></span>

                  <span class="fa fa-trash btn btn-xs btn-danger" v-on:click="eliminarRec(recurso.id_recurso)"></span></center>

                </td>
              </tr>
            </tbody>
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
              

              <label>No. Solicitud</label>
              <center><input type="number" name="No" v-model="id_solicitud" class="form-control"><br> 

              <label>Cedula</label>
              <input type="text" name="Cedula" placeholder="Cedula" v-model="cedula" class="form-control" ><br> 

              <label>Id Espacio</label>
              <input type="text" name="id_espacio" placeholder="Id Espacio" v-model="id_espacio" class="form-control" ><br>

              <label>Fecha de Solicitud</label>
              <input type="text" name="fecha_solicitud" placeholder="Fecha de Solicitud" v-model="fecha_solicitud" class="form-control" ><br>

              <label>Fecha Solicitada</label>
              <input type="text" name="fecha_solicitada" placeholder="Fecha Solicitada" v-model="fecha_solicitada" class="form-control" ><br>

              <label>Fecha de Autorizacion</label>
              <input type="text" name="fecha_autorizacion" placeholder="Fecha de Autorizacion" v-model="fecha_autorizacion" class="form-control" ><br> 

              <label>Titulo de la Actividad</label>
              <input type="text" name="titulo_actividad" placeholder="Titulo de la Actividad" v-model="titulo_actividad" class="form-control" ><br>

              <label>Detalle de la Actividad</label>
              <input type="text" name="detalle_actividad" placeholder="Detalle de la Actividad" v-model="detalle_actividad" class="form-control" ><br>

              <label>Aprobado</label>
              <input type="text" name="aprobado" placeholder="Aprobado" v-model="aprobado" class="form-control" ><br>
              
              <label>Activa</label>
              <input type="text" name="activa" placeholder="Activa" v-model="activa" class="form-control" ><br>

              <label>Clave del Grupo</label>
              <input type="text" name="clave_grupo" placeholder="Clave del grupo" v-model="clave_grupo" class="form-control" ><br>

              <label>Clave de la Asignatura</label>
              <input type="text" name="clave_asignatura" placeholder="Clave de la Asignatura" v-model="clave_asignatura" class="form-control" ><br>

              <label>No. de Participantes</label>
              <input type="text" name="participantes" placeholder="No. de  participantes" v-model="participantes" class="form-control" ><br>

              <label>Tipo de Solicitud</label>
              <input type="text" name="tipo_solicitud" placeholder="Tipo de Solicitud" v-model="tipo_solicitud" class="form-control" ><br>


              <!--<label>Cupo</label>
              <input type="number" name="Cupo" v-model="cupo" class="form-control"><br> -->

            </div>
          </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal" v-on:click="limpiar()">Cancelar</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal" v-on:click="agregarRec(id_recurso)">Guardar</button>
          </div>
        </div>
      </div>
    </div>
    <!-- Fin de modal -->

    <!-- Modal Editar -->
    <div class="modal fade" id="editarRec" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
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
              
              <label>No. Solicitud</label>
              <input type="number" name="id_solicitud" v-model="id_solicitud" class="form-control" disabled=""><br> 

              <label>cedula</label>
              <input type="number" name="cedula" v-model="cedula" class="form-control"><br> 

              <!--<label>Cupo</label>
              <input type="number" name="Cupo" v-model="cupo" class="form-control"><br> -->

            </div>
          </div>

          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-danger" data-dismiss="modal" v-on:click="limpiar()">Cancelar</button>
            <button type="button" class="btn btn-primary" data-dismiss="modal" v-on:click="actualizarRec(id_recurso)">Guardar cambios</button>
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
<script src="js/recursos/recurso.js"></script>
@endpush
<input type="hidden" name="route" value="{{url('/')}}">