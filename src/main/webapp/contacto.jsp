<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
	<title>Contacto</title>
	<link rel="stylesheet" href="css/style.css">
    <!-- CSS de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>
	<%@ include file="menu.jsp" %>
	<main class="container main-forms">
		<h4 class="titulo-form">Formulario de Contacto</h4>
        <form action='Contacto' method='post' id="contactForm" onsubmit="mostrarModal()">
        	<div class="form-group form-control-personalizado">
                <input type="text" class="form-control input-personalizado" id="nombre" name="nombre" placeholder="Nombre*" required>
            </div>
            <div class="form-group form-control-personalizado">
                <input type="email" class="form-control input-personalizado" id="email" name="email" placeholder="Correo*" required>
            </div>
            <div class="form-group form-control-personalizado">
                <textarea class="form-control input-personalizado" id="consulta" name="consulta" rows="5" placeholder="Mensaje*" required></textarea>
            </div>
            <button type="submit" class="btn btn-dark btn-submit-personalizado">Enviar</button>
        </form>
	</main>
	<%@ include file="footer.jsp" %>
	
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/index.js"></script>
</body>
</html>