<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: wmroz
  Date: 28.04.2018
  Time: 14:54
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%@ include file="header.jsp"%>
Imiona na podstawie filtra to: ${imiona}

<table>
    <th>Imiona</th>
    <%
        List<String> imiona = (List<String>) request.getAttribute("imiona");
        for (String imie : imiona) {
            out.println(String.format("<tr><td>%s</td></tr>", imie));
        }
    %>
</table>

<table>
    <th>Imiona</th>
    <c:forEach items="${imiona}" var="imie">
        <tr>
            <td>
                    ${imie}
            </td>
        </tr>
    </c:forEach>
</table>


</body>
</html>
