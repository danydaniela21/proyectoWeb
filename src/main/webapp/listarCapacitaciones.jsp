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
		<%@ include file="menu.jsp" %>
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
	<footer class="container-fluid">
		<p>Creado por el grupo 5</p>
	</footer>
	
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/index.js"></script>
</body>
</html>