<!DOCTYPE html>
<%@ page import="java.sql.*" %>
<%
  String url = "jdbc:postgresql://localhost:5432/torstatus";
  String username = "mvitale" ;
  String password = "ernie";
  String query = "SELECT * FROM statusentry "
      + "WHERE validafter = (SELECT MAX(validafter) FROM statusentry) "
      + "ORDER BY bandwidth DESC;";
  Class.forName("org.postgresql.Driver");
  Connection connection = DriverManager.getConnection(url, username, password);
  Statement statement = connection.createStatement();
  ResultSet resultSet = statement.executeQuery(query);
%>
<html>
<head>
	<title>Tor Status - All Routers</title>
	<link rel="stylesheet" type="text/css" href="/status/web/media/style.css" />
</head>

<body>
	<div id="banner">
		<a href="https://www.torproject.org/"><img src="http://weather.torproject.org/top-left.png" alt="Click to go to home page" width="193" height="79" /></a>
		<img src="http://weather.torproject.org/top-right.png" />
	</div>
	
	<div id="main-column">
		<h1>All Tor Relays</h1>
		<table>
			<tr>
				<th class="col-1">Nickname</th>
				<th class="col-2">IP Address</th>
				<th class="col-3">Bandwidth</th>
			</tr>
			<%
			  while (resultSet.next()) {
				String nickname = resultSet.getString("nickname");
				String address = resultSet.getString("address");
				String bandwidth = resultSet.getString("bandwidth");
				String linkTag = "<a href=\"/status/router?descriptor=" + resultSet.getString("descriptor") + "\">";
			%>
			<tr>
				<td class="col-1"><%= linkTag %><%= nickname %></a></td>
				<td class="col-2"><%= address %></td>
				<td class="col-3"><%= bandwidth %></td>
			</tr>
			<%
			  }
			%>
		</table>
	</div>
</body>
</html>
