document.addEventListener("DOMContentLoaded", function() {
	var navLinks = document.querySelectorAll(".navbar-nav .nav-link");
    var currentURL = window.location.href;

    navLinks.forEach(function(navLink) {
      if (currentURL.includes(navLink.getAttribute("href"))) {
       	navLink.classList.add("active");
       	navLink.classList.add("link-active");
      }
    });
    
    // botón cerrar sesión
    var logoutButton = document.getElementById("btnCerrarSesion");
    var confirmLogoutModal = new bootstrap.Modal(document.getElementById("confirmLogoutModal"));

    logoutButton.addEventListener("click", function() {
    	 confirmLogoutModal.show();
    });
});
