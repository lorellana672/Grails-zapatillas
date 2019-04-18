<%@ page import="com.leo.grails.zapatillas.TiposZapatillas" %>
<!DOCTYPE html>
<html>
<head>
	<title>Edit Zapatillas</title>
</head>
<body>
<h1>Edit zapatillas</h1>
<g:form action="update" id="${tiposZapatillas.id}">
	Nombre: <g:textField name="nombre"
					   value="${tiposZapatillas.nombre}"/><br />
	Precio: <g:textField name="precio"
							   value="${tiposZapatillas.precio}"/><br />
	Descripcion: <g:textField name="descripcion"
						 value="${tiposZapatillas.descripcion}"/><br />
	<g:actionSubmit value="Update" />
</g:form>
</body>
</html>
