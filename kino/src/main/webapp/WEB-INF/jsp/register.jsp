<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sda.kino.project.dto.ErrorMessages" %>
<html lang="en">

<head>

    <meta charset="UTF-8">

    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Your file css -->
    <link rel="stylesheet" href="css/cinema_style.css" />

    <title>Dane osobowe</title>

</head>

<body>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:choose>
    <c:when test="${USERNAME eq null}">
        <%@ include file="navbar_not_logged.jsp" %>
    </c:when>
    <c:otherwise>
        <%@ include file="navbar_logged_user.jsp" %>
    </c:otherwise>
</c:choose>


<h1 align="center">Rejestracja </h1>
<c:if test="${errorMessage ne null}">
    <c:choose>
        <c:when test="${errorMessage eq ErrorMessages.VALIDATION_ERROR}">
            <span>Podczas rejestracji wystąpiły błędy walidacji</span>
        </c:when>
        <c:otherwise>
            <span>Wystąpił nieoczekiwany błąd</span>
        </c:otherwise>
    </c:choose>
</c:if>


<form name="registerForm" action="/register" method="post">
    <div class="container-fluid" id="loginContainer">
        <h2>Podaj swoje dane</h2>

        <div class="input-group">
            <input type="text" class="form-control" name="firstName" placeholder="Imię">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        </div>
        <div class="input-group">
            <input type="text" class="form-control" name="lastName" placeholder="Nazwisko">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        </div>
        <div class="input-group">
            <input type="text" class="form-control" name="login" placeholder="Login">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        </div>
        <div class="input-group">
            <input id="email" type="text" class="form-control" name="email" placeholder="e-mail">
            <span class="input-group-addon"><i class="glyphicon glyphicon-envelope"></i></span>
        </div>
        <div class="input-group">
            <input id="password" type="password" class="form-control" name="password" placeholder="Hasło">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        </div>
        <div class="input-group">
            <input type="password" class="form-control" name="repeatedPassword" placeholder="Powtórz Hasło">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        </div>
        <button id="registerbutton" type="submit">Zarejestruj</button>
    </div>
</form>


</body>

</html>