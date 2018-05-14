<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">


<link rel="stylesheet" href="resources/css/simple-line-icons.css">
<link rel="stylesheet" href="resources/css/fontawesome-all.min.css">
<link rel="stylesheet" href="resources/css/styles.css">

<s:head />
</head>
<body>


	<div class="page-wrapper flex-row align-items-center">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-md-5">
					<div class="card p-4">
						<div
							class="card-header text-center text-uppercase h4 font-weight-light">
							Login</div>

						<s:form action="login">
							<div class="card-body py-5">
								<div class="form-group">
									<s:label class="form-control-label" value="Usuario" />
									<s:textfield name="usuario.username" class="form-control"
										placeholder="Ingrese el usuario" />
								</div>

								<div class="form-group">
									<s:label class="form-control-label" value="Contraseña" />
									<s:textfield name="usuario.password" class="form-control"
										placeholder="Ingrese la contraseña" />
								</div>

								<div class="custom-control custom-checkbox mt-4">
									<input type="checkbox" class="custom-control-input" id="login">
									<label class="custom-control-label" for="login">Recordar</label>
								</div>
							</div>

							<div class="card-footer">
								<div class="row">
									<div class="col-6">
										<s:submit class="btn btn-primary px-4" value="Login"/>									
<!-- 										<button type="submit" class="btn btn-primary px-6">Login</button> -->
									</div>
									<div class="col-6">
										<a href="#" class="btn btn-link">Olvidaste la contraseña?</a>
									</div>
								</div>
							</div>
						</s:form>



					</div>
				</div>
			</div>
		</div>
	</div>




	<script src="resources/js/jquery.min.js"></script>
	<script src="resources/js/popper.min.js"></script>
	<script src="resources/js/bootstrap.min.js"></script>
	<script src="resources/js/carbon.js"></script>
	<script src="resources/js/demo.js"></script>
</body>
</html>