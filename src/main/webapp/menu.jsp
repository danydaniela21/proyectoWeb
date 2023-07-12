<nav class="navbar navbar-expand-lg bg-light">
 	<div class="container">
	    <a class="navbar-brand" href="/ProyectoWeb/Inicio">
	    	<img alt="APR" src="img/logo-apr.png" class="img-logo">
	    </a>
	    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
	      <span class="navbar-toggler-icon"></span>
	    </button>
	    <div class="collapse navbar-collapse justify-content-end" id="navbarNav">
	      	<ul class="navbar-nav">
	        	<li class="nav-item">
	          		<a class="nav-link" aria-current="page" href="/ProyectoWeb/inicio.jsp">Inicio</a>
	        	</li>
	        	<li class="nav-item">
	          		<a class="nav-link" href="/ProyectoWeb/contacto.jsp">Contacto</a>
	        	</li>
	        	<li class="nav-item">
	          		<a class="nav-link" href="/ProyectoWeb/crearCapacitacion.jsp">Crear Capacitaciones</a>
	        	</li>
	     	</ul>
	     	<hr class="separador-mobile">
	      	<div class="d-flex align-items-center btn-cerrar-sesion">
	    		<p>Hola ${usuario}</p>
	    		<a href="#" id="btnCerrarSesion" class="btn btn-dark">Cerrar sesión</a>
   			</div>
	    </div>
	</div>
</nav>

<!-- Modal cierre de sesión -->
<div class="modal fade" id="confirmLogoutModal" tabindex="-1" role="dialog" aria-labelledby="confirmLogoutModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="confirmLogoutModalLabel">Confirmar cierre de sesión</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <p>¿Estás seguro de que deseas cerrar sesión?</p>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Cancelar</button>
        <a id="logoutButton" href="CerrarSesion" class="btn btn-primary">Cerrar Sesión</a>
      </div>
    </div>
  </div>
</div>