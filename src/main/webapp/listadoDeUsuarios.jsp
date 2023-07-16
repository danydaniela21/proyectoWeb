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
	<% if (session.getAttribute("usuario") == null) { %>
        <% response.sendRedirect("Login"); %>
    <% } else { %>
		<%@ include file="menu.jsp" %>
		<section class="container main-forms">
			<h4 class="titulo-form">Listado de Usuarios</h4>
			<a class="btn btn-dark btn-agregar-usuario" href="/ProyectoWeb/crearUsuario.jsp">Agregar Usuario</a>
			<h6 class="my-4">Selecciona los tipos de usuarios a mostrar:</h6>
	        <form id="checkboxForm">
	            <div class="form-check">
	                <input class="form-check-input" type="checkbox" value="administrativo" id="chkAdmin" checked>
	                <label class="form-check-label" for="chkAdmin">Administrativo</label>
	            </div>
	            <div class="form-check">
	                <input class="form-check-input" type="checkbox" value="cliente" id="chkCliente">
	                <label class="form-check-label" for="chkCliente">Cliente</label>
	            </div>
	            <div class="form-check">
	                <input class="form-check-input" type="checkbox" value="profesional" id="chkProfesional">
	                <label class="form-check-label" for="chkProfesional">Profesional</label>
	            </div>
	        </form>
	        
	        <table class="table table-bordered my-4" id="tblAdministrativo">
	            <thead>
	                <tr>
	                    <th>Nombre</th>
	                    <th>Fecha</th>
	                    <th>RUT</th>
	                    <th>Área</th>
	                    <th>Experiencia</th>
	                </tr>
	            </thead>
	            <tbody>
	                <!-- Datos de usuarios administrativos -->
	            </tbody>
	        </table>
	        
	        <table class="table table-bordered my-4" id="tblCliente">
	            <thead>
	                <tr>
	                    <th>Nombre</th>
	                    <th>Fecha</th>
	                    <th>RUT</th>
	                    <th>Teléfono</th>
	                    <th>Afp</th>
	                    <th>Sistema de salud</th>
	                    <th>Dirección</th>
	                    <th>Comuna</th>
	                    <th>Edad</th>
	                </tr>
	            </thead>
	            <tbody>
	                <!-- Datos de usuarios clientes -->
	            </tbody>
	        </table>
	        
	        <table class="table table-bordered my-4" id="tblProfesional">
	            <thead>
	                <tr>
	                    <th>Nombre</th>
	                    <th>Email</th>
	                    <th>RUT</th>
	                    <th>Título</th>
	                    <th>Fehca de ingreso</th>
	                </tr>
	            </thead>
	            <tbody>
	                <!-- Datos de usuarios profesionales -->
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