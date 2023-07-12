<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Usuarios</title>
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
	        <h3>Listado de Usuarios</h3>
	
	        <table class="table table-striped table-hover">
	            <thead>
	                <tr>
	                    <th>Nombre</th>
	                    <th>Fecha de Nacimiento</th>
	                    <th>RUT</th>
	                </tr>
	            </thead>
	            <tbody>
                    <tr>
                        <td>test 1</td>
                        <td>1988-09-11</td>
                        <td>11111111-1</td>
                    </tr>
                    <tr>
                        <td>test 2</td>
                        <td>1992-12-14</td>
                        <td>22222222-2</td>
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