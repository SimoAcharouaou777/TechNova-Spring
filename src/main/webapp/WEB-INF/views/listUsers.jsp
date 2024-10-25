<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 10/25/2024
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>User List</title>
</head>
<body>
<h2>User List</h2>
<a href="${pageContext.request.contextPath}/users/create">Add User</a>
<table>
  <tr>
    <th>ID</th>
    <th>firstName</th>
    <th>username</th>

    <th>Registration Date</th>
    <th>Expiration Date</th>
  </tr>
  <!-- Loop through users and display here -->
</table>
</body>
</html>
