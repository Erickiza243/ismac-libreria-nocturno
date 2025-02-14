<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmar Eliminación</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-light">


    <div class="container mt-5">

       
        <h1 class="text-center mb-4">Eliminar Libro</h1>

       
        <div class="card shadow-sm">
            <div class="card-body">
                <form action="del" method="get">
                    <input type="hidden" id="idLibro" name="idLibro" value="${libro.idLibro}">

                    <div class="alert alert-warning text-center">
                        <strong>¿Estás seguro de que deseas eliminar este libro?</strong>
                    </div>

                    <div class="d-flex justify-content-center gap-3">
                        <button type="submit" class="btn btn-danger">Eliminar</button>
                        <button type="button" class="btn btn-secondary" onclick="window.location.href='/ismac-libreria-online-web/libros/findAll'; return false;">Cancelar</button>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>

</body>
</html>
