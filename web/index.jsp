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

	<div class="main-column" class="center">
		<h1 id="page-title">Tor Status</h1>
		<p>You can search for a Tor relay below. Use one or both fields.</p>
	
		<form action="RouterSearch" method="post">
			<div id="name-field">
				<label for="nameinp">Name:</label>
				<input type="text" name="name" id="nameinp" size=15>
			</div>
			<div id="fingerprint-field">
				<label for="fingerinp">Fingerprint:</label>
				<input type="text" name="fingerprint" id="fingerinp" size=40>
			</div>
			<div id="search-button">
				<input type="submit" value="Search">
			</div>
		</form>
	</div>
</body>
	
