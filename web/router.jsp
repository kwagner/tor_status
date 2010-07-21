<%@ page import="java.sql.*" %>
<%@ page import="java.util.regex.*" %>
<%
  String url = "jdbc:postgresql:tordir?user=mvitale";
  String queryDesc = "SELECT * FROM descriptor WHERE descriptor = ?";
  String queryExtra = "SELECT * FROM extrainfo WHERE extrainfo = ?";
  PreparedStatement preparedStatement = null;
  ResultSet resultSet = null;
  Connection connection = null;
%>
<html>
  <head>
    <title>Minimal Tor Network Status</title>
  </head>
  <body>
    <%
      String address = "";
      int orPort = 0, dirPort = 0;
      long bandwidthAvg = 0L, bandwidthBurst = 0L, bandwidthObserved = 0L;
      String platform = "";
      long uptime = 0L;
      String rawDesc = "";
      String extraInfoDigest = "";
      String rawExtra = "";
      String descriptorParameter = request.getParameter("descriptor");
      if (descriptorParameter != null &&
          descriptorParameter.length() == 40) {
        descriptorParameter = descriptorParameter.toLowerCase();
        Pattern descriptorPattern = Pattern.compile("^[0-9a-f]+$");
        Matcher descriptorMatcher = descriptorPattern.matcher(
            descriptorParameter);
        if (descriptorMatcher.matches()) {
          Class.forName("org.postgresql.Driver");
          connection = DriverManager.getConnection(url);
          preparedStatement = connection.prepareStatement(queryDesc);
          preparedStatement.setString(1, descriptorParameter);
          resultSet = preparedStatement.executeQuery();
          if (resultSet.next()) {
            address = resultSet.getString("address");
            orPort = resultSet.getInt("orport");
            dirPort = resultSet.getInt("dirport");
            bandwidthAvg = resultSet.getLong("bandwidthavg");
            bandwidthBurst = resultSet.getLong("bandwidthburst");
            bandwidthObserved = resultSet.getLong("bandwidthobserved");
            platform = resultSet.getString("platform");
            uptime = resultSet.getLong("uptime");
            extraInfoDigest = resultSet.getString("extrainfo");
            rawDesc = new String(resultSet.getBytes("rawdesc"),
                "US-ASCII");
    %>
    <table>
      <tr><td><b>IP address:</b></td><td><%= address %></td></tr>
      <tr><td><b>OR port:</b></td><td><%= orPort %></td></tr>
      <tr><td><b>Dir port:</b></td><td><%= dirPort %></td></tr>
      <tr><td><b>Average bandwidth:</b></td>
        <td><%= bandwidthAvg / 1024L %> KiB/s</td></tr>
      <tr><td><b>Bandwidth burst:</b></td>
        <td><%= bandwidthBurst / 1024L %> KiB/s</td></tr>
      <tr><td><b>Observed bandwidth:</b></td>
        <td><%= bandwidthObserved / 1024L %> KiB/s</td></tr>
      <tr><td><b>Platform:</b></td><td><%= platform %></td></tr>
      <tr><td><b>Uptime:</b></td>
        <td><%= String.format("%d:%02d:%02d", uptime / 3600,
            (uptime / 60) % 60, uptime % 60) %> hours</td></tr>
    </table>
    Server descriptor:
    <pre><%= rawDesc %></pre>
    <%
          }
        }
      }
      if (extraInfoDigest != null && extraInfoDigest.length() > 0) {
        preparedStatement = connection.prepareStatement(queryExtra);
        preparedStatement.setString(1, extraInfoDigest);
        resultSet = preparedStatement.executeQuery();
        if (resultSet.next()) {
          rawExtra = new String(resultSet.getBytes("rawdesc"),
              "US-ASCII");
        }
      }
    %>
    Extra-info descriptor:
    <pre><%= rawExtra %></pre>
  </body>
</html>

