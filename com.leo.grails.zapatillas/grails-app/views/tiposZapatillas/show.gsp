
<%@ page import="com.leo.grails.zapatillas.TiposZapatillas" %>
<!DOCTYPE html>
<html>
<head>
	<title>Show zapatillas</title>
</head>
<body>
<h1>Show zapatillas</h1>
Nombre: ${tiposZapatillas.nombre}<br />
Precio: ${tiposZapatillas.precio}<br />
Descripcion: ${tiposZapatillas.descripcion}<br />
<g:link action="edit" id="${tiposZapatillas.id}">Edit</g:link><br />
<g:link action="delete" id="${tiposZapatillas.id}">Delete</g:link><br />
<g:link action="create" id="${tiposZapatillas.id}">Create</g:link>
</body>
</html>