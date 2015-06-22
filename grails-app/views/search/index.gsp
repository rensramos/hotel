<%@ page import="hotel.Hotel" %>
%{--<% def hotelService = application.getAttribute("org.codehaus.groovy.grails.APPLICATION_CONTEXT").getBean("HotelService") %>--}%
<!DOCTYPE html>
<html>
<head>
	<meta name="layout" content="home"/>
	<title>Black Market Hotel</title>
</head>
<body>

<div class="container">
	<div class="row search-container">
		<g:form controller="Search" name="searchForm" method="GET" action="results">
			<div class="col-md-3 input-checkin">
				<input class="height-fix form-control" id="checkIn" placeholder="Check In" name="checkIn"/>
			</div>
			<div class="col-md-3 input-checkout" >
				<input class="height-fix form-control" id="checkOut" placeholder="Check Out" name="checkOut" disabled/>
			</div>
			<div class="col-md-2 dp-location">
				<g:select class="height-fix fluid-width btn btn-default dropdown-toggle" name="dpLocation" from="${Hotel.list()}" optionValue ="${{it.location}}" optionKey="${{it.location}}"/>
			</div>
			<div class="col-md-2 dp-currency">
				<g:select class="height-fix fluid-width btn btn-default dropdown-toggle" name="dpCurrency" from="${currencyName}"/>
			</div>
			<div class="col-md-2 submit-button gotham-bold">
				<g:submitButton controller="Search" action="results" name="Book Now" class="height-fix fluid-width btn btn-primary"/>
			</div>
		</g:form>
	</div>
</div>
</body>

</html>
