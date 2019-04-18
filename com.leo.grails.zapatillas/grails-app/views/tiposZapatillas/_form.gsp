<%@ page import="com.leo.grails.zapatillas.TiposZapatillas" %>



<div class="fieldcontain ${hasErrors(bean: tiposZapatillasInstance, field: 'nombre', 'error')} required">
	<label for="nombre">
		<g:message code="tiposZapatillas.nombre.label" default="Nombre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nombre" maxlength="80" required="" value="${tiposZapatillasInstance?.nombre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: tiposZapatillasInstance, field: 'precio', 'error')} required">
	<label for="precio">
		<g:message code="tiposZapatillas.precio.label" default="Precio" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="precio" type="number" value="${tiposZapatillasInstance.precio}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: tiposZapatillasInstance, field: 'descripcion', 'error')} ">
	<label for="descripcion">
		<g:message code="tiposZapatillas.descripcion.label" default="Descripcion" />
		
	</label>
	<g:textArea name="descripcion" cols="40" rows="5" maxlength="500" value="${tiposZapatillasInstance?.descripcion}"/>

</div>

