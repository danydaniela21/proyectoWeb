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
	<%@ include file="menu.jsp" %>
	<main class="container main-forms">
        <h4 class="titulo-form">Crear Usuario</h4>
        <form action="CrearCapacitacion" method="post">
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
            
            <div class="form-tipo-administrativo formCrearUsuario" id="formAdministrativo" style="display: none;">
	            <div class="form-group form-control-personalizado">
	                <input type="text" id="nombreAdmin" name="nombre" class="form-control input-personalizado" placeholder="Nombre:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="date" id="fechaAdmin" name="fecha" class="form-control input-personalizado" placeholder="Fecha:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="text" id="rutUsuarioAdmin" name="rutUsuario" class="form-control input-personalizado" placeholder="RUT:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="text" id="area" name="area" class="form-control input-personalizado" placeholder="Área:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="text" id="experiencia" name="experiencia" class="form-control input-personalizado" placeholder="Experiencia:">
	            </div>
            </div>
            
            <div class="form-tipo-cliente formCrearUsuario" id="formCliente" style="display: none;">
            	<div class="form-group form-control-personalizado">
	                <input type="text" id="nombreCliente" name="nombre" class="form-control input-personalizado" placeholder="Nombre:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="date" id="fechaCliente" name="fecha" class="form-control input-personalizado" placeholder="Fecha:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="text" id="rutUsuarioCliente" name="rutUsuario" class="form-control input-personalizado" placeholder="RUT:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="text" id="telefono" name="telefono" class="form-control input-personalizado" placeholder="Teléfono: 988888888">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="text" id="afp" name="afp" class="form-control input-personalizado" placeholder="Afp:">
	            </div>
	            <div class="form-group">
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
			     <div class="form-group form-control-personalizado">
	                <input type="text" id="direccion" name="direccion" class="form-control input-personalizado" placeholder="Dirección:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="text" id="comuna" name="comuna" class="form-control input-personalizado" placeholder="Comuna:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="number" id="edad" name="edad" class="form-control input-personalizado" placeholder="Edad:">
	            </div>
            </div>
            
            <div class="form-tipo-profesional formCrearUsuario" id="formProfesional" style="display: none;">
            	<div class="form-group form-control-personalizado">
	                <input type="text" id="nombrePro" name="nombre" class="form-control input-personalizado" placeholder="Nombre:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="date" id="fechaPro" name="fecha" class="form-control input-personalizado" placeholder="Fecha:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="text" id="rutUsuarioPro" name="rutUsuario" class="form-control input-personalizado" placeholder="RUT:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="text" id="titulo" name="titulo" class="form-control input-personalizado" placeholder="Título:">
	            </div>
	            <div class="form-group form-control-personalizado">
	                <input type="date" id="fechaIngreso" name="fechaIngreso" class="form-control input-personalizado" placeholder="Fecha de ingreso:">
	            </div>
            </div>
            
            <button type="submit" class="btn btn-dark btn-submit-personalizado">Crear</button>
        </form>
	</main>
	<%@ include file="footer.jsp" %>
	
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/index.js"></script>
    <script src="js/mostrarFormularios.js"></script>
</body>
</html>