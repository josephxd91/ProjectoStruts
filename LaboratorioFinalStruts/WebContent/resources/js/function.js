function fnDeleteClient(id) {
	console.log(id);
	if (id < 0) {
		$('#modal-8').modal('hide');
		$('.modal-backdrop').hide();
		return;
	}
	$("#txtCodCliente").val(id);
}

function fnConfirmDelete() {

	var id = $("#txtCodCliente").val();
	
	if (id < 0) {
		$('#modal-8').modal('hide');
		$('.modal-backdrop').hide();
		return;
	}
	
	console.log("eliminando al cliente  2 ==> " + id);
	$.post("deleteConfirmClient", {
		codigo : id
	}, function(data) {
		$("#body_content_change").html(data);
	});
	$("#txtCodCliente").val(0);

	$('#modal-8').modal('hide');
	$('.modal-backdrop').hide();
	// $("#modal-backdrop.fade.show").hide();

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