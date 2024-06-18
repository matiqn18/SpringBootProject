<%-- 
    Document   : index
    Created on : 11 cze 2024, 16:06:41
    Author     : Matian
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Project TSS</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-light">
<div class="container">
    <div><h1 class="text-white">Łukaszczyk Michał IO1</h1></div>

    <div class="btn-group" role="group" aria-label="Basic example">
        <a href="<c:url value='/users' />" class="btn btn-primary">CRUD</a>
        <a href="<c:url value='/api/json' />" class="btn btn-success">Rest JSON</a>
        <a href="<c:url value='/logout'/>" class="btn btn-danger">Wyloguj</a>
    </div>

    <div>
        <p>Ta strona została odwiedzona ${visitCount} razy.</p>
        <h2>Spring Boot Actuator</h2>
        <a href="<c:url value='/actuator' />" class="btn btn-info">Actuator</a>
        <a href="<c:url value='/actuator/info' />" class="btn btn-info">Actuator Info</a><br/>

        Wersja spring <c:out value="${springVersion}"/><br/>
        Parametr z pliku pom.xml przez application.properties - Wersja JDK <c:out value="${myjdkversion}"/> <br/>
        Parametr z pliku pom.xml przez application.properties - Wersja Spring Boot Starter <c:out value="${springbootversion}"/> <br/>
        Parametr z Maven przez application.properties - Nazwa aplikacji:  <c:out value="${applicationName}"/> <br/>
        Parametr z Maven przez application.properties - Wersja aplikcaji: <c:out value="${buildVersion}"/> <br/>
        Parametr z Maven przez application.properties - Czas kompilacji:  <c:out value="${buildTimestamp}"/> <br/> 
        Parametr z pliku pom.xml - Nazwa artefaktu: <c:out value="${artifactApp}"/> <br/>
        Parametr z pliku pom.xml - Wersja artefaktu: <c:out value="${versionApp}"/> <br/>
    </div>
    
</div>
</body>
</html>
