function fnDeleteClient(id) {
	// console.log(id);
	if (id < 0) {
		$('#modal-8').modal('hide');
		$('.modal-backdrop').hide();
		return;
	}
	$("#txtCodCliente").val(id);
}

function fnConfirmDelete() {

	if ($("#txtCodCliente").val < 0) {
		$('#modal-8').modal('hide');
		$('.modal-backdrop').hide();
		return;
	}

	$.post("deleteConfirmClient", {
		codigo : $("#txtCodCliente").val()
	}, function(data) {
		$("#body_content_change").html(data);
	});
	$("#txtCodCliente").val(0);

	$('#modal-8').modal('hide');
	$('.modal-backdrop').hide();
	// $("#modal-backdrop.fade.show").hide();

}

function fnGetOneClient(id) {
	$.post("getReturnClient", {
		codigo : id
	}, function(data) {
		var obJSON = JSON.parse(JSON.stringify(data));
		console.log(obJSON.cliente.codigo);
		$("#txtCodigo").val(obJSON.cliente.codigo);
		$("#txtNombre").val(obJSON.cliente.nombre);
		$("#txtApellido").val(obJSON.cliente.apellido);
		$("#cboGenero").val(obJSON.cliente.genero);
		$("#txtProfesion").val(obJSON.cliente.profesion);
		$("#txtCelular").val(obJSON.cliente.numeroMovil);
		$('#ts2').prop('checked', obJSON.cliente.publicidad);
		$("#txtCorreo").val(obJSON.cliente.correo);

	});

}

function clearFormClient() {
	$("#txtCodigo").val(0);
	$("#txtNombre").val("");
	$("#txtApellido").val("");
	$("#txtProfesion").val("");
	$("#txtCelular").val("");
	$('#ts2').prop('checked', false);
	$("#txtCorreo").val("");
	$("#cboGenero").val("-1");
}

function fnFormNewClient() {
	clearFormClient();
	$('#modal-4').modal('show');

}
function fnDesconection(){
	console.log("desconexion");
	window.location="logout";
}


var contador = 0;
// 300 5 minutos
var time_seconds = 300 ;
$(document).ready(
		function() {
			contador = 0;
			var d = null;
//			d.setSeconds(time_seconds);
			var idleInterval = setInterval(timerIncrement, 1000); 
			$("#lblTime").html("00:05:00");
			function timerIncrement() {
				contador++;
				d = new Date(null);
				d.setSeconds(parseInt(time_seconds) - parseInt(contador));
				$("#lblTime").html(d.toISOString().substr(11, 8));
				d = null;
				if (contador >= time_seconds) {
					doPreload();
				}

				if (contador > 3) {
					$("#modal-12").modal('show');
				}
			}

			// Eventos a controlar
			$(this).mousemove(function(e) {
				contador = 0;
				$("#modal-12").modal('hide');
			});

			$(this).keypress(function(e) {
				contador = 0;
				$("#modal-12").modal('hide');
			})

			$(this).keydown(function() {
				$("#modal-12").modal('hide');
				contador = 0;
			});

			function doPreload() {
				// alert("hola mundo");
				$("#modal-12").modal('show');
				console.log("hola");
				clearInterval(idleInterval);
				fnDesconection();

			}

		});
