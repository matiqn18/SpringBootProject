<%-- 
    Document   : table
    Created on : 11 cze 2024, 16:42:00
    Author     : Matian
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Users List</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <style>
        body {
            background-color: #343a40; /* Czarny kolor tła */
            color: white; /* Biały kolor tekstu */
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <a href="<c:url value='/' />" class="btn btn-dark mb-3">Back</a>
        <h1 class="text-center mb-4">List of Users</h1>
        <a href="<c:url value='/users/add' />" class="btn btn-success mb-3">Add New User</a>
        <table class="table table-dark table-striped">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Surname</th>
                    <th>Position</th>
                    <th>Department</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="usr" items="${user}">
                    <tr>
                        <td>${usr.id}</td>
                        <td>${usr.name}</td>
                        <td>${usr.surname}</td>
                        <td>${usr.position}</td>
                        <td>${usr.department}</td>
                        <td>
                            <a href="<c:url value='/users/edit/${usr.id}' />" class="btn btn-primary btn-sm">Edit</a>
                            <form action="<c:url value='/users/delete/${usr.id}' />" method="post" style="display:inline;">
                                <input type="hidden" name="_method" value="DELETE">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </div>
</body>
</html>
