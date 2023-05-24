
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Producto"%>
<%
    List<Producto> productos = (List<Producto>) request.getAttribute("productos");
%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <fieldset>
        <p style="text-align: center; font-size: 22px">
            SEGUNDO PARCIAL TEM-742
        </p>
        <p style="text-align: center; font-size: 22px">
            Nombre: Choque Crispin Jesus Reynaldo
        </p>
        <p style="text-align: center; font-size: 22px">
            Carnet: 6838707 LP
        </p>
    </fieldset>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center><h1>Mi tienda</h1></center>>
        <a href="Inicio?action=add">Nuevo</a>
        <table border="1" cellspacing = "0">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>Cantidad</th>
                <th>Precio</th>
                <th>Categoria</th>
                <th colspan="2">Acciones</th>

            </tr>
            <c:forEach var="item" items="${productos}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad}</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Inicio?action=edit&id=${item.id}">Editar</a></td>
                    <td><a href="Inicio?action=delete&id=${item.id}" onclick="return(confirm('¿Esta seguro de eliminar el registro?'))">Eliminar</a></td>
                </tr>
            </c:forEach>
        </table>

    </body>
</html>
