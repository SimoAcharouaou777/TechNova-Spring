<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 10/25/2024
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
  <title>User List</title>
  <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 p-6">
<div class="container mx-auto">
  <h2 class="text-2xl font-bold mb-4">User List</h2>
  <a href="${pageContext.request.contextPath}/users/create" class="bg-blue-500 text-white px-4 py-2 rounded mb-4 inline-block">Add User</a>
  <table class="min-w-full bg-white border border-gray-200">
    <thead>
    <tr>
      <th class="py-2 px-4 border-b">ID</th>
      <th class="py-2 px-4 border-b">First Name</th>
      <th class="py-2 px-4 border-b">Last Name</th>
      <th class="py-2 px-4 border-b">Username</th>
      <th class="py-2 px-4 border-b">Registration Date</th>
      <th class="py-2 px-4 border-b">Expiration Date</th>
      <th class="py-2 px-4 border-b">Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
      <tr>
        <td class="py-2 px-4 border-b">${user.id}</td>
        <td class="py-2 px-4 border-b">${user.firstName}</td>
        <td class="py-2 px-4 border-b">${user.lastName}</td>
        <td class="py-2 px-4 border-b">${user.userName}</td>
        <td class="py-2 px-4 border-b">${user.registrationDate}</td>
        <td class="py-2 px-4 border-b">${user.expirationDate}</td>
        <td class="py-2 px-4 border-b">
          <a href="${pageContext.request.contextPath}/users/update/${user.id}" class="bg-yellow-500 text-white px-2 py-1 rounded">Update</a>
          <a href="${pageContext.request.contextPath}/users/delete/${user.id}" class="bg-red-500 text-white px-2 py-1 rounded ml-2">Delete</a>
        </td>
      </tr>
    </c:forEach>
    </tbody>
  </table>
</div>
</body>
</html>