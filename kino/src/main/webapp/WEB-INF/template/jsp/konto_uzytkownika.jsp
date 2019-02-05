<%@ page import="com.sda.cinema.model.Uzytkownik" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css"
          integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
    <!-- Your file css -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/WEB-INF/css/cinema_style.css" type="text/css"/>
    <style>
        * {
            margin:0;
            padding:0;
        }


        body {
            background:#000000;
            font-size:200%;
            line-height:1em;
            color:#858585;
        }
    </style>

    <title>JAKAS NAZWA KINA</title>
</head>
<body>
<!--Pasek nawigacyjny na gorze strony-->
<nav class="navbar navbar-inverse">
    <div class="container-fluid">
        <div class="navbar-header">
            <a class="navbar-brand" href="${pageContext.request.contextPath}/WEB-INF/cinema_main.html"><span class="cinema_name">(super nazwa)</span></a>
        </div>
        <ul class="nav navbar-nav">
            <li class="active"><a href="${pageContext.request.contextPath}/WEB-INF/cinema_main.html">Strona Główna</a></li>
            <!--<li><a href="repertuar.html">Repertuar</a></li>-->
            <!--<li><a href="kontakt.html">Kontakt</a></li>-->
        </ul>
        <ul class="nav navbar-nav navbar-right">
            <li><a href="konto"><span class="glyphicon glyphicon-user"></span> <strong>${uzytkownik.login}</strong>
                </a></li>
        </ul>
    </div>
</nav>
<!--________________________________________________________________-->


<div class="container-fluid">
    <div class="row content">
        <div class="col-sm-2 sidenav">
            <p><a href="#">Link</a></p>
            <p><a href="#">Link</a></p>
            <p><a href="#">Link</a></p>
        </div>
        <div class="col-sm-8 text-left">
            <h1>Dane Kontaktowe</h1>
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
                                            ${uzytkownik.imie}
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
                                            ${uzytkownik.nazwisko}
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
                                            ${uzytkownik.email}
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
                                            ${uzytkownik.dataUtworzenia}
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

        </div>
    </div>
</div>

</body>
</html>