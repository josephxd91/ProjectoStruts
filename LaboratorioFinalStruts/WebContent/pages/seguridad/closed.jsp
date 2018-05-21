<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="resources/css/simple-line-icons.css">
<link rel="stylesheet" href="resources/css/fontawesome-all.min.css">
<link rel="stylesheet" href="resources/css/styles.css">


</head>
<body>

	<div class="modal fade" id="modal-9" tabindex="-1" role="dialog"
		aria-labelledby="exampleModalLabel" aria-hidden="true">
		<div class="modal-dialog" role="document">
			<div class="modal-content bg-primary">
				<div class="modal-header border-0">
					<h5 class="modal-title text-white">Aviso</h5>
					<button type="button" class="close" data-dismiss="modal"
						aria-label="Close">
<!-- 						<span aria-hidden="false">&times;</span> -->
					</button>
				</div>

				<div class="modal-body text-white p-5">Solo se pude ingresar al sistema entre las 09:00 y 18:00 horas .</div>

				<div class="modal-footer border-0">
					<button type="button" onclick="fnPageLogin()" class="btn btn-primary">Continuar</button>
				</div>
			</div>
		</div>
	</div>


	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/carbon.js"></script>
	<script src="resources/js/demo.js"></script>
	
	<script>
		$(document).ready(function(){
			$("#modal-9").modal({
				  keyboard: false,
				  backdrop:false,
				  focus:true,
				  show : true
			});
		});
		
		function fnPageLogin(){
			console.log("ir page")
			window.location="login";
		}
	
	</script>
	
</body>
</html>