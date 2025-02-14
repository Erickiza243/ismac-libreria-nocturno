<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8"> 
<title>Insert title here</title>
</head>
<body>
<h1>Libros</h1> 

<form action="add" method="post">
		<input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
		titulo
		<input type="text" id="titulo" name="titulo" value="${libro.titulo}">
		<br>
			editorial
		<input type="text" id="editorial" name="editorial" value="${libro.editorial}">
		<br>
		<br>
			numPaginas
		<input type="number" id="numPaginas" name="numPaginas" value="${libro.numPaginas}">
		<br>
		<br>
			edicion
		<input type="text" id="edicion" name="edicion" value="${libro.edicion}">
		<br>
		<br>
			idioma
		<input type="text" id="idioma" name="idioma" value="${libro.idioma}">
		<br>
		<br>
			fechaPublicacion
		<input type="date" id="fechaPublicacion" name="fechaPublicacion" value="${libro.fechaPublicacion}">
		<br>
			descripcion
		<input type="text" id="descripcion" name="descripcion" value="${libro.descripcion}">
		<br>
			<br>
			tipoPasta
		<input type="text" id="tipoPasta" name="tipoPasta" value="${libro.tipoPasta}">
		<br>
			iSBN
		<input type="text" id="iSBN" name="iSBN" value="${libro.iSBN}">
		<br>
			numEjemplares
		<input type="number" id="numEjemplares" name="numEjemplares" value="${libro.numEjemplares}">
		<br>
		<br>
			portada
		<input type="text" id="portada" name="portada" value="${libro.portada}">
		<br>
		<br>
			presentacion
		<input type="text" id="presentacion" name="presentacion" value="${libro.presentacion}">
		<br>
		<br>
			precio
		<input type="number" step="any" id="precio" name="precio" value="${libro.descripcion}">
		<br>
		
		
		<br>
			categoria
			<select id="idCategoria" name="idCategoria">
			<c:forEach var="item" items="${categorias}">
			<option id="" value="${item.idCategoria}">${item.categoria}</option>
			</c:forEach>
			</select>
		<br>
		<br>
			autor
		<input type="text" id="autor" name="autor" value="${autor.autor}">
		<br>
</form>
</body>
</html>