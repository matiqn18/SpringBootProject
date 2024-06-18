<%-- 
    Document   : userForm
    Created on : 11 cze 2024, 20:26:31
    Author     : Matian
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>${actionType} User</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body  class="bg-dark text-light">
    <div class="container mt-5">
        <h1 class="mb-4">${actionType} User</h1>
        <a href="javascript:history.back()" class="btn btn-light mb-3">Back</a>
        <form action="<c:url value='/users/${action}' />" method="post">
            <c:if test="${actionType == 'Edit'}">
                <input type="hidden" name="_method" value="put">
            </c:if>
            <div class="form-group">
                <label for="name">Name:</label>
                <input type="text" id="name" name="name" value="${user.name}" class="form-control">
            </div>
            <div class="form-group">
                <label for="surname">Surname:</label>
                <input type="text" id="surname" name="surname" value="${user.surname}" class="form-control">
            </div>
            <div class="form-group">
                <label for="position">Position:</label>
                <input type="text" id="position" name="position" value="${user.position}" class="form-control">
            </div>
            <div class="form-group">
                <label for="department">Department:</label>
                <input type="text" id="department" name="department" value="${user.department}" class="form-control">
            </div>
            <button type="submit" class="btn btn-primary">${actionType} User</button>
        </form>
    </div>
</body>
</html>
