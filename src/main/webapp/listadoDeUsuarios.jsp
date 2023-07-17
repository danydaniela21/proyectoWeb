<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.Usuario" %>
<%@ page import="model.Administrativo" %>
<%@ page import="model.Cliente" %>
<%@ page import="model.Profesional" %>
<%@ page import="java.util.List" %>
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
			<div class="titulo-usuarios">
				<h4 class="titulo-form">Listado de Usuarios</h4>
				<a class="btn btn-dark btn-agregar-usuario" href="/ProyectoWeb/crearUsuario.jsp">Agregar Usuario</a>
			</div>
			
	        <form id="checkboxForm">
	        	<h6 class="my-4">Selecciona los tipos de usuarios a mostrar:</h6>
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
	        <% List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios"); %>
	        <% List<Administrativo> administrativo = (List<Administrativo>) request.getAttribute("usuarios"); %>
	        <table class="table table-bordered my-4 caption-top" id="tblAdministrativo">
	        	<caption>Administradores</caption>
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
	                <% for (Usuario usuario : usuarios) { %>
	                	<% if ("Administrativo".equals(usuario.getTipo())) { %>
	                	<tr>
	                        <td><%= usuario.getNombre() %></td>
	                        <td><%= usuario.getFechaNacimiento() %></td>
	                        <td><%= usuario.getRut() %></td>
	                        <td><%= ((Administrativo) usuario).getArea() %></td>
	                        <td><%= ((Administrativo) usuario).getExperiencia() %></td>
	                    </tr>
	                	<%} else { %>
	                	<tr>
			                <td colspan="10" class="text-center">No hay administrativos</td>
			            </tr>
			           <% } %>
                   <% } %>
	            </tbody>
	        </table>
	        
	        <table class="table table-bordered my-4 caption-top" id="tblCliente">
	        	<caption>Clientes</caption>
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
	                <% for (Usuario usuario : usuarios) { %>
	                	<% if ("Cliente".equals(usuario.getTipo())) { %>
	                	<tr>
	                        <td><%= usuario.getNombre() %></td>
	                        <td><%= usuario.getFechaNacimiento() %></td>
	                        <td><%= usuario.getRut() %></td>
	                        <td><%= ((Cliente) usuario).getTelefono() %></td>
	                        <td><%= ((Cliente) usuario).getAfp() %></td>
	                        <td><%= ((Cliente) usuario).getSistemaSalud() %></td>
	                        <td><%= ((Cliente) usuario).getDireccion() %></td>
	                        <td><%= ((Cliente) usuario).getComuna() %></td>
	                        <td><%= ((Cliente) usuario).getEdad() %></td>
	                    </tr>
	                	<%} else { %>
	                	<tr>
			                <td colspan="10" class="text-center">No hay clientes</td>
			            </tr>
			           <% } %>
                   <% } %>
	            </tbody>
	        </table>
	        
	        <table class="table table-bordered my-4 caption-top" id="tblProfesional">
	        	<caption>Profesionales</caption>
	            <thead>
	                <tr>
	                    <th>Nombre</th>
	                    <th>Email</th>
	                    <th>RUT</th>
	                    <th>Título</th>
	                    <th>Fecha de ingreso</th>
	                </tr>
	            </thead>
	            <tbody>
	                <% for (Usuario usuario : usuarios) { %>
	                	<% if ("Profesional".equals(usuario.getTipo())) { %>
	                	<tr>
	                        <td><%= usuario.getNombre() %></td>
	                        <td><%= usuario.getFechaNacimiento() %></td>
	                        <td><%= usuario.getRut() %></td>
	                        <td><%= ((Profesional) usuario).getTitulo() %></td>
	                        <td><%= ((Profesional) usuario).getFechaIngreso() %></td>
	                    </tr>
	                	<%} else { %>
	                	<tr>
			                <td colspan="10" class="text-center">No hay profesionales</td>
			            </tr>
			           <% } %>
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