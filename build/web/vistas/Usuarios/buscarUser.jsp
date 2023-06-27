<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
    if (session.getAttribute("vendedor") != null) {
%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <title>Sistema Inventarios| Inicio</title>
        <!-- Tell the browser to be responsive to screen width -->
        <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport">
        <link rel="stylesheet" href="bower_components/bootstrap/dist/css/bootstrap.min.css">
        <!-- Font Awesome -->
        <link rel="stylesheet" href="bower_components/font-awesome/css/font-awesome.min.css">
        <!-- Ionicons -->
        <link rel="stylesheet" href="bower_components/Ionicons/css/ionicons.min.css">
        <!-- Theme style -->
        <link href="dist/css/AdminLTE.min.css" rel="stylesheet" type="text/css"/>

        <!-- AdminLTE Skins. We have chosen the skin-blue for this starter
              page. However, you can choose any other skin. Make sure you
              apply the skin class to the body tag so the changes take effect. -->
        <link rel="stylesheet" href="dist/css/skins/skin-blue.min.css">
        <link rel="stylesheet"
              href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">
    </head>

    <body class="hold-transition skin-blue sidebar-mini">
        <div class="wrapper">

            <!-- Main Header -->
            <header class="main-header">
                <a href="#" class="logo">
                    <!-- mini logo for sidebar mini 50x50 pixels -->
                    <span class="logo-mini"><b>A</b>Dr</span>
                    <!-- logo for regular state and mobile devices -->
                    <span class="logo-lg"><b>Sistema de Inventarios</b>"NeoSis"</span>
                </a>

                <!-- Header Navbar -->
                <nav class="navbar navbar-static-top" role="navigation">
                    <!-- Sidebar toggle button-->
                    <a href="#" class="sidebar-toggle" data-toggle="push-menu" role="button">
                        <span class="sr-only">Toggle navigation</span>
                    </a>
                    <!-- Navbar Right Menu -->
                    <div class="navbar-custom-menu">
                        <ul class="nav navbar-nav">
                            <!-- User Account Menu -->
                            <li class="dropdown user user-menu">
                                <!-- Menu Toggle Button -->
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                                    <!-- The user image in the navbar-->
                                    <img src="dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                                    <!-- hidden-xs hides the username on small devices so only the image appears. -->
                                    <span class="hidden-xs">${vendedor.nombreUsuario}</span>
                                </a>
                                <ul class="dropdown-menu">
                                    <!-- The user image in the menu -->
                                    <li class="user-header">
                                        <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                                        <p>                    
                                            Bienvenido - ${vendedor.nombreUsuario}
                                            <small>Usted es, ${vendedor.cargo.nombreCargo} </small>
                                        </p>
                                    </li>
                                    <!-- Menu Footer-->
                                    <li class="user-footer">
                                        <div class="pull-right">
                                            <a href="ControladorUsuario?accion=cerrar" class="btn btn-default btn-flat">Cerrar Session</a>
                                        </div>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </nav>
            </header>
            <!-- Left side column. contains the logo and sidebar -->
            <aside class="main-sidebar">

                <!-- sidebar: style can be found in sidebar.less -->
                <section class="sidebar">

                    <!-- Sidebar user panel (optional) -->
                    <div class="user-panel">
                        <div class="pull-left image">
                            <img src="dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">
                        </div>
                        <div class="pull-left info">
                            <p>Bienvenido, ${vendedor.nombreUsuario}</p>
                            <!-- Status -->
                            <a href="#"><i class="fa fa-circle text-success"></i> Online</a>
                        </div>
                    </div>

                    <!-- search form (Optional) -->

                    <!-- /.search form -->

                    <!-- Sidebar Menu -->
                    <ul class="sidebar-menu" data-widget="tree">
                        <li class="header">INICIO</li>
                        <!-- Optionally, you can add icons to the links -->
                        <li class="active">
                            <a href="#"><i class="fa fa-link"></i> <span>Panel Usuario</span></a></li>
                        <ul class="treeview">
                           <li><a href="ControladorUsuario?accion=listarUsuarios"><i class="fa fa-address-card"></i>Usuarios</a></li>
                                <li><a href="ControladorProducto?accion=listarProductos"><i class="fa fa-address-card"></i>Productos</a></li>
                                <li><a href="ControladorEmpleado?accion=listarEmpleados"><i class="fa fa-address-card"></i>Empleado</a></li>
                                <li><a href="ControladorProveedor?accion=listarProveedor"><i class="fa fa-address-card"></i>Provedores</a></li>
                                <li><a href="ControladorCliente?accion=listarClientes"><i class="fa fa-address-card"></i>Clientes</a></li>
                                <li><a href="ControladorVenta?accion=Ventas"><i class="fa fa-address-card"></i>Ventas</a></li>
                                <li><a href="ControladorCompras?accion=listarCompras"><i class="fa fa-address-card"></i>Compras</a></li>
                        </ul>
                        <!-- /.sidebar-menu -->
                </section>
                <!-- /.sidebar -->
            </aside>

            <!-- Content Wrapper. Contains page content -->
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <!-- pagina inicio cristech-->
                <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
                </head>
                <body>
                    <div class="container">
                        <h1>Buscar Componente por Código</h1>
                        <form action="ControlerComp" method="POST">
                            <div class="form-group">
                                <label for="codigo">Código del Componente Usuario:</label>
                                <input type="text" name="codigo2" id="codigo2" class="form-control" required>
                            </div>
                            <button type="submit" class="btn btn-primary" name="accion" value="Buscar2">Buscar</button>
                        </form>
                    </div>

                    <div class="container">
                        <h1>Resultado de la búsqueda</h1>
                        <table class="table table-bordered" border="1" bordercolor="red">
                            <tr>
                                <th>Código</th>
                                <th>Función</th>
                                <th>Familia</th>
                                <th>Descripción</th>
                                <th>Número de Pines</th>
                                <th>Tipo de Paquete</th>
                                <th>Tensión</th>
                                <th>Imagen</th>
                            </tr>
                            <tr>
                                <c:if test="${componente != null}">
                                    <td>${componente.codigo_ttl}</td>
                                    <td>${componente.funcion}</td>
                                    <td>${componente.familia}</td>
                                    <td>${componente.descripcion}</td>
                                    <td>${componente.num_pines}</td>
                                    <td>${componente.tipo_paquete}</td>
                                    <td>${componente.tension}</td>
                                    <td><img src="${componente.imagen}" width="200" height="200"></td>
                                    </c:if>
                            </tr>
                        </table>
                    </div>

                    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
                    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
                </body>






                <!-- pagina fin cristech-->

                <!-- /.content -->
            </div>
            <!-- /.content-wrapper -->

            <!-- Main Footer -->
            <footer class="main-footer">
                <!-- To the right -->
                <div class="pull-right hidden-xs">

                </div>
                <!-- Default to the left -->
                <strong>Copyright &copy; 2023 EISPDM <a href="#">CrisTech</a>.</strong> Todos los derechos reservados.
            </footer>

            <div class="control-sidebar-bg"></div>
        </div>
        <!-- ./wrapper -->

        <!-- REQUIRED JS SCRIPTS -->

        <!-- jQuery 3 -->
        <script src="bower_components/jquery/dist/jquery.min.js"></script>
        <!-- Bootstrap 3.3.7 -->
        <script src="bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
        <!-- AdminLTE App -->
        <script src="dist/js/adminlte.min.js"></script>

        <!-- Optionally, you can add Slimscroll and FastClick plugins.
             Both of these plugins are recommended to enhance the
             user experience. -->
    </body>
</html>
<%
    }
%>
