<%@ page import="hotel.Hotel" %>



<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'description', 'error')} required">
	<label for="description">
		<g:message code="hotel.description.label" default="Description" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="description" required="" value="${hotelInstance?.description}"/>

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

<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'roomRate', 'error')} required">
	<label for="roomRate">
		<g:message code="hotel.roomRate.label" default="Room Rate" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="roomRate" value="${fieldValue(bean: hotelInstance, field: 'roomRate')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: hotelInstance, field: 'roomType', 'error')} required">
	<label for="roomType">
		<g:message code="hotel.roomType.label" default="Room Type" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="roomType" required="" value="${hotelInstance?.roomType}"/>

</div>

