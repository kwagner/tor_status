<%@ page import="java.sql.*" %>
<%
  String url = "jdbc:postgresql:torstatus?user=mvitale&password=ernie";
  String query = "SELECT * FROM statusentry "
      + "WHERE validafter = (SELECT MAX(validafter) FROM statusentry) "
      + "ORDER BY bandwidth DESC;";
  Class.forName("org.postgresql.Driver");
  Connection connection = DriverManager.getConnection(url);
  Statement statement = connection.createStatement();
  ResultSet resultSet = statement.executeQuery(query);
%>
<html>
  <head>
    <title>Minimal Tor Network Status</title>
  </head>
  <body>
    <table>
    <tr>
      <td><b>Nickname</b></td>
      <td><b>IP address</b></td>
      <td><b>Bandwidth</b></td>
      <td><b>Details</b></td>
    </tr>
    <%
      while (resultSet.next()) {
        String nickname = resultSet.getString("nickname"); 
        String address = resultSet.getString("address"); 
        String bandwidth = resultSet.getString("bandwidth"); 
    %>
    <tr>
      <td><%= nickname %></td>
      <td><%= address %></td>
      <td><%= bandwidth %></td>
      <td><%
        out.println("<a href=\"router.jsp?descriptor=" +
            resultSet.getString("descriptor") + "\">Details</a>");
      %></td>
    </tr>
    <%
      }
    %>
    </table>
  </body>
</html>

