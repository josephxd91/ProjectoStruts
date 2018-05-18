<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="s" uri="/struts-tags"%>
<div class="container-fluid">
	<div class="card">
		<div class="card-header bg-light">
			<h3>Listado de Clientes</h3>
			<button type="button" onclick="fnFormNewClient()" class="btn btn-primary">
				<i class="fa fa-align-center"></i> &nbsp; Nuevo
			</button>
		</div>

		<div class="card-body">
			<div class="table-responsive">

				<s:if test="%{!listaClientes.isEmpty}">
					<table class="table table-hover">
						<thead>
							<tr>
								<th>N°</th>
								<th>Nombre</th>
								<th>Apellidos</th>
								<th>Genero</th>
								<th>Profesion</th>
								<th>Telefono/Celular</th>
								<th>Acepto Publicidad</th>
								<th>Correo</th>
								<th colspan="2">Acciones</th>
							</tr>
						</thead>
						<tbody>
							<s:iterator status="state" value="%{listaClientes}">
								<tr>
									<td><s:property value="#state.count" /></td>
									<td class="text-nowrap"><s:property value="nombre" /></td>
									<td><s:property value="apellido" /></td>
									<td><s:property value="genero" /></td>
									<td><s:property value="profesion" /></td>
									<td><s:property value="numeroMovil" /></td>
									<td><s:property value="publicidad" /></td>
									<td><s:property value="correo" /></td>
									<td><button type="button" class="btn btn-primary"
											data-toggle="modal"
											onclick="fnUpdateClient(<s:property value="codigo"/>)"
											data-target="#modal-4">Actualizar</button></td>
									<td><button type="button"
											onclick="fnDeleteClient(<s:property value="codigo"/>)"
											class="btn btn-danger" data-toggle="modal"
											data-target="#modal-8">Eliminar</button></td>
								</tr>
							</s:iterator>
						</tbody>
					</table>
					<nav aria-label="Page navigation example">
						<ul class="pagination justify-content-center">
							<li class="page-item disabled"><a class="page-link" href="#"
								tabindex="-1">Previous</a></li>
							<li class="page-item"><a class="page-link" href="#">1</a></li>
							<li class="page-item"><a class="page-link" href="#">2</a></li>
							<li class="page-item"><a class="page-link" href="#">3</a></li>
							<li class="page-item"><a class="page-link" href="#">Next</a></li>
						</ul>
					</nav>
				</s:if>
			</div>





		</div>
	</div>
</div>



<div class="modal fade" id="modal-4" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-primary border-0">
				<h5 class="modal-title text-white">Formulario-Registro de
					Clientes</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>

			<div class="modal-body p-5">


				<s:form action="updateClient" theme="simple">>
					<s:hidden name="cliente.codigo" id="txtCodigo" />

					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Nombres</label>
						<div class="col-sm-10">
							<!-- 							<input type="text" class="form-control" id="txtNombre" -->
							<!-- 								placeholder="Nombre completo"> -->

							<s:textfield type="text" name="cliente.nombre"
								class="form-control" id="txtNombre"
								placeholder="Nombre Completo" />

						</div>
					</div>
					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Apellidos</label>
						<div class="col-sm-10">
							<!-- 							<input type="text" class="form-control" id="txtApellido" -->
							<!-- 								placeholder="Apellido completo"> -->

							<s:textfield type="text" class="form-control" id="txtApellido"
								placeholder="Apellido completo" name="cliente.apellido" />
						</div>
					</div>

					<fieldset class="form-group">
						<div class="row">
							<legend class="col-form-label col-sm-2 pt-0">Genero</legend>
							<div class="col-sm-10">
								<div class="form-check">
									<input class="form-check-input" type="radio" name="gridRadios"
										id="gridRadios1" value="option1" checked> <label
										class="form-check-label" for="gridRadios1"> Masculino
									</label>
								</div>
								<div class="form-check">
									<input class="form-check-input" type="radio" name="gridRadios"
										id="gridRadios2" value="option2"> <label
										class="form-check-label" for="gridRadios2"> Femenino </label>
								</div>
							</div>
						</div>
					</fieldset>
					<!-- 					<div class="form-group row"> -->
					<!-- 						<div class="col-sm-2">Checkbox</div> -->
					<!-- 						<div class="col-sm-10"> -->
					<!-- 							<div class="form-check"> -->
					<!-- 								<input class="form-check-input" type="checkbox" id="gridCheck1"> -->
					<!-- 								<label class="form-check-label" for="gridCheck1"> -->
					<!-- 									Example checkbox </label> -->
					<!-- 							</div> -->
					<!-- 						</div> -->
					<!-- 					</div> -->


					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Profesion</label>
						<div class="col-sm-10">
							<!---<input type="text" class="form-control" id="txtProfesion"
								placeholder="Profesion">-->

							<s:textfield type="text" id="txtProfesion" class="form-control"
								placeholder="Profesion" />
						</div>
					</div>

					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Celular</label>
						<div class="col-sm-10">
							<s:textfield type="text" placeholder="Telefono/Celular"
								class="form-control" id="txtCelular" name="cliente.numeroMovil" />
						</div>
					</div>


					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Deseas
							recibir una publicidad?</label>
						<div class="col-sm-10">
							<s:checkbox name="publicidad" value="%{cliente.publicidad}"
								id="ts2" />
						</div>
					</div>

					<%-- 	 <s:checkbox   name="publicidad" value="%{cliente.publicidad}" id="ts2"  />	 --%>

					<!-- 					<div class="toggle-switch" data-ts-color="primary"> -->
					<!-- 						<label for="ts2" class="ts-label">Deseas recibir una -->
					<!-- 							publicidad a su correo?</label> -->

					<!-- 						<input id="ts2" type="checkbox" hidden="hidden"/> -->
					<%-- 							<s:checkbox id="ts2"  fieldValue="true"/> --%>
					<%-- 							<s:checkbox   name="publicidad" value="%{cliente.publicidad}" id="ts2"  />	 --%>
					<!-- 							<s:textfield  type="checkbox" id="ts2" hidden="hidden" /> -->

					<!-- 							<label for="ts2" class="ts-helper"></label> -->
					<!-- 					</div> -->

					<div class="form-group row">
						<label for="inputEmail3" class="col-sm-2 col-form-label">Correo</label>
						<div class="col-sm-10">
							<s:textfield type="email" placeholder="Correo Electronico"
								class="form-control" id="txtCorreo" name="cliente.correo" />
						</div>
					</div>
					<s:submit value="Enviar Datos" />

				</s:form>


			</div>



			<div class="modal-footer border-0">
				<button type="button" class="btn btn-link" data-dismiss="modal">Cerrar</button>
				<button type="button" onclick="applyChangeClient()"
					class="btn btn-primary">Aplicar Cambios</button>
			</div>



		</div>
	</div>
</div>





<div class="modal fade" id="modal-8" tabindex="-1" role="dialog"
	aria-labelledby="exampleModalLabel" aria-hidden="true">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header bg-danger border-0">
				<h5 class="modal-title text-white">Eliminacion de Clientes</h5>
				<button type="button" class="close" data-dismiss="modal"
					aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
			</div>
			<s:textfield type="hidden" id="txtCodCliente" value="0" />
			<div class="modal-body p-5">¿Deseas proceder a la eliminacion
				del registro?</div>

			<div class="modal-footer border-0">
				<button type="button" class="btn btn-link" data-dismiss="modal">Cerrar</button>
				<button type="button" class="btn btn-danger"
					onclick="fnConfirmDelete()">Continuar</button>
			</div>
		</div>
	</div>
</div>



