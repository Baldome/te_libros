<%@page import="com.emergentes.modelo.Libro"%>
<%
    Libro lib = (Libro) request.getAttribute("lib");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container" style="width: 700px;">
            <div class="mx-auto">
                <h1 class="fw-bold" style="text-align: center;"><%= (lib.getId() == 0) ? "Nuevo " : "Editar "%> registro libro</h1>
                <div class="mb-3">
                    <form action="MainController" method="post">
                        <input type="hidden" name="id" value="${lib.id}">
                        <div class="mb-3 row">
                            <label for="isbn" class="col-sm-2 col-form-label">ISBN</label>
                            <div class="col-sm-10">
                                <input type="text" name="isbn" class="form-control" id="isbn" value="${lib.isbn}">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="titulo" class="col-sm-2 col-form-label">Título</label>
                            <div class="col-sm-10">
                                <input type="text" name="titulo" class="form-control" id="titulo" value="${lib.titulo}">
                            </div>
                        </div>
                        <div class="mb-3 row">
                            <label for="categoria" class="col-sm-2 col-form-label">Categoria</label>
                            <div class="col-sm-10">
                                <input type="text" name="categoria" class="form-control" id="categoria" value="${lib.categoria}">
                            </div>
                        </div>
                            <input type="submit" class="btn btn-primary">
                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
