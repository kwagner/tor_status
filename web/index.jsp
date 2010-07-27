<!DOCTYPE HTML>
<html>
<head>
	<title>Search Results</title>
	<link rel="stylesheet" type="text/css" href="web/media/style.css" />
</head>

<body>
	<div id="banner">
		<a href="https://www.torproject.org/"><img src="http://weather.torproject.org/top-left.png" alt="Click to go to home page" width="193" height="79" /></a>
		<img src="http://weather.torproject.org/top-right.png" />
	</div>

	<div id="main-column">
		<div id="header">
			<h1>Tor Status</h1>
		</div>
		<p>You can search for a Tor relay below. Use one or both fields.</p>
		<form method="get" action="search">
			<div id="form-div-1">
				<label for="router-name">Name:</label>
				<input type="text" name="router-name" id="router-name" />
			</div>
			<div id="form-div-2">
				<label for="router-fingerprint">Fingerprint:</label>
				<input type="text" name="router-fingerprint" id="router-fingerprint" />
			</div>
			<input type="submit" id="search-submit" value="Search" />
		</form>
		<p>You can also <a href="show-all-routers">list all known Tor relays</a></p>
	</div>
</body>
</html>
