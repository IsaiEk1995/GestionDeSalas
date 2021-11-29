@extends('layouts.plantilla')
@section('titulo','home')
@section('contenido')

<div class="full-box tile-container">

				<a href="administradores" class="tile">
					<div class="tile-tittle">Lista De Usuarios</div>
					<div class="tile-icon">
						<i class="fas fa-users fa-fw"></i>
						<!-- <p>5 Registrados</p> -->
					</div>
				</a>

				<a href="adminis" class="tile">
					<div class="tile-tittle">Lista De Solicitudes</div>
					<div class="tile-icon">
						<i class="fas fa-id-card-alt fa-fw"></i>
						<!-- <p>9 Registrados</p> -->
					</div>
				</a>

				<a href="sala" class="tile">
					<div class="tile-tittle">Lista De Salas</div>
					<div class="tile-icon">
						<i class="fas fa-school fa-fw"></i>
						<!-- <p>10 Registrados</p> -->
					</div>
				</a>
				
			</div>
			

@endsection
@push('scripts')