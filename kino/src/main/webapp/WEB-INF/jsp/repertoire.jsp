<%--
  Created by IntelliJ IDEA.
  User: Beata1
  Date: 2018-05-13
  Time: 11:42
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
    <meta charset="UTF-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Your file css -->
    <link rel="stylesheet" href="css/cinema_style.css"/>
    <title>Repertuar</title>
    <script src="http://code.jquery.com/jquery.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

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
<%@ include file="reserve_modal.jsp" %>

<div id="container">
    <h2>Repertuar</h2>

    <div>
        <!-- Form code begins -->
        <form method="get" name="selectDate" action="/repertoire">
            <div class="form-group"> <!-- Date input -->
                <h3>Wybierz datę:</h3>
                <input class="form-control" id="date" name="date" placeholder="MM/DD/YYY" type="text"/>
            </div>
            <div class="form-group"> <!-- Submit button -->
                <button class="btn btn-primary " name="submit" type="submit">Submit</button>
            </div>
        </form>
        <!-- Form code ends -->

        <c:choose>
            <c:when test="${datePicked ne null}">
                <h2>wybrana data: ${datePicked}</h2>
            </c:when>
        </c:choose>

    </div>
</div>

<script type="text/javascript"
        src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/js/bootstrap-datepicker.min.js"></script>
<link rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-datepicker/1.4.1/css/bootstrap-datepicker3.css"/>


<table class="table table-striped table-light">
    <thead>
    <tr>
        <th scope="col">Tytuł</th>
        <th scope="col">Seansy</th>
    </tr>
    </thead>
    <tbody>
    <c:choose>
        <c:when test="${listOfMovies ne null}">

            <c:forEach items="${listOfMovies}" var="movie">
                <tr>
                    <th scope="row">${movie.getTitle()}</th>
                    <c:forEach items="${movie.getListOfSeance()}" var="seance">

                        <%--<td><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" >${seance.getDataStartTime()}</button></td>--%>
                        <%--<td><a href="#myModal" data-toggle="modal" movie-title="${movie.title}" movie-seance="${seance.getDataStartTime()}">${seance.getDataStartTime()}</a></td>--%>

                        <%--<td><button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#myModal" ></button></td>--%>
                        <td><a class="btn btn-primary announce"
                               data-toggle="modal"
                               data-title="${movie.title}"
                               data-actors="${movie.actors}"
                               data-description="${movie.movieDescription}"
                               data-start="${seance.getDataStartTime()}">${seance.getDataStartTime()}</a></td>
                    </c:forEach>
                </tr>

            </c:forEach>
        </c:when>
    </c:choose>
    </tbody>
</table>


<script>
    $(document).ready(function () {
        var date_input = $('input[name="date"]'); //our date input has the name "date"
        var container = $('.bootstrap-iso form').length > 0 ? $('.bootstrap-iso form').parent() : "body";
        date_input.datepicker({
            format: 'mm/dd/yyyy',
            container: container,
            todayHighlight: true,
            autoclose: true
        })
    })
</script>

</body>
</html>
