<%@ page import="com.leo.grails.zapatillas.TiposZapatillas" %>
<!DOCTYPE html>
<html>
<head>
    <title>List Zapatillas</title>
</head>
<body>
<h1>List Zapatillas</h1>
<g:each in="${tiposZapatillas}" var="tiposZapatilla">
    Nombre: ${tiposZapatilla.nombre}<br />
    Precio: ${tiposZapatilla.precio}<br />
    Descripcion: ${tiposZapatilla.descripcion}<br />
    <g:link action="edit"
            id="${tiposZapatilla.id}">Edit</g:link><br />
    <g:link action="delete"
            id="${tiposZapatilla.id}">Delete</g:link><br /><br />
</g:each>
<g:link action="create">Create new zapatillas</g:link>
</body>
</html>