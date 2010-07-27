<!DOCTYPE HTML>
<html>
<head>
	<title>Search</title>
	<link rel="stylesheet" type="text/css" href="web/media/style.css" />
</head>

<body>
	<div id="banner">
		<a href="https://www.torproject.org/"><img src="http://weather.torproject.org/top-left.png" alt="Click to go to home page" width="193" height="79" /></a>
		<img src="http://weather.torproject.org/top-right.png" />
	</div>

	<div id="main-column">
		<h1>Tor Status</h1>
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
			<a href="show-all-routers">View all Tor relays</a>
		</p>
	</div>
</body>
</html>
