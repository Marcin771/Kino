<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sda.kino.project.dto.ErrorMessages" %>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Your file css -->
    <link rel="stylesheet" href="css/cinema_style.css"/>

    <title>Dane osobowe</title>
</head>
<body>
<c:choose>
    <c:when test="${USERNAME eq null}">
        <%@ include file="navbar_not_logged.jsp" %>
    </c:when>
    <c:otherwise>
        <%@ include file="navbar_logged_user.jsp" %>
    </c:otherwise>
</c:choose>
<h1 align="center">Logowanie</h1>
<c:if test="${errorMessage ne null}">
    <c:choose>
        <c:when test="${errorMessage eq ErrorMessages.VALIDATION_ERROR}">
            <span>Nieprawidłowe dane logowania</span>
        </c:when>
        <c:otherwise>
            <span>Wystąpił nieoczekiwany błąd</span>
        </c:otherwise>
    </c:choose>
</c:if>
<form method="post" action="/login">

    <div class="container-fluid" id="loginContainer">
        <div class="input-group">
            <input id="email" type="text" class="form-control" name="login" placeholder="e-mail">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        </div>
        <div class="input-group">
            <input id="password" type="password" class="form-control" name="password" placeholder="Hasło">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        </div>
        <button id="loginbutton" type="submit">Zaloguj</button>
    </div>
</form>


</body>
</html>