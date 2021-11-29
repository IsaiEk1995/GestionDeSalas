<!DOCTYPE html>
<html>
<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>@yield('titulo')</title>

<!-- Favicons -->
  <link href="img/logoutc.png" rel="icon">
  <link href="img/logoutc.png" rel="logoutc.png">

   {{--TOKEN PARA CAMBIOS--}}
    <meta name="token" id="token" value="{{ csrf_token() }}">
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="adminlte/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
  <!-- Tempusdominus Bbootstrap 4 -->
  <link rel="stylesheet" href="adminlte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
  <!-- iCheck -->
  <link rel="stylesheet" href="adminlte/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
  <!-- JQVMap -->
  <link rel="stylesheet" href="adminlte/plugins/jqvmap/jqvmap.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="adminlte/dist/css/adminlte.min.css">
  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="adminlte/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
  <!-- Daterange picker -->
  <link rel="stylesheet" href="adminlte/plugins/daterangepicker/daterangepicker.css">
  <!-- summernote -->
  <link rel="stylesheet" href="adminlte/plugins/summernote/summernote-bs4.css">

  <!--font awesome con CDN-->  
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.8.2/css/all.css" integrity="sha384-oS3vJWv+0UjzBfQzYUhtDYW+Pj2yciDJxpsK1OYPAYjqT085Qq/1cq5FLXAZQ7Ay" crossorigin="anonymous">  

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

  <!-- Para Paginado -->
<!-- <link href="https://unpkg.com/vanilla-datatables@latest/dist/vanilla-dataTables.min.css" rel="stylesheet" type="text/css">
<script src="https://unpkg.com/vanilla-datatables@latest/dist/vanilla-dataTables.min.js" type="text/javascript"></script> -->
<link href="DataTables/dist/vanilla-dataTables.min.css" rel="stylesheet" type="text/css">
<script src="DataTables/dist/vanilla-dataTables.min.js" type="text/javascript"></script>

<!-- <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet"> -->



</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Navbar -->
  <nav class="main-header navbar navbar-expand navbar-white navbar-light">
    <!-- Left navbar links -->
    <ul class="navbar-nav">
      <li class="nav-item">
        <a class="nav-link" data-widget="pushmenu" href="#" role="button"><i class="fas fa-bars"></i></a>
      </li>
    </ul>

   <!-- Right navbar links -->
   <ul class="navbar-nav ml-auto">
 <!-- User Account Menu -->
 <li class="dropdown user user-menu">
            <!-- Menu Toggle Button -->
            <a href="#" data-toggle="dropdown">
              <!-- The user image in the navbar-->
              <img src="adminlte/dist/img/user8.jpg" class="user-image" alt="User Image">
              <!-- hidden-xs hides the username on small devices so only the image appears. -->
            </a>
            <ul class="dropdown-menu">
              <!-- The user image in the menu -->
              <li class="user-header">
                <img src="adminlte/dist/img/user8.jpg" class="rounded-circle" alt="User Image">

                <p class="font-italic">
                  {{Session::get('usuario')}} - 
                  {{Session::get('rol')}}
                </p>
              </li>
              <!-- Menu Footer-->
              <li class="user-footer">
                <div class="pull-center">
                <center><a href="{{url('/')}}" class="btn btn-outline-info btn-flat">Salir</a></center>
                </div>
              </li>
            </ul>
          </li>
    </ul>
  </nav>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <aside class="main-sidebar sidebar-dark-primary elevation-4">
    <!-- Brand Logo -->
    <a href="#" class="brand-link">
      <img src="adminlte/dist/img/UTC.jpg" alt="AdminLTE Logo" class="brand-image img-circle elevation-3"
           style="opacity: .8">
      <span class="brand-text font-italic">Gestión De Salas</span>
    </a>

    <!-- Sidebar -->
    <div class="sidebar">
    

      <!-- Sidebar Menu -->
      <nav class="mt-2">
        <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
          <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

         <!-- Menu de navegacion-->             
       <center><li class="nav-header"><p class="font-italic">APARATADOS</p></li></center> 

        <li class="nav-item">
              <a href="escritorio" class="nav-link">
              <i class="nav-icon fas fa-home"></i>
              <p class="font-italic">
                Escritorio
              </p>
            </a>
        </li>
          
        <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-school"></i>
              <p class="font-italic">
                Salas
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="sala" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p class="font-italic">Administrar Salas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="recurso" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p class="font-italic">Administrar Recurso</p>
                </a>
              </li>
            </ul>
        </li> 

          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-id-card-alt "></i>
              <p class="font-italic">
                Solicitudes
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="solicitudsa" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p class="font-italic">Solicitudes Salas</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="solicitudre" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p class="font-italic">Solicitudes Pendientes</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="solicitudre" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p class="font-italic">Solicitudes Canceladas</p>
                </a>
              </li>
            </ul>
          </li>  
          
          <li class="nav-item">
            <a href="#" class="nav-link">
              <i class="nav-icon fas fa-cog"></i>
              <p class="font-italic">
                Configuraciones
                <i class="right fas fa-angle-left"></i>
              </p>
            </a>
            <ul class="nav nav-treeview">
              <li class="nav-item">
                <a href="horas" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p class="font-italic">Horarios</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="administradores" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p class="font-italic">Usuarios</p>
                </a>
              </li>
              <li class="nav-item">
                <a href="galeria" class="nav-link">
                  <i class="far fa-circle nav-icon"></i>
                  <p class="font-italic">Galería</p>
                </a>
              </li>
            </ul>
          </li>   

          <!--<li class="nav-item">
            <a href="administradores" class="nav-link">
              <i class="nav-icon fas fa-user"></i>
              <p class="font-italic">
                Administradores
              </p>
            </a>
          </li>-->

        </ul>
      </nav>
      <!-- /.sidebar-menu -->
      
    </div>
    <!-- /.sidebar -->
  </aside>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header"></div>
    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        @yield('contenido')
       
      </div>
    </section>       
  </div>
  <!-- /.content-wrapper -->
  <footer class="main-footer">
    <strong>Copyright &copy; 2020-2021 <a href="http://adminlte.io">Gestión De Salas</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
      <b>Version</b> 3.0.5
    </div>
  </footer>

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->
</body>
 @stack('scripts')

 <!-- jQuery -->
<script src="adminlte/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="adminlte/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
  $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- ChartJS -->
<script src="adminlte/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="adminlte/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<!-- <script src="adminlte/plugins/jqvmap/jquery.vmap.min.js"></script> -->
<!-- <script src="adminlte/plugins/jqvmap/maps/jquery.vmap.usa.js"></script> -->
<!-- jQuery Knob Chart -->
<script src="adminlte/plugins/jquery-knob/jquery.knob.min.js"></script>
<!-- daterangepicker -->
<script src="adminlte/plugins/moment/moment.min.js"></script>
<script src="adminlte/plugins/daterangepicker/daterangepicker.js"></script>
<!-- Tempusdominus Bootstrap 4 -->
<script src="adminlte/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<script src="adminlte/plugins/summernote/summernote-bs4.min.js"></script>
<!-- overlayScrollbars -->
<script src="adminlte/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="adminlte/dist/js/adminlte.js"></script>
<!-- AdminLTE dashboard demo (This is only for demo purposes) -->
<!-- <script src="adminlte/dist/js/pages/dashboard.js"></script> -->
<!-- AdminLTE for demo purposes -->
<script src="adminlte/dist/js/demo.js"></script>


</html>
