<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Capacitaciones</title>
	<link rel="stylesheet" href="css/style.css">
	<!-- CSS de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<header class="container-fluid">
		<nav class="navbar navbar-expand-lg bg-light">
		  <div class="container">
		    <a class="navbar-brand" href="/ProyectoWeb/Inicio">
		    	<img alt="APR" src="img/logo-apr.png" class="img-logo">
		    </a>
		    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
		      <span class="navbar-toggler-icon"></span>
		    </button>
		    <div class="collapse navbar-collapse" id="navbarNav">
		      <ul class="navbar-nav">
		        <li class="nav-item">
		          <a class="nav-link" aria-current="page" href="/ProyectoWeb/Inicio">Inicio</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="/ProyectoWeb/Contacto">Contacto</a>
		        </li>
		        <li class="nav-item">
		          <a class="nav-link" href="/ProyectoWeb/CrearCapacitacion">CrearCapacitaciones</a>
		        </li>
		      </ul>
		    </div>
		  </div>
		</nav>
	</header>
	<section>
		<div class="container">
	        <h3>Listado de Capacitaciones</h3>
	
	        <table class="table table-striped table-hover">
	            <thead>
	                <tr>
	                    <th>Nombre</th>
	                    <th>Descripción</th>
	                    <th>Fecha</th>
	                    <th>Hora</th>
	                </tr>
	            </thead>
	            <tbody>
	                <tr>
                        <td>${nombre}</td>
                        <td>${descripcion}</td>
                        <td>${fecha}</td>
                        <td>${hora}</td>
                    </tr>
                    <tr>
                        <td>test</td>
                        <td>descripcion de prueba</td>
                        <td>2023-07-10</td>
                        <td>12:30</td>
                    </tr>
                    <tr>
                        <td>test 2</td>
                        <td>descripcion de prueba 2</td>
                        <td>2023-07-10</td>
                        <td>12:30</td>
                    </tr>
	            </tbody>
	        </table>
	    </div>
	    
	</section>
	
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>