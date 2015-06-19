
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

            <g:sortableColumn property="name" title="${message(code: 'hotel.name.label', default: 'Name')}" />

            <g:sortableColumn property="price" title="${message(code: 'hotel.price.label', default: 'Price')}" />

            <g:sortableColumn property="currency" title="${message(code: 'hotel.currency.label', default: 'Currency')}" />

            <g:sortableColumn property="location" title="${message(code: 'hotel.location.label', default: 'Location')}" />

        </tr>
        </thead>
        <tbody>
        <g:each in="${searchResults}" var="searchResult">
            <tr>
                <td>${searchResult.name}</td>
                <td>${searchResult.price}</td>
                <td>${searchResult.currency}</td>
                <td>${searchResult.location}</td>
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
