<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Usuario" %>
<%@ page import="model.Administrativo" %>
<%@ page import="model.Cliente" %>
<%@ page import="model.Profesional" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Crear Usuario</title>
	<link rel="stylesheet" href="css/style.css">
    <!-- CSS de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<% if (session.getAttribute("usuario") == null) { %>
        <% response.sendRedirect("Login"); %>
    <% } else { %>
		<%@ include file="menu.jsp" %>
		<main class="container main-forms">
	        <h4 class="titulo-form">Editar Usuario</h4>
	        <form action="ActualizarUsuario" method="post">
	        	<input type="hidden" name="formulario" value="actualizarUsuario">
	        	<% Usuario usuarioId = (Usuario) request.getAttribute("usuarioId"); %>
        		<% String tipo = (String) request.getAttribute("tipo"); %>
        		<input type="hidden" name="id" value="<%= usuarioId.getId() %>">
        		<input type="hidden" name="tipo" value="<%= usuarioId.getTipo() %>">
	            <% if ("Administrativo".equals(tipo)) { %>
	            <div class="form-tipo-administrativo formCrearUsuario" id="formAdministrativo">
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="nombreAdmin" name="nombre" class="form-control input-personalizado" value="<%= usuarioId.getNombre() %>">
		                <label for="nombreAdmin">Nombre</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="date" id="fechaAdmin" name="fecha" class="form-control input-personalizado" value="<%= usuarioId.getFechaNacimiento() %>">
		                <label for="fechaAdmin">Fecha de nacimiento</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="rutAdmin" name="rut" class="form-control input-personalizado" value="<%= usuarioId.getRut() %>">
		                <label for="rutAdmin">RUT</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="area" name="area" class="form-control input-personalizado" value="<%= ((Administrativo) usuarioId).getArea() %>">
		                <label for="area">Área</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="experiencia" name="experiencia" class="form-control input-personalizado" value="<%= ((Administrativo) usuarioId).getExperiencia() %>">
		                <label for="experiencia">Experiencia</label>
		            </div>
	            </div>
	            <% } %>
	            
	            <% if ("Cliente".equals(request.getAttribute("tipo"))) { %>
	            <div class="form-tipo-cliente formCrearUsuario" id="formCliente">
	            	<div class="form-floating form-control-personalizado">
		                <input type="text" id="nombreCliente" name="nombre" class="form-control input-personalizado">
		                <label for="nombreCliente">Nombre</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="date" id="fechaCliente" name="fecha" class="form-control input-personalizado">
		                <label for="fechaCliente">Fecha de nacimiento</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="rutCliente" name="rut" class="form-control input-personalizado">
		                <label for="rutCliente">RUT</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="telefono" name="telefono" class="form-control input-personalizado">
		                <label for="telefono">Teléfono</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="afp" name="afp" class="form-control input-personalizado">
		                <label for="afp">Afp</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
				        <label>Sistema de salud:</label>
				        <div class="form-check">
				          	<input type="radio" class="form-check-input" name="salud" value="1">
				          	<label class="form-check-label">Fonasa</label>
				        </div>
				        <div class="form-check">
				          	<input type="radio" class="form-check-input" name="salud" value="2">
				          	<label class="form-check-label">Isapre</label>
				        </div>
				     </div>
				     <div class="form-floating form-control-personalizado">
		                <input type="text" id="direccion" name="direccion" class="form-control input-personalizado">
		                <label for="direccion">Dirección</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="comuna" name="comuna" class="form-control input-personalizado">
		                <label for="comuna">Comuna</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="number" id="edad" name="edad" class="form-control input-personalizado">
		                <label for="edad">Edad</label>
		            </div>
	            </div>
	            <% } %>
	            
	            <% if ("Profesional".equals(request.getAttribute("tipo"))) { %>
	            <div class="form-tipo-profesional formCrearUsuario" id="formProfesional">
	            	<div class="form-floating form-control-personalizado">
		                <input type="text" id="nombrePro" name="nombre" class="form-control input-personalizado">
		                <label for="nombrePro">Nombre</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="date" id="fechaPro" name="fecha" class="form-control input-personalizado">
		                <label for="fechaPro">Fecha de nacimiento</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="rutPro" name="rut" class="form-control input-personalizado">
		                <label for="rutPro">RUT</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="titulo" name="titulo" class="form-control input-personalizado">
		                <label for="titulo">Título</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="date" id="fechaIngreso" name="fechaIngreso" class="form-control input-personalizado">
		                <label for="fechaIngreso">Fecha de ingreso</label>
		            </div>
	            </div>
	            <% } %>
	            
	            <button type="submit" class="btn btn-dark btn-submit-personalizado">Actualizar</button>
	        </form>
		</main>
		<%@ include file="footer.jsp" %>
	<%} %>
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/index.js"></script>
</body>
</html>