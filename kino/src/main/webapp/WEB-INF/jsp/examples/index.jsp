<%@ page import="java.time.LocalDate" %>
<%@ page import="com.sda.kino.RandomNumberGenerator" %>
<%@ page import="java.util.Random" %><%--
  Created by IntelliJ IDEA.
  User: wmroz
  Date: 28.04.2018
  Time: 11:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
    <%@ include file="header.jsp"%>
    <%
        String userAgent = request.getHeader("User-Agent");
        if (userAgent.contains("Edge")){
            response.sendError(HttpServletResponse.SC_FORBIDDEN, "Edge is not supported");
            return;
        }
    %>
    <p>Hello world</p>
    <p>Dzisiaj jest: <%= LocalDate.now()%></p>

    <p>Proponowane liczby lotto na dziś: <%= RandomNumberGenerator.generateLottoNumbers()%></p>

    <p>Przeglądarka: <%= request.getHeader("User-Agent")%></p>
    <!-- Komentarz HTML -->
    <%-- Komentarz JSP --%>

    <h1>Twój szczęśliwy numer na dziś: ${happyNumber}</h1>

</body>
</html>
