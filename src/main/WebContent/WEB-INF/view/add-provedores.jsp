<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1> Provedores </h1>

         <form action="add" method="post">
         
               <input type="hidden" id="idProvedores" name="idProvedores" value="${provedores.idProvedores}" />
               Nombre
               <input type="text" id="nombre" name="nombre" value="${provedores.nombre}" />
               <br/>
               Direccion
               <input type="text" id="direccion" name="direccion" value="${provedores.direccion}" />
               <br/>
               Telefono
               <input type="text" id="telefono" name="telefono" value="${provedores.telefono}" />
               <br/>
               Email
               <input type="email" id="email" name="email" value="${provedores.email}" />
               <br/>
               
               <button type="submit">Guardar</button>
               
               <button onclick="window.location.href='/compras-inventario-web/provedores/findAll';return false ;">
               Cancelar
               </button>
         </form>

</body>
</html>