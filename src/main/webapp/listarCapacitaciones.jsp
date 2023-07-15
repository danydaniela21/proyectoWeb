<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Capacitacion" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Capacitaciones</title>
	<link rel="stylesheet" href="css/style.css">
	<!-- CSS de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<% if (session.getAttribute("usuario") == null) { %>
        <% response.sendRedirect("Login"); %>
    <% } else { %>
		<%@ include file="menu.jsp" %>
		<section class="container main-forms">
			<h4 class="titulo-form">Listado de Capacitaciones</h4>
			<a class="btn btn-dark btn-agregar-capacitacion" href="/ProyectoWeb/CrearCapacitacion">Agregar Capacitación</a>
	        <table class="table table-striped table-hover">
	            <thead>
	                <tr>
	                	<th>ID</th>
	                    <th>Nombre</th>
	                    <th>Detalle</th>
	                </tr>
	            </thead>
	            <tbody>
		            <% List<Capacitacion> capacitaciones = (List<Capacitacion>) request.getAttribute("capacitaciones"); %>
	                <% for (Capacitacion capacitacion : capacitaciones) { %>
		                <tr>
		                	<td><%= capacitacion.getId() %></td>
	                        <td><%= capacitacion.getNombre() %></td>
	                        <td><%= capacitacion.getDetalle() %></td>
	                    </tr>
	                   <% } %>
	            </tbody>
	        </table>
		</section>
		<%@ include file="footer.jsp" %>
	<%} %>
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/index.js"></script>
</body>
</html>