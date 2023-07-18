<%@page import="ar.com.codoacodo.domain.Empleado"%>
<%
	Empleado d = (Empleado)request.getAttribute("empleado"); // levanto el empleado que viene del controller
%>

<!Doctype html>
<html>
		<head>
		 <!-- Required meta tags -->
	    <meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Editar Empleado</title>
		 <!-- Bootstrap CSS -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet">  
	</head>
	<body>
	   <div class="container bg-light">
	   		<jsp:include page="navbar.jsp"/>
	   </div>
		
		
		<main class="container mt-5"> 
			<h4>Editar Empleado</h4>
			
			<div class="row mt-5">
				<div class="col-12">
					<form class="row g-3 needs-validation" 
						action="<%=request.getContextPath()%>/UpdateEmpleadoController"
						method="POST">
					  <div class="col-md-8">
					  	<label for="validationCustom02" class="form-label">Dni</label>
					    <input type="text" 
					    name="dni"
					    class="form-control" 
					    id="validationCustom02" 
					    value="<%=d.getDni()%>"
					    required>					    
					  </div>
					  
					  <div class="col-md-8">
					    <label for="validationCustom02" class="form-label">Nombre</label>
					    <input type="text"
					    	name="nombre" 
					    	class="form-control" 
					    	id="validationCustom02"
					    	value="<%=d.getNombre()%>" 
					    	required>
					    <div class="valid-feedback">
					      Looks good!
					    </div>
					  </div>
					  
					  <div class="col-md-8">
					    <label for="validationCustom02" class="form-label">Apellido</label>
					    <input type="text"
					    	name="apellido" 
					    	class="form-control" 
					    	id="validationCustom02"
					    	value="<%=d.getApellido()%>" 
					    	required>
					    <div class="valid-feedback">
					      Looks good!
					    </div>
					  </div>
					  
					  <div class="col-md-8">
					    <label for="validationCustom02" class="form-label">Departamento</label>
					    <input type="text"
					    	name="dpto_id" 
					    	class="form-control" 
					    	id="validationCustom02"
					    	value="<%=d.getDpto_id()%>" 
					    	required>
					    <div class="valid-feedback">
					      Looks good!
					    </div>
					  </div>
					 
					  <div class="col-12">
					    <button class="btn btn-success" type="submit">Editar</button>
					    <a href="<%=request.getContextPath()%>/FindAllEmpleadoController" class="btn btn-secondary">Cancelar</a>
					  </div>
					</form>
				</div>
				
			</div>
			
		</main>
	</body>
</html>
