<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<div class="container-fluid">


	<div class="card">
		<div class="card-header bg-light">
			<h2>Listado de Clientes <span class="badge badge-secondary">New</span></h2>
		</div>

		<div class="card-body">
			<div class="table-responsive">
				<table class="table table-hover">
					<thead>
						<tr>
							<th>ID</th>
							<th>Name</th>
							<th>Sales</th>
							<th>Price</th>
							<th>Discount</th>
							<th colspan="2">Acciones</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td class="text-nowrap">Samsung Galaxy S8</td>
							<td>31,589</td>
							<td>$800</td>
							<td>5%</td>
							<td><button type="button" class="btn btn-secondary">Secondary</button></td>
							<td><button type="button" class="btn btn-danger">Danger</button></td>
						</tr>
						<tr>
							<td>2</td>
							<td class="text-nowrap">Google Pixel XL</td>
							<td>99,542</td>
							<td>$750</td>
							<td>3%</td>
							<td><button type="button" class="btn btn-secondary">Secondary</button></td>
							<td><button type="button" class="btn btn-danger">Danger</button></td>
						</tr>
						<tr>
							<td>3</td>
							<td class="text-nowrap">iPhone X</td>
							<td>62,220</td>
							<td>$1,200</td>
							<td>0%</td>
							<td><button type="button" class="btn btn-secondary">Secondary</button></td>
							<td><button type="button" class="btn btn-danger">Danger</button></td>
						</tr>
						<tr>
							<td>4</td>
							<td class="text-nowrap">OnePlus 5T</td>
							<td>50,000</td>
							<td>$650</td>
							<td>5%</td>
							<td><button type="button" class="btn btn-secondary">Secondary</button></td>
							<td><button type="button" class="btn btn-danger">Danger</button></td>
						</tr>
						<tr>
							<td>5</td>
							<td class="text-nowrap">Google Nexus 6</td>
							<td>400</td>
							<td>$400</td>
							<td>7%</td>
							<td><button type="button" class="btn btn-secondary">Secondary</button></td>
							<td><button type="button" class="btn btn-danger">Danger</button></td>
						</tr>
					</tbody>
				</table>
			</div>
			
			
			<nav aria-label="Page navigation example">
  <ul class="pagination justify-content-center">
    <li class="page-item disabled">
      <a class="page-link" href="#" tabindex="-1">Previous</a>
    </li>
    <li class="page-item"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item">
      <a class="page-link" href="#">Next</a>
    </li>
  </ul>
</nav>
			
			
		</div>
	</div>
</div>