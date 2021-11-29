@extends('layouts.inicio')

@section('scripts')

    <link href="calendar/core/main.css" rel='stylesheet' />
    <link href="calendar/daygrid/main.css" rel='stylesheet' />
    <link href="calendar/list/main.css" rel='stylesheet' />
    <link href="calendar/timegrid/main.css" rel='stylesheet' />

    <script src="calendar/core/main.js"></script>

    <script src="calendar/interaction/main.js"></script>

    <script src="calendar/daygrid/main.js"></script>
    <script src="calendar/list/main.js"></script>
    <script src="calendar/timegrid/main.js"></script>
<div class="container">
     <script>

      document.addEventListener('DOMContentLoaded', function() {
        var calendarEl = document.getElementById('calendar');

        var calendar = new FullCalendar.Calendar(calendarEl, {
          plugins: [ 'dayGrid', 'interaction','timeGrid', 'list' ], //Empieza primer bloque
          //defaultView:'timeGridDay'
          
          header:{
            left:'prev,next today MiBoton',
            center:'title',
            right:'dayGridMonth,timeGridWeek,timeGridDay'
          }, //Empieza segundo Bloque

          customButtons:{
            MiBoton:{
              text:"Botón",
              click:function(){
                alert("¡Hola Mundo!");
                $('#exampleModal').modal('toggle');
              }
            }
          },//Termina segundo Bloque

          //Empieza tercer bloque
          dateClick:function(info){

            $('#txtFecha').val(info.dateStr);

            $('#exampleModal').modal();
            console.log(info);
            calendar.addEvent({ title:"Evento X", date:info.dateStr})


          },//Termina Tercer Bloque
          eventClick:function(info){
            console.log(info);
            console.log(info.event.title);
            console.log(info.event.star);

            console.log(info.event.end);
            console.log(info.event.textColor);
            console.log(info.event.backgroundColor);

            console.log(info.event.extendedProps.descripcion);

          },

          events:[
          {
            title:"Mi Evento 1",
            start:"2021-11-04 12:30:00",
            descripcion:"Descricion del evento 1"
          },{
            title:"Mi Evento 2",
            start:"2021-11-05 12:30:00",
            end:"2021-11-10 12:30:00",
            color:"#FFCCAA",
            textColor:"#000000",
            descripcion:"Descricion del evento 2"
          }
          ]

        });
        calendar.setOption('locale', 'Es');

        calendar.render();

        $('#btnAgregar').click(function(){
          recolectarDatosGUI("POST");
        });

        function recolectarDatosGUI(method){
          nuevoEvento={
            id_espacio:$('#txtNombreSala').val(),
            participantes:$('#txtCupo').val(),
            clave_asignatura:$('#txtCarrera').val(),
            fecha_solicitud:$('#txtFecha').val(),
            titulo_actividad:$('#txtTitulo').val(),
            detalle_actividad:$('#txtDetalle').val(),

            //'_token':$("meta[name='csrf_token']").attr("content"),
            //'_token':method 
            
          }
        }




      });

    </script>

  </div>
    
@endsection

@section('contenido')
<br>
<br>
<br>

  <div class="row">
            <div class="col"></div>
            <div class="col-7"><div id="calendar"> </div></div>
            <div class="col"></div>
  </div>

  <!-- Modal -->
<div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Reservar Laboratorios</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <label><p class="font-italic">Nombre Sala</p></label>
        <input type="text" name="txtNombreSala" id="txtNombreSala" v-model="nombre" class="form-control"><br> 

        <label><p class="font-italic">Cupo de Alumnos</p></label>
        <input type="number" name="txtCupo" id="txtCupo" v-model="cupo" class="form-control" ><br> 

        <label><p class="font-italic">Carrera</p></label>
        <input type="text" name="txtCarrera" id="txtCarrera" v-model="nombre" class="form-control"><br> 

        <label><p class="font-italic">Fecha de Solicitud</p></label>
        <input type="text" name="txtFecha" id="txtFecha" v-model="fecha" class="form-control" ><br> 
        
        <label for="titulo_actividad">Titulo de actividad</label>
        <input type="text" name="txtTitulo" id="txtTitulo" value="" class="form-control" placeholder="Titulo..." required="">

         <label for="detalle_actividad">Detalles de la actividad</label>
        <input type="text" name="txtDetalle" id="txtDetalle" value="" class="form-control" placeholder="Detalles..." required="">
        
      </div>
      <div class="modal-footer">
        <button id="btnAgregar" class="btn btn-success" >Agregar</button>
        <button id="btModificar" class="btn btn-warning" >Modificar</button>
        <button id="btnBorrar" class="btn btn-danger" >Borrar</button>
        <button id="btnCancelar" class="btn btn-default" >Cancelar</button>
      </div>
    </div>
  </div>
</div>

@endsection
