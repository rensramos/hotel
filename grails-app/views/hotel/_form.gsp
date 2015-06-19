<%@ page import="hotel.Hotel" %>



<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'currency', 'error')} required">
	<label for="currency">
		<g:message code="hotel.currency.label" default="Currency" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="currency" required="" value="${hotelInstance?.currency}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'location', 'error')} required">
	<label for="location">
		<g:message code="hotel.location.label" default="Location" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="location" required="" value="${hotelInstance?.location}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'name', 'error')} required">
	<label for="name">
		<g:message code="hotel.name.label" default="Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="name" required="" value="${hotelInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'price', 'error')} required">
	<label for="price">
		<g:message code="hotel.price.label" default="Price" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="price" type="number" value="${hotelInstance.price}" required=""/>

</div>

