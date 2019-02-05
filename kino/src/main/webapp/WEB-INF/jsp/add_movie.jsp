<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sda.kino.project.dto.ErrorMessages" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en">

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

<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="cinema_main.html"><span class="cinema_name">(super nazwa)</span></a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="#">Strona Główna</a></li>
            <li><a href="repertuar.html">Repertuar</a></li>
            <li><a href="kontakt.html">Kontakt</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/register"><span class="glyphicon glyphicon-user"></span> Zarejestruj się</a></li>
            <li><a href="/login"><span class="glyphicon glyphicon-log-in"></span> Logowanie</a></li>
        </ul>
    </div>
</nav>


<h1 align="center">Dodaj nowy film</h1>
<c:if test="${errorMessage ne null}">
    <c:choose>
        <c:when test="${errorMessage eq ErrorMessages.VALIDATION_ERROR}">
            <span>Nieprawidłowe dane logowania</span>
        </c:when>
        <c:when test="${errorMessage eq ErrorMessages.SUCCESS}">
            <span>Dodano film do bazy</span>
        </c:when>
        <c:when test="${errorMessage eq ErrorMessages.FAILURE}">
            <span>Nie udało się dodać filmu.</span>
        </c:when>
        <c:otherwise>
            <span>Wystąpił nieoczekiwany błąd</span>
        </c:otherwise>
    </c:choose>
</c:if>

<form name="addMovieForm" action="/add_movie" method="post">
    <div class="container-fluid" id="loginContainer">
        <h2>Podaj dane filmu</h2>

        <div class="input-group">
            <input type="text" class="form-control" name="title" placeholder="Tytuł">
            <span class="input-group-addon"><i class="glyphicon glyphicon-facetime-video"></i></span>
        </div>

        <div class="input-group">
            <select name="category" class="form-control">
                <c:forEach items="${categories}" var="category">
                        <option VALUE="${category}">
                                ${category.friendlyName}
                        </option>
                </c:forEach>

            </select>
            <span class="input-group-addon"><i class="glyphicon glyphicon-eye-open"></i></span>
        </div>

        <div class="input-group">
            <input type="textarea" class="form-control" name="description" placeholder="Opis filmu">
            <span class="input-group-addon"><i class="glyphicon glyphicon-info-sign"></i></span>
        </div>


        <div class="input-group">
            <input type="text" class="form-control" name="dateProduction" placeholder="Rok produkcji">
            <span class="input-group-addon"><i class="glyphicon glyphicon-sound-dolby"></i></span>
        </div>

        <div class="input-group">
            <input type="text" class="form-control" name="timeDuration" placeholder="Czas trwania">
            <span class="input-group-addon"><i class="glyphicon glyphicon-time"></i></span>
        </div>


        <div class="input-group">
            <input type="textarea" class="form-control" name="movieCast" placeholder="Obsada">
            <span class="input-group-addon"><i class="glyphicon glyphicon-user"></i></span>
        </div>


        <button id="Submitbutton" type="submit">Dodaj film</button>
    </div>
</form>


</body>

</html>