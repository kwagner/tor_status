<!DOCTYPE HTML>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Search Results</title>
	<link rel="stylesheet" type="text/css" href="/status/web/media/style.css" />
</head>

<body>
	<div id="banner">
		<a href="https://www.torproject.org/"><img src="http://weather.torproject.org/top-left.png" alt="Click to go to home page" width="193" height="79" /></a>
		<img src="http://weather.torproject.org/top-right.png" />
	</div>

	<div id="main-column">
		<h1>Tor Status - Search Results <a href="/status/list/">View All</a></h1>
		<form method="get" action="search">
			<div id="form-div-1">
				<label for="name">Name:</label>
				<input type="text" name="name" id="name" />
			</div>
			<div id="form-div-2">
				<label for="fingerprint">Fingerprint:</label>
				<input type="text" name="fingerprint" id="fingerprint" />
			</div>
			<input type="submit" id="search-submit" value="Search" />
		</form>
		<p>
			<c:if test="${param.name!=''}">
				<c:if test="${param.fingerprint!=''}">
				Showing Tor relays with name <strong>${param.name}</strong> and fingerprint <strong>${param.fingerprint}</strong>.
				</c:if>
				<c:if test="${param.fingerprint==''}">
				Showing Tor relays with name <strong>${param.name}</strong>.
				</c:if>
			</c:if>
			<c:if test="${param.name==''}">
				<c:if test="${param.fingerprint!=''}">
				Showing Tor relays with fingerprint <strong>${param.fingerprint}</strong>.
				</c:if>
				<c:if test="${param.fingerprint==''}">
				<span class="error">You did not specify any search parameters.</span>
				</c:if>
			</c:if>
		</p>
	</div>
</body>
</html>
