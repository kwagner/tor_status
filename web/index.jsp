<!DOCTYPE HTML>
<html>
<head>
	<title>Search Results</title>
	<link rel="stylesheet" type="text/css" href="web/media/style.css" />
	<link rel="stylesheet" type="text/css" href="http://metrics.torproject.org/css/stylesheet-ltr.css">
</head>

<body>
	<div id="banner">
		<a href="https://www.torproject.org/"><img src="http://weather.torproject.org/top-left.png" alt="Click to go to home page" width="193" height="79" /></a>
		<img src="http://weather.torproject.org/top-right.png" />
	</div>

	<div id="main-column">
		<h1>Tor Status</h1>
		<p>You can search for a Tor relay below. Use one or both fields.</p>
		<form method="get" action="search">
			<div>
				<label for="router-name">Name:</label>
				<input type="text" name="router-name" id="router-name" />
			</div>
			<div>
				<label for="router-fingerprint">Fingerprint:</label>
				<input type="text" name="router-fingerprint" id="router-fingerprint" />
			</div>
			<input type="submit" value="Search" />
		</form>
		<p>You can also <a href="show-all-routers">list all known Tor relays</a></p>
	</div>
</body>
</html>
