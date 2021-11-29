<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	 <!-- TOKEN PARA CAMBIOS -->
    <meta name="token" id="token" value="{{ csrf_token() }}">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
	<title>@yield('titulo')</title>

	<!-- Normalize V8.0.1 -->
	<link rel="stylesheet" href="Plantilla/css/normalize.css">

	<!-- Bootstrap V4.3 -->
	<link rel="stylesheet" href="Plantilla/css/bootstrap.min.css">

	<!-- Bootstrap Material Design V4.0 -->
	<!-- <link rel="stylesheet" href="Plantilla/css/bootstrap-material-design.min.css"> -->

	<!-- Font Awesome V5.9.0 -->
	<link rel="stylesheet" href="Plantilla/css/all.css">

	<!-- Sweet Alerts V8.13.0 CSS file -->
	<!-- <link rel="stylesheet" href="Plantilla/css/sweetalert2.min.css"> -->

	<!-- Sweet Alert V8.13.0 JS file-->
	<!-- <script src="Plantilla/js/sweetalert2.min.js" ></script> -->

	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<link rel="stylesheet" href="Plantilla/css/jquery.mCustomScrollbar.css">
	
	<!-- General Styles -->
	<link rel="stylesheet" href="Plantilla/css/style.css">

	<!-- Favicons -->
  	<link href="img/logoutc.png" rel="icon">
  	<link href="img/logoutc.png" rel="logoutc.png">

  	<!--  Agregar iconos -->
  	<link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.4.0/css/font-awesome.min.css">

  	<!--  Para Formulario -->
  	<link rel="stylesheet" href="form_validation/bootstrap4/css/bootstrap.min.css">  
  	<link rel="stylesheet" href="form_validation/estilos.css">

  	<!-- Complementos -->
  	<script type="text/javascript" src="js/vue.js"></script>
  	<script src="js/jquery.min.js"></script>

     <!-- Alertas -->
    <script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<!-- Tailwind -->
	<link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">

	
	<link rel="stylesheet" href="css/tablas.css">
	<link rel="stylesheet" href="css/busqueda.css">


</head>
<body>
	
	<!-- Main container -->
	<main class="full-box main-container">
		<!-- Nav lateral -->
		<section class="full-box nav-lateral">
			<div class="full-box nav-lateral-bg show-nav-lateral"></div>
			<div class="full-box nav-lateral-content">
				<figure class="full-box nav-lateral-avatar">
					<i class="far fa-times-circle show-nav-lateral"></i>
					<img src="img/logo.jpg" class="img-fluid" alt="Avatar">
					<figcaption class="roboto-medium text-center">
					<p class="font-italic">{{Session::get('usuario')}} - 
                  	{{Session::get('rol')}}</p>
					</figcaption>
				</figure>
				<div class="full-box nav-lateral-bar"></div>
				<nav class="full-box nav-lateral-menu">
					<ul>

          <br>

						<li>
							<a href="#" class="nav-btn-submenu"><p class="font-italic"><i class="fas fa-id-card-alt fa-fw"></i> &nbsp; Solicitudes <i class="fas fa-chevron-down"></i></p></a>
							<ul>
								<li>
								<p class="font-italic"><a href="solicitudsala"><i class="fas fa-circle fa-fw"></i> &nbsp; Solicitud Sala</a></p>
								</li>
							</ul>
						</li>

						<li>
							<a href="#" class="nav-btn-submenu"><p class="font-italic"><i class="fas fa-book-open fa-fw"></i> &nbsp; Historial <i class="fas fa-chevron-down"></i></p></a>
							<ul>
								<li>
								<p class="font-italic"><a href="solicitudes"><i class="fas fa-circle fa-fw"></i> &nbsp; Historial Solicitudes</a></p>
								</li>
							</ul>
						</li>

						<!-- <li>
						<p class="font-italic"><a href="#"><i class="fas fa-cog fa-fw"></i> &nbsp; Configuración</a></p>
							<ul>
								
							</ul>
						</li> -->

						<!--<li>
							<a href="#" class="nav-btn-submenu"><p class="font-italic"><i class="fas fa-school fa-fw"></i> &nbsp; Salas <i class="fas fa-chevron-down"></i></p></a>
							<ul>
								<li>
								<p class="font-italic"><a href="saladocente"><i class="fas fa-circle fa-fw"></i> &nbsp; Administrar Salas</a></p>
								</li>
								 <li>
								<p class="font-italic"><a href="recurso"><i class="fas fa-circle fa-fw"></i> &nbsp; Administrar Recursos</a></p>
								</li> -->
								<!-- <li>
									<a href="client-search.html"><i class="fas fa-search fa-fw"></i> &nbsp; Buscar cliente</a>
								</li>
							</ul>
						</li> -->
					</ul>
				</nav>
			</div>
		</section>

		<!-- Page content -->
		<section class="full-box page-content">
			<nav class="full-box navbar-info">
				<a href="#" class="float-left show-nav-lateral">
					<i class="fas fa-exchange-alt"></i>
				</a>
				<a href="#">
					<i class="fas fa-user-cog"></i>
				</a>
				<a href="#" class="btn-exit-system">
					<i class="fas fa-power-off"></i>
				</a>
			</nav>

			<!-- Page header -->
			
			<!-- Content -->
			 @yield('contenido')
			

		</section>
	</main>
	
	 
	<!--=============================================
	=            Include JavaScript files           =
	==============================================-->

	@stack('scripts')
	<!-- jQuery V3.4.1 -->
	<script src="Plantilla/js/jquery-3.4.1.min.js" ></script>

	<!-- popper -->
	<script src="Plantilla/js/popper.min.js" ></script>
	

	<!-- Bootstrap V4.3 -->
	<script src="Plantilla/js/bootstrap.min.js" ></script>

	<!-- jQuery Custom Content Scroller V3.1.5 -->
	<script src="Plantilla/js/jquery.mCustomScrollbar.concat.min.js" ></script>

	<!-- Bootstrap Material Design V4.0 -->
	<script src="Plantilla/js/bootstrap-material-design.min.js" ></script>
	<script>$(document).ready(function() { $('body').bootstrapMaterialDesign(); });</script>

	<script src="Plantilla/js/main.js" ></script>
</body>
</html>