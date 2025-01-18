<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>Categoria</h1>
	
	<form action="add" method="POST">
		
		<input type="hidden" id="idCliente" name="idCliente" value="${categoria.idCategoria}" />
		Categoria
		<input type="text" id="cedula" name="cedula" value="${categoria.categoria}" />
		<br>
		descripcion
		<input type="text" id="nombre" name="nombre" value="${categoria.descripcion}" />
		<br>
		
		
		<button type="submit">Guardar</button>
		<button onclick="window.location.href='/ismac-libreria-nocturno-web/categotia/findAll'; return false;">Cancelar</button>
	
	</form>
	
 
</body>
</html>