
<%@ page import="hotel.Hotel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hotel.label', default: 'Hotel')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-hotel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li>
					<g:form name="logout" controller="logout" method="POST">
						<button><span class="glyphicon glyphicon-log-out"></span> Log out</button>
					</g:form>
				</li>
			</ul>
		</div>
		<div id="show-hotel" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list hotel">
			
				<g:if test="${hotelInstance?.description}">
				<li class="fieldcontain">
					<span id="description-label" class="property-label"><g:message code="hotel.description.label" default="Description" /></span>
					
						<span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${hotelInstance}" field="description"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.location}">
				<li class="fieldcontain">
					<span id="location-label" class="property-label"><g:message code="hotel.location.label" default="Location" /></span>
					
						<span class="property-value" aria-labelledby="location-label"><g:fieldValue bean="${hotelInstance}" field="location"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="hotel.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${hotelInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.roomRate}">
				<li class="fieldcontain">
					<span id="roomRate-label" class="property-label"><g:message code="hotel.roomRate.label" default="Room Rate" /></span>
					
						<span class="property-value" aria-labelledby="roomRate-label"><g:fieldValue bean="${hotelInstance}" field="roomRate"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${hotelInstance?.roomType}">
				<li class="fieldcontain">
					<span id="roomType-label" class="property-label"><g:message code="hotel.roomType.label" default="Room Type" /></span>
					
						<span class="property-value" aria-labelledby="roomType-label"><g:fieldValue bean="${hotelInstance}" field="roomType"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:hotelInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${hotelInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
