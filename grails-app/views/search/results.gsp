
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
        <th>CheckIn</th>
        <th>Checkout</th>
        <th>Currency Conversion</th>
        <th>Location</th>
        <th>Total Amount Due</th>

        %{--<th>TotalPrice</th>--}%
        <tbody>
        <g:each in="${searchResults}" var="searchResult">
            <tr>
                <td>${searchResult.name}</td>
                <td>${searchResult.roomRate}</td>
                <td><g:formatDate format="yyyy-MM-dd" date="${checkIn}"/></td>
                <td> <g:formatDate format="yyyy-MM-dd" date="${checkOut}"/></td>
                <td>${currencyName}</td>
                <td>${searchResult.location}</td>
                <td>${totalPriceDue}</td>

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
