<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulario de Proveedores</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/bootstrap.min.css" />
</head>
<body>

<div class="container mt-5">
    <h1>Proveedores</h1>
    <form action="add" method="post" class="needs-validation" novalidate>
        <!-- Campo oculto para el ID de Proveedores -->
        <input type="hidden" id="idProvedores" name="idProvedores" value="${provedores.idProvedores}" />
        
        <!-- Campo para el Nombre -->
        <div class="form-group">
            <label for="nombre" class="form-label">Nombre</label>
            <input type="text" class="form-control" id="nombre" name="nombre" value="${provedores.nombre}" required>
            <div class="invalid-feedback">Por favor, ingrese el nombre del proveedor.</div>
        </div>
        <br/>

        <!-- Campo para la Dirección -->
        <div class="form-group">
            <label for="direccion" class="form-label">Dirección</label>
            <input type="text" class="form-control" id="direccion" name="direccion" value="${provedores.direccion}" required>
            <div class="invalid-feedback">Por favor, ingrese la dirección del proveedor.</div>
        </div>
        <br/>

        <!-- Campo para el Teléfono -->
        <div class="form-group">
            <label for="telefono" class="form-label">Teléfono</label>
            <input type="text" class="form-control" id="telefono" name="telefono" value="${provedores.telefono}" required>
            <div class="invalid-feedback">Por favor, ingrese el número de teléfono del proveedor.</div>
        </div>
        <br/>

        <!-- Campo para el Email -->
        <div class="form-group">
            <label for="email" class="form-label">Email</label>
            <input type="email" class="form-control" id="email" name="email" value="${provedores.email}" required>
            <div class="invalid-feedback">Por favor, ingrese un correo electrónico válido.</div>
        </div>
        <br/>
        
        <!-- Botón de Guardar -->
        <button type="submit" class="btn btn-primary">Guardar</button>
        
        <!-- Botón de Cancelar -->
        <button type="button" class="btn btn-secondary" onclick="window.location.href='/compras-inventario-web/provedores/findAll';return false;">Cancelar</button>
    </form>
</div>

<script src="${pageContext.request.contextPath}/resources/js/bootstrap.bundle.min.js"></script>

<script>
    /*Script para validación de Bootstrap */
    (() => {
        'use strict'

        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        const forms = document.querySelectorAll('.needs-validation')

        // Loop over them and prevent submission if invalid
        Array.from(forms).forEach(form => {
            form.addEventListener('submit', event => {
                if (!form.checkValidity()) {
                    event.preventDefault()
                    event.stopPropagation()
                }

                form.classList.add('was-validated')
            }, false)
        })
    })()
</script>

</body>
</html>
