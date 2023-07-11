<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Crear Capacitación</title>
	<link rel="stylesheet" href="css/style.css">
    <!-- CSS de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<header class="container-fluid">
		<nav class="navbar navbar-expand-lg bg-light">
		  <div class="container">
		    <a class="navbar-brand" href="#">
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
	<main class="container">
        <h1>Crear Capacitación</h1>
        <form action="CrearCapacitacion" method="post">
            <div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" id="nombre" name="nombre" class="form-control">
            </div>
            <div class="form-group">
                <label for="descripcion">Descripción:</label>
                <textarea id="descripcion" name="descripcion" class="form-control"></textarea>
            </div>
            <div class="form-group">
                <label for="fecha">Fecha:</label>
                <input type="date" id="fecha" name="fecha" class="form-control">
            </div>
            <div class="form-group">
                <label for="hora">Hora:</label>
                <input type="time" id="hora" name="hora" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">Crear</button>
        </form>
	</main>
	
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>