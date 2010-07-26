<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">
<html>
<head>
	<title>Tor Status</title>
	<link rel="stylesheet" type="text/css" href="http://metrics.torproject.org/css/stylesheet-ltr.css">
</head>

<body>

	<div class="center">
		<table class="banner" border="0" cellpadding="0" cellspacing="0" summary="">
			<tr>
				<td class="banner-left">
					<a href="https://www.torproject.org/"><img src="http://weather.torproject.org/top-left.png" alt="Click to go to home page" width="193" height="79"></a>
				</td>
				<td class="banner-middle">
					&nbsp
				</td>
				<td class="banner-right">
				</td>
			</tr>
		</table>
	</div>

	<div class="main-column" class="center">
		<h1 id="page-title">Tor Status</h1>
		<p>You can search for a Tor relay below. Use one or both fields.</p>
	
		<form method="get" action="search">
			<fieldset>
				<legend>Relay search:</legend>
				<label for="nameinp">Name:</label>
				<input type="text" name="name" id="nameinp" size=15>
				<label for="fingerinp">Fingerprint:</label>
				<input type="text" name="fingerprint" id="fingerinp" size=40>
				<input type="submit" value="Search">
			</fieldset>
		</form>
		<p>You can also <a href="show-all-routers">list all known Tor relays</a></p>
	</div>
</body>
	
