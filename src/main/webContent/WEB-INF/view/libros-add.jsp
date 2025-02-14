<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Agregar Libro</title>

    
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">

 
    <div class="container mt-5">

       
        <h1 class="text-center mb-4">Agregar/Editar Libro</h1>

     
        <form action="add" method="post">
            <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">
            
            <div class="row mb-3">
                <label for="titulo" class="col-sm-2 col-form-label">Título</label>
                <div class="col-sm-10">
                    <input type="text" id="titulo" name="titulo" class="form-control" value="${libro.titulo}">
                </div>
            </div>
            
            <div class="row mb-3">
                <label for="editorial" class="col-sm-2 col-form-label">Editorial</label>
                <div class="col-sm-10">
                    <input type="text" id="editorial" name="editorial" class="form-control" value="${libro.editorial}">
                </div>
            </div>
            
            <div class="row mb-3">
                <label for="numPaginas" class="col-sm-2 col-form-label">Número de Páginas</label>
                <div class="col-sm-10">
                    <input type="number" id="numPaginas" name="numPaginas" class="form-control" value="${libro.numPaginas}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="edicion" class="col-sm-2 col-form-label">Edición</label>
                <div class="col-sm-10">
                    <input type="text" id="edicion" name="edicion" class="form-control" value="${libro.edicion}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="idioma" class="col-sm-2 col-form-label">Idioma</label>
                <div class="col-sm-10">
                    <input type="text" id="idioma" name="idioma" class="form-control" value="${libro.idioma}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="fechaPublicacion" class="col-sm-2 col-form-label">Fecha de Publicación</label>
                <div class="col-sm-10">
                    <input type="date" id="fechaPublicacion" name="fechaPublicacion" class="form-control" value="${libro.fechaPublicacion}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="descripcion" class="col-sm-2 col-form-label">Descripción</label>
                <div class="col-sm-10">
                    <input type="text" id="descripcion" name="descripcion" class="form-control" value="${libro.descripcion}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="tipoPasta" class="col-sm-2 col-form-label">Tipo de Pasta</label>
                <div class="col-sm-10">
                    <input type="text" id="tipoPasta" name="tipoPasta" class="form-control" value="${libro.tipoPasta}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="iSBN" class="col-sm-2 col-form-label">ISBN</label>
                <div class="col-sm-10">
                    <input type="text" id="iSBN" name="iSBN" class="form-control" value="${libro.iSBN}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="numEjemplares" class="col-sm-2 col-form-label">Número de Ejemplares</label>
                <div class="col-sm-10">
                    <input type="number" id="numEjemplares" name="numEjemplares" class="form-control" value="${libro.numEjemplares}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="portada" class="col-sm-2 col-form-label">Portada</label>
                <div class="col-sm-10">
                    <input type="text" id="portada" name="portada" class="form-control" value="${libro.portada}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="presentacion" class="col-sm-2 col-form-label">Presentación</label>
                <div class="col-sm-10">
                    <input type="text" id="presentacion" name="presentacion" class="form-control" value="${libro.presentacion}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="precio" class="col-sm-2 col-form-label">Precio</label>
                <div class="col-sm-10">
                    <input type="number" step="any" id="precio" name="precio" class="form-control" value="${libro.precio}">
                </div>
            </div>

            <div class="row mb-3">
                <label for="idCategoria" class="col-sm-2 col-form-label">Categoría</label>
                <div class="col-sm-10">
                    <select id="idCategoria" name="idCategoria" class="form-select">
                        <c:forEach var="item" items="${categorias}">
                            <option value="${item.idCategoria}">${item.categoria}</option>
                        </c:forEach>
                    </select>
                </div>
            </div>

            <div class="row mb-3">
                <label for="autor" class="col-sm-2 col-form-label">Autor</label>
                <div class="col-sm-10">
                    <input type="text" id="autor" name="autor" class="form-control" value="${autor.autor}">
                </div>
            </div>

            <div class="row mb-3 text-center">
                <div class="col-sm-12">
                    <button type="submit" class="btn btn-primary">Guardar</button>
                    <button type="button" class="btn btn-secondary" onclick="window.location.href='/ismac-libreria-online-web/libros/findAll'; return false;">Cancelar</button>
                </div>
            </div>
        </form>
    </div>

  
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
