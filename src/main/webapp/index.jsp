<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Libro"%>
<%@page import="java.util.List"%>
<%
    List<Libro> lista = (List<Libro>) request.getAttribute("lista");
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
                <h1 class="fw-bold" style="text-align: center;">Listado de libros</h1>
                <p><a href="MainController?op=nuevo" class="btn btn-success">Nuevo</a></p>
                <table class="table">
                    <thead class="table-primary">
                        <tr>
                            <th>Id</th>
                            <th>ISBN</th>
                            <th>Título</th>
                            <th>Categoria</th>
                            <th colspan="2">Acciones</th>
                        </tr>
                    </thead>
                    <tbody class="table-secondary">
                    <c:forEach var="item" items="${lista}">
                        <tr>
                            <td>${item.id}</td>
                            <td>${item.isbn}</td>
                            <td>${item.titulo}</td>
                            <td>${item.categoria}</td>
                            <td>
                                <a href="MainController?op=editar&id=${item.id}" class="btn btn-warning">Editar</a>
                            </td>
                            <td>
                                <a href="MainController?op=eliminar&id=${item.id}" onclick="return(confirm('Esta seguro de eliminar el registro?'))" class="btn btn-danger">Eliminar</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
        </div>
    </body>
</html>
