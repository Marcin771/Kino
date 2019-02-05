<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sda.kino.project.dto.ErrorMessages" %>
<html lang="en">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <%@ include file="head.jsp"%>

    <title>Zmiana Hasła</title>
</head>
<body>
<div id="extraLayer">
<c:choose>
    <c:when test="${USERNAME eq null}">
        <%@ include file="navbar_not_logged.jsp" %>
    </c:when>
    <c:otherwise>
        <%@ include file="navbar_logged_user.jsp" %>
    </c:otherwise>
</c:choose>

<h1 align="center">Zmiana Hasła</h1>
<c:if test="${errorMessage ne null}">
    <c:choose>
        <c:when test="${errorMessage eq ErrorMessages.VALIDATION_ERROR}">
            <span>Wprowadzone dane są nieprawidłowe.</span>
        </c:when>
        <c:otherwise>
            <span>Wystąpił nieoczekiwany błąd.</span>
        </c:otherwise>
    </c:choose>
</c:if>

<form name="changeForm" method="post" action="/change_password">

    <div class="container-fluid" id="loginContainer">
        <div class="input-group">
            <input id="password1" type="password" class="form-control" name="oldPassword" placeholder="Stare hasło">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        </div>
        <div class="input-group">
            <input id="password2" type="password" class="form-control" name="newPassword" placeholder="Wprowadź nowe hasło">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        </div>
        <div class="input-group">
            <input id="password3" type="password" class="form-control" name="repeatedNewPassword" placeholder="Powtórz nowe hasło.">
            <span class="input-group-addon"><i class="glyphicon glyphicon-lock"></i></span>
        </div>
        <button id="changebutton" type="submit">Zmień hasło</button>
    </div>
</form>
</div>
</body>
</html>