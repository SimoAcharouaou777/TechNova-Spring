<!DOCTYPE html>
<html>
<head>
    <title>User Management</title>
    <link href="https://cdn.jsdelivr.net/npm/tailwindcss@2.2.19/dist/tailwind.min.css" rel="stylesheet">
</head>
<body class="bg-gray-100 flex items-center justify-center min-h-screen">
<div class="bg-white p-8 rounded shadow-md text-center">
    <h1 class="text-3xl font-bold mb-6">Welcome to User Management</h1>
    <div class="space-x-4">
        <a href="${pageContext.request.contextPath}/users/create" class="bg-blue-500 text-white px-4 py-2 rounded hover:bg-blue-600">Add User</a>
        <a href="${pageContext.request.contextPath}/users/list" class="bg-green-500 text-white px-4 py-2 rounded hover:bg-green-600">View User List</a>
    </div>
</div>
</body>
</html>