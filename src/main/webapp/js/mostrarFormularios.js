document.addEventListener("DOMContentLoaded", function () {
  const radioButtons = document.querySelectorAll('input[type="radio"]');
  const formCrearUsuario = document.querySelectorAll(".formCrearUsuario");

  function mostrarCampo() {
    formCrearUsuario.forEach(formulario => formulario.style.display = "none");

    if (radioButtons[0].checked) {
      	document.getElementById("formAdministrativo").style.display = "block";
      	document.getElementById("formCliente").style.display = "none";
      	document.getElementById("formProfesional").style.display = "none";
      	console.log("admin");
    } else if (radioButtons[1].checked) {
		document.getElementById("formAdministrativo").style.display = "none";
      	document.getElementById("formCliente").style.display = "block";
      	document.getElementById("formProfesional").style.display = "none";
      	console.log("cliente");
    } else if (radioButtons[2].checked) {
		document.getElementById("formAdministrativo").style.display = "none";
		document.getElementById("formCliente").style.display = "none";
      	document.getElementById("formProfesional").style.display = "block";
      	console.log("profesional");
    }
  }

  // Mostrar el campo inicialmente
  mostrarCampo();

  // Escuchar el evento change en los radio buttons
  radioButtons.forEach(function (radioButton) {
    radioButton.addEventListener("change", mostrarCampo);
  });
});
