<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Proveedores</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.1/css/all.min.css" integrity="sha512-DTOQO9RWCH3ppGqcWaEA1BIZOC6xxalwEsw9c2QQeAIftl+Vegovlnee1c9QX4TctnWMn13TZye+giMm8e2LwA==" crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>
<body>

<div class="container mt-5">
    <h1 class="text-center">Proveedores</h1>

    <div class="text-center my-4">
        <button class="btn btn-primary" onclick="window.location.href='/compras-inventario-web/provedores/findOne?opcion=1'; return false;">
            <i class="fa-solid fa-plus"></i> Agregar
        </button>
    </div>
    
    <div class="table-responsive">
        <table class="table table-bordered table-hover">
            <thead class="thead-dark">
                <tr>
                    <th>Id Proveedor</th>
                    <th>Nombre</th>
                    <th>Dirección</th>
                    <th>Teléfono</th>
                    <th>Email</th>
                    <th>Acciones</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${provedores}">
                    <tr>
                        <td>${item.idProvedores}</td>
                        <td>${item.nombre}</td>
                        <td>${item.direccion}</td>
                        <td>${item.telefono}</td>
                        <td>${item.email}</td>
                        <td>
                            <button class="btn btn-success" onclick="window.location.href='/compras-inventario-web/provedores/findOne?idProvedores=${item.idProvedores}&opcion=1'; return false;">
                                <i class="fa-solid fa-pen-to-square"></i> Actualizar
                            </button>
                            <button class="btn btn-danger" onclick="window.location.href='/compras-inventario-web/provedores/findOne?idProvedores=${item.idProvedores}&opcion=2'; return false;">
                                <i class="fa-solid fa-trash"></i> Eliminar
                            </button>             
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</div>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>
</body>
</html>
