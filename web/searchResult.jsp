<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 3.2 Final//EN">

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
	<title>Search Results</title>
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
		<p>Name: ${param.name}</p>
		<p>Fingerprint: ${param.fingerprint}</p>
	</div>

</body>

