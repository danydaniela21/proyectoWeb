<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Crear Capacitación</title>
	<link rel="stylesheet" href="css/style.css">
    <!-- CSS de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<header class="container-fluid">
		<%@ include file="menu.jsp" %>
	</header>
	<main class="container">
        <h4 class="titulo-form">Crear Capacitación</h4>
        <form action="CrearCapacitacion" method="post">
            <div class="form-group form-control-personalizado">
                <input type="text" id="nombre" name="nombre" class="form-control input-personalizado" placeholder="Nombre:">
            </div>
            <div class="form-group form-control-personalizado">
                <textarea id="descripcion" name="descripcion" class="form-control input-personalizado" placeholder="Descripción:"></textarea>
            </div>
            <div class="form-group form-control-personalizado">
                <input type="date" id="fecha" name="fecha" class="form-control input-personalizado" placeholder="Fecha:">
            </div>
            <div class="form-group form-control-personalizado">
                <input type="time" id="hora" name="hora" class="form-control input-personalizado" placeholder="Hor:">
            </div>
            <button type="submit" class="btn btn-dark btn-submit-personalizado">Crear</button>
        </form>
	</main>
	<footer class="container-fluid">
		<p>Creado por el grupo 5</p>
	</footer>
	
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/index.js"></script>
</body>
</html>