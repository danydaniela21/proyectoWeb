<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Login</title>
	<link rel="stylesheet" href="css/style.css">
    <!-- CSS de Bootstrap -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css">
</head>
<body>

	<% if (session.getAttribute("usuario") != null) { %>
        <% response.sendRedirect("Inicio"); %>
        
    <% } else { %>
	<section class="main-login">
		<div class="form-container-login">
			<h3>Ingrese a su cuenta</h3>
			<form action="Login" method="post" class="row g-3">
			  <div class="col-12">
			    <label for="exampleFormControlInput1" class="form-label">Usuario</label>
  				<input type="text" class="form-control" name="usuario">
			  </div>
			  <div class="col-12">
			    <label for="exampleFormControlInput1" class="form-label">Contraseña</label>
			    <input type="password" class="form-control" name="password">
			  </div>
			  <div class="d-grid gap-2 mt-5">
			    <button type="submit" class="btn btn-primary mb-3">Entrar</button>
			  </div>
			</form>
		</div>
		<div class="form-container-img">
			<img alt="logo" src="img/logo-apr.png" class="logo">
		</div>
	</section>
	<% } %>
	
	<!-- JS de Bootstrap -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="js/index.js"></script>
</body>
</html>