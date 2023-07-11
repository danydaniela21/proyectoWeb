<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Contacto</title>
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
		<h3>Formulario de Contacto</h3>
        <form action='Contacto' method='post' id="contactForm" onsubmit="mostrarModal()">
        	<div class="form-group">
                <label for="nombre">Nombre:</label>
                <input type="text" class="form-control" id="nombre" name="nombre" required>
            </div>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="consulta">Consulta:</label>
                <textarea class="form-control" id="consulta" name="consulta" rows="5" required></textarea>
            </div>
            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
	</main>
	
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>