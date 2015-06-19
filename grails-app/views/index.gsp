<%@ page import="hotel.Hotel" %>
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
				<input class="height-fix form-control" id="checkOut" placeholder="Check Out" name="checkOut"/>
			</div>
			<div class="col-md-2 dp-location">
				<g:select class="height-fix fluid-width btn btn-default dropdown-toggle" name="dpLocation" from="${Hotel.list()}" optionValue ="${{it.location}}" optionKey="${{it.location}}"/>
			</div>
			<div class="col-md-2 dp-currency">
				<div class="dropdown">
					<button class="height-fix fluid-width btn btn-default dropdown-toggle" name="dropdownCurrency" data-toggle="dropdown">
						Currency
						<span class="caret"></span>
					</button>
					<ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu1">
						<li><a href="#">YEN</a></li>
						<li><a href="#">EURO</a></li>
						<li><a href="#">USD</a></li>
						<li><a href="#">PESO</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-2 submit-button gotham-bold">
				<g:submitButton controller="Search" action="results" name="Book Now" class="height-fix fluid-width btn btn-primary"/>
			</div>
		</g:form>
	</div>
</div>
</body>

</html>
