<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 10/25/2024
  Time: 9:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add User</title>
</head>
<body>
<h2>Add User</h2>
<form action="${pageContext.request.contextPath}/users/create" method="post">
    first name: <input type="text" name="firstName"/><br/>
    last name: <input type="text" name="lastName"/><br/>
    user name: <input type="text" name="userName"/><br/>
    email: <input type="text" name="email"/><br/>
    <input type="submit" value="Add User"/>
</form>
<a href="${pageContext.request.contextPath}/users/list">View User List</a>
</body>
</html>
