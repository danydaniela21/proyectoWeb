<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	        <h4 class="titulo-form">Crear Usuario</h4>
	        <form action="CrearUsuario" method="post">
	        	<div class="form-group form-control-personalizado">
			        <label>Selecciona tipo de usuario:</label>
			        <div class="form-check">
			          	<input type="radio" class="form-check-input" name="tipo" value="administrativo" id="flexRadioDefault1" checked>
			          	<label class="form-check-label">Administrativo</label>
			        </div>
			        <div class="form-check">
			          	<input type="radio" class="form-check-input" name="tipo" value="cliente">
			          	<label class="form-check-label">Cliente</label>
			        </div>
			        <div class="form-check">
			          	<input type="radio" class="form-check-input" name="tipo" value="profesional">
			          	<label class="form-check-label">Profesional</label>
			        </div>
			    </div>
	            
	            <div class="form-tipo-administrativo formCrearUsuario" id="formAdministrativo">
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="nombreAdmin" name="nombre" class="form-control input-personalizado">
		                <label for="nombreAdmin">Nombre</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="date" id="fechaAdmin" name="fecha" class="form-control input-personalizado">
		                <label for="fechaAdmin">Fecha de nacimiento</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="rutUsuarioAdmin" name="rutUsuario" class="form-control input-personalizado">
		                <label for="rutUsuarioAdmin">RUT</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="area" name="area" class="form-control input-personalizado">
		                <label for="area">Área</label>
		            </div>
		            <div class="form-floating form-control-personalizado">
		                <input type="text" id="experiencia" name="experiencia" class="form-control input-personalizado">
		                <label for="experiencia">Experiencia</label>
		            </div>
	            </div>
	            
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
		                <input type="text" id="rutUsuarioCliente" name="rutUsuario" class="form-control input-personalizado">
		                <label for="rutUsuarioCliente">RUT</label>
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
				          	<input type="radio" class="form-check-input" name="fonasa" value="1">
				          	<label class="form-check-label">Fonasa</label>
				        </div>
				        <div class="form-check">
				          	<input type="radio" class="form-check-input" name="isapre" value="2">
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
		                <input type="text" id="rutUsuarioPro" name="rutUsuario" class="form-control input-personalizado">
		                <label for="rutUsuarioPro">RUT</label>
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
	            
	            <button type="submit" class="btn btn-dark btn-submit-personalizado">Crear</button>
	        </form>
		</main>
		<%@ include file="footer.jsp" %>
	<%} %>
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/index.js"></script>
</body>
</html>