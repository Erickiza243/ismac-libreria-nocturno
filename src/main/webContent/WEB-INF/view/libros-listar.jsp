<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Gestión de Libros</title>

   
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">

   
    <style>
        table th, table td {
            vertical-align: middle;
        }


        .table-responsive {
            margin-bottom: 20px;
        }
    </style>
</head>
<body>


<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container-fluid">
        <a class="navbar-brand" href="#">Librería Nocturno</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
            <ul class="navbar-nav ms-auto">
                <li class="nav-item">
                    <button class="btn btn-success" onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findOne?opcion=1'; return false;">Agregar Libro</button>
                </li>
            </ul>
        </div>
    </div>
</nav>


<div class="container mt-4">

   
    <h1 class="text-center mb-4">Lista de Libros</h1>

   
    <div class="table-responsive">
        <table class="table table-striped table-bordered">
            <thead class="table-dark">
                <tr>
                    <th>idLibro</th>
                    <th>Titulo</th>
                    <th>Editorial</th>
                    <th>Numero de Páginas</th>
                    <th>Edición</th>
                    <th>Idioma</th>
                    <th>Fecha de Publicación</th>
                    <th>Descripción</th>
                    <th>ISBN</th>
                    <th>Ejemplares</th>
                    <th>Portada</th>
                    <th>Presentación</th>
                    <th>Precio</th>
                    <th>Categoría</th>
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
                            <img alt="Portada" width="100" height="100" src="/ismac-libreria-nocturno-web/resources/img/${item.portada}">
                        </td>
                        <td>${item.presentacion}</td>
                        <td>${item.precio}</td>
                        <td>${item.categoria.categoria}</td>
                        <td>${item.autor.nombre} ${item.autor.apellido}</td>
                        <td>
                            <button class="btn btn-warning btn-sm" onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findOne?opcion=1&idLibro=${item.idLibro}'; return false;">Actualizar</button>
                            <button class="btn btn-danger btn-sm" onclick="window.location.href='/ismac-libreria-nocturno-web/libros/findOne?opcion=2&idLibro=${item.idLibro}'; return false;">Borrar</button>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>

</div>


<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
