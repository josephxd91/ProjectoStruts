function fnDeleteClient(id) {
	//console.log(id);
	if (id < 0) {
		$('#modal-8').modal('hide');
		$('.modal-backdrop').hide();
		return;
	}
	$("#txtCodCliente").val(id);
}

function fnConfirmDelete() {

	if ( $("#txtCodCliente").val < 0) {
		$('#modal-8').modal('hide');
		$('.modal-backdrop').hide();
		return;
	}
	
	$.post("deleteConfirmClient", {
		codigo :  $("#txtCodCliente").val()
	}, function(data) {
		$("#body_content_change").html(data);
	});
	$("#txtCodCliente").val(0);

	$('#modal-8').modal('hide');
	$('.modal-backdrop').hide();
	// $("#modal-backdrop.fade.show").hide();

}


function fnUpdateClient(id){
	console.log(id);
	$.post("getReturnClient",{codigo:id},function(data){
		
//		var obj = JSON.stringify(data);
		var obJSON = JSON.parse(JSON.stringify(data));
		
		console.log(obJSON.cliente.codigo );
		$("#txtCodigo").val(obJSON.cliente.codigo);
		$("#txtNombre").val(obJSON.cliente.nombre);
		$("#txtApellido").val(obJSON.cliente.apellido);
		//genero
		$("#txtProfesion").val(obJSON.cliente.profesion);
		$("#txtCelular").val(obJSON.cliente.numeroMovil);
		$('#ts2').prop('checked', obJSON.cliente.publicidad );
		$("#txtCorreo").val(obJSON.cliente.correo);
		
		
	});
	
}

     


function fnFormNewClient(){
	$("#txtCodigo").val(0);
	$('#modal-4').modal('show');
	
}














function fnLoadPageClientes() {

	// $.post("getListClientes",{},function(result){
	// $("#body_content_change").html("hola");
	// });

	// $("#body_content_change").load("getListClientes",function(data){
	// $("#body_content_change.content").html(data);
	// });

	// $.ajax({
	// type:"GET",
	// url:"getListClientes",
	// success: function(data){
	// $("#body_content_change").html("");
	// $("#body_content_change").html(data);
	// console.log("data===> " + data);
	// },
	// error:function(data){
	// $("#body_content_change").html("<html>Algo salio mal</html>");
	// }
	//		
	//		
	// });
	//	

}