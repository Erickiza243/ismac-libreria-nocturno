<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@	taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 
<h1>Libros</h1>
<button onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findOne?opcion=1'; return false;">Agregar</button>
	  
	  
<table>
	<thead>
		<tr> 
		<th>idLibro</th>
		<th>Titulo</th>
		<th>Editorial</th>
		<th>Numero de paginas</th>
		<th>Edicion</th>
		<th>Idioma</th>
		<th>Fecha de Publicacion</th>
		<th>Descripcion</th>
		<th>ISBN</th>
		<th>Numero de Ejemplares</th>
		<th>Portada</th>
		<th>Presentacion</th>
		<th>Precio</th>
		<th>Categoria</th>
		<th>Autor</th>
		<th>Acciones</th>
		</tr>
		</thead>
	<tbody>
	<c:forEach var="item" items="${libros}">
		<tr>
		<td>${item.idLibro}</td>
		<td>${item.titulo}</td>
		<td>${item.editorial}</td>
		<td>${item.numPaginas}</td>
		<td>${item.edicion}</td>
		<td>${item.idioma}</td>
		<td>${fn:substring(item.fechaPublicacion,0,10)}</td>
		<td>${item.descripcion}</td>
		<td>${item.iSBN}</td>
		<td>${item.numEjemplares}</td>
		<td>
		<img alt="foto.jpg" width=100px height=100px src="/ismac-libreria-nocturno-web/resources/img/${item.portada}">
		</td>
		<td>${item.presentacion}</td>
		<td>${item.precio}</td>
		<td>${item.categoria.categoria}</td>
		<td>${item.autor.nombre} ${item.autor.apellido}</td>
		<td>
		<button onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findOne?opcion=1&idLibro=${item.idLibro}'; return false;">Actualizar</button>
		<button onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findOne?opcion=2&idLibro=${item.idLibro}'; return false;">Borrar</button>

		</td>
		</tr>
	</c:forEach>
	</tbody>
</table>
</body>
</html>