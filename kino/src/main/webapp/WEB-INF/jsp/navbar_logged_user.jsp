<%--
  Created by IntelliJ IDEA.
  User: zaleski
  Date: 12.05.2018
  Time: 09:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="/"><span class="cinema_name">Kino PROSIACZEK</span></a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="/">Strona Główna</a></li>
            <li><a href="/repertoire">Repertuar</a></li>
            <li class="active"><a href="/add_movie">Dodaj film</a></li>
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="/account"><span class="glyphicon glyphicon-user"></span> <strong> ${USERNAME}</strong>
            </a></li>
        </ul>
    </div>
</nav>