<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="com.sda.kino.project.dto.ErrorMessages" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <%@ include file="head.jsp"%>

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
<div class="container-fluid" id="acc">
    <div class="row content">
        <div class="col-sm-2 sidenav">
            <p><a href="#">Moje Rezerwacje</a></p>
            <p><a href="#">Historia</a></p>
            <p><a href="/change_password">Zmiana Hasła</a></p>
        </div>
        <div class="col-sm-8 text-left">
            <h1>Dane Kontaktowe</h1>
            <c:if test="${errorMessage ne null}">
                <c:choose>
                    <c:when test="${errorMessage eq ErrorMessages.CHANGE_PASSWORD_SUCCESS}">
                        <span>Hasło zostało zmienione.</span>
                    </c:when>
                    <c:otherwise> <span>Hasło xxx zostało zmienione.</span></c:otherwise>
                </c:choose>
            </c:if>
            <form name="accountForm" action="/account" method="get">
            <div class="container bootstrap snippet">
                <div class="panel-body inf-content">
                    <div class="row">
                        <div class="col-md-4">
                            <img alt="" style="width:400px;" title="" class="img-circle img-thumbnail isTooltip"
                                 src="https://www.meme-arsenal.com/memes/a57de905943d7fb29d029a9f98d04408.jpg">
                            <ul title="Ratings" class="list-inline ratings text-center">
                                <li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
                                <li><a href="#"><span class="glyphicon glyphicon-star"></span></a></li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <div class="table-responsive">
                                <table class="table table-condensed table-responsive table-user-information">
                                    <tbody>
                                    <tr>
                                        <td>
                                            <strong>
                                                <span class="glyphicon glyphicon-user  text-primary"></span>
                                                Imię
                                            </strong>
                                        </td>
                                        <td class="text-primary">
                                            ${user.firstName}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>
                                                <span class="glyphicon glyphicon-cloud text-primary"></span>
                                                Nazwisko
                                            </strong>
                                        </td>
                                        <td class="text-primary">
                                            ${user.lastName}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>
                                                <span class="glyphicon glyphicon-envelope text-primary"></span>
                                                Email
                                            </strong>
                                        </td>
                                        <td class="text-primary">
                                            ${user.email}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>
                                                <span class="glyphicon glyphicon-calendar text-primary"></span>
                                                Dołączył
                                            </strong>
                                        </td>
                                        <td class="text-primary">
                                            ${user.registeredDate}
                                        </td>
                                    </tr>
                                    <tr>
                                        <td>
                                            <strong>
                                                <span class="glyphicon glyphicon-asterisk text-primary"></span>
                                                Ilość punktów
                                            </strong>
                                        </td>
                                        <td class="text-primary">
                                            ${uzytkownik.iloscPunktow}
                                        </td>
                                    </tr>
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            </form>
            </div>
        </div>
    </div>

</body>
</html>