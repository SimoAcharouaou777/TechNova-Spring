<%--
  Created by IntelliJ IDEA.
  User: Youcode
  Date: 10/25/2024
  Time: 9:39 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add User</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 p-6">
<div class="container mx-auto">
    <h2 class="text-2xl font-bold mb-4">Add User</h2>
    <form action="${pageContext.request.contextPath}/users/create" method="post" class="bg-white p-6 rounded shadow-md">
        <div class="mb-4">
            <label class="block text-gray-700">First Name:</label>
            <input type="text" name="firstName" class="w-full px-3 py-2 border rounded" />
        </div>
        <div class="mb-4">
            <label class="block text-gray-700">Last Name:</label>
            <input type="text" name="lastName" class="w-full px-3 py-2 border rounded" />
        </div>
        <div class="mb-4">
            <label class="block text-gray-700">Username:</label>
            <input type="text" name="userName" class="w-full px-3 py-2 border rounded" />
        </div>
        <div class="mb-4">
            <label class="block text-gray-700">Email:</label>
            <input type="text" name="email" class="w-full px-3 py-2 border rounded" />
        </div>
        <div class="mb-4">
            <input type="submit" value="Add User" class="bg-blue-500 text-white px-4 py-2 rounded" />
        </div>
    </form>
    <a href="${pageContext.request.contextPath}/users/list" class="text-blue-500">View User List</a>
</div>
</body>
</html>