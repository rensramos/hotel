
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
        <th>Name</th>
        <th>Price</th>
        <th>Currency</th>
        <th>Location</th>
        <th>CheckIn</th>
        <th>Checkout</th>
        <th>TotalPrice</th>
        <tbody>
        <g:each in="${searchResults}" var="searchResult">
            <tr>
                <td>${searchResult.name}</td>
                <td>${searchResult.price}</td>
                <td>${searchResult.currency}</td>
                <td>${searchResult.location}</td>
                <td>CheckIn</td>
                <td>Checkout</td>
                <td>Total Price</td>
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
