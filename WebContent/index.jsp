<html>
<head>
<meta http-quiv="Content-Type" content="text/html;charset=UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<title>Ejemplo</title>
</head>
<body>
	
		<div class="container">
	 		<div class="row justify-content-center">
	 			<div class="col-md-6">
	 				<form action="IMCServlet" method="POST">
	 					<h4 class="mt-4">Calculadora de IMC</h4>
	 					<div class="form-group">
	 						<label for="peso">Peso</label>	
	 						<input type="text" class="form-control" id="peso" name="peso" required/>
	 					</div>
	 					<div class="form-group">
	 						<label for="estatura">Estatura</label>	
	 						<input type="text" class="form-control" id="estatura" name="estatura" required/>
	 					</div>
	 					<div class="form-group">
	 						<label for="edad">Edad</label>	
	 						<input type="number" class="form-control" id="edad" name="edad" required/>
	 					</div>
	 					<input type="submit" class="btn btn-success btn-block" value="Calcular" id="calcular"/>
	 					<div class="form-group mt-4">
	 						<label for="calcular">IMC</label>
	 						<input type="text" class="form-control" id="imc" name="imc" disabled 
	 						value=<% 
	 							if (request.getSession().getAttribute("imc") == null) {
	 								out.println("");
	 							}else{
	 								out.println(request.getSession().getAttribute("imc"));
	 							}
	 						%>>
	 					</div>
	 					<div class="form-group">
	 						<label for=calcular>Leer</label>
	 						<input type="text" class="form-control" id="Lectura" disabled name="Lectura" 
	 						value=
	 						<% 
	 						// operador ternario 
	 							out.print(request.getSession().getAttribute("rango") == null ? "":
	 								request.getSession().getAttribute("rango"));
	 							
	 						%>>
	 					</div>
	 				</form>
	 			</div>
	 		</div>
	 	</div>
	
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"
		integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx"
		crossorigin="anonymous"></script>
</body>
</html>