@extends('layouts.inicio')
@section('titulo','Bienvenida')
@section('contenido')

      <!-- direction 1 -->
      <div id="slider-direction-1" class="slider-direction slider-one">
        <div class="container">
          <div class="row">
            <div class="col-md-12 col-sm-12 col-xs-12">
              <div class="slider-content">
                <!-- layer 1 -->
                <div class="layer-1-1 hidden-xs wow slideInDown" data-wow-duration="2s" data-wow-delay=".2s">
                  <h2 class="title1">Universidad Tecnológica Del Centro </h2>
                </div>
                <!-- layer 2 -->
                <div class="layer-1-2 wow slideInUp" data-wow-duration="2s" data-wow-delay=".1s">
                  <h1 class="title2">Gestión De Salas</h1>
                </div>
                <!-- layer 3 -->
                <div class="layer-1-3 hidden-xs wow slideInUp" data-wow-duration="2s" data-wow-delay=".2s">
                  <a class="ready-btn right-btn page-scroll" href="galeria">Ver Galeria</a>
                  <a class="ready-btn page-scroll" href="login">Agendar Sala</a>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
     
      <div id="inicio" class="slider-area">
        <div class="bend niceties preview-2">
        <div id="ensign-nivoslider" class="slides">
        <img src="img/slider/PORTADA.jpg" alt="" title="#slider-direction-1" />
        <!--<img src="img/slider/slider2.jpg" alt="" title="#slider-direction-2" />
        <img src="img/slider/slider3.jpg" alt="" title="#slider-direction-3" />-->
      </div>

@endsection