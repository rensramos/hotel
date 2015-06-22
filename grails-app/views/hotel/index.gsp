
<%@ page import="hotel.Hotel" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'hotel.label', default: 'Hotel')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-hotel" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
				<li>
					<g:form name="logout" controller="logout" method="POST">
						<button><span class="glyphicon glyphicon-log-out"></span> Log out</button>
					</g:form>
				</li>

			</ul>
		</div>
		<div id="list-hotel" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="description" title="${message(code: 'hotel.description.label', default: 'Description')}" />
					
						<g:sortableColumn property="location" title="${message(code: 'hotel.location.label', default: 'Location')}" />
					
						<g:sortableColumn property="name" title="${message(code: 'hotel.name.label', default: 'Name')}" />
					
						<g:sortableColumn property="roomRate" title="${message(code: 'hotel.roomRate.label', default: 'Room Rate')}" />
					
						<g:sortableColumn property="roomType" title="${message(code: 'hotel.roomType.label', default: 'Room Type')}" />
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${hotelInstanceList}" status="i" var="hotelInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${hotelInstance.id}">${fieldValue(bean: hotelInstance, field: "description")}</g:link></td>
					
						<td>${fieldValue(bean: hotelInstance, field: "location")}</td>
					
						<td>${fieldValue(bean: hotelInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: hotelInstance, field: "roomRate")}</td>
					
						<td>${fieldValue(bean: hotelInstance, field: "roomType")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${hotelInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
