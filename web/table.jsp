<%@ page import="java.util.ArrayList" %>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Answer</title>
    <link rel="stylesheet" type="text/css" href="post_styles.css"/>
    <meta charset="UTF-8">
</head>
<body>
<table id="answers" width="100%">
    <tr>
        <th>X</th>
        <th>Y</th>
        <th>R</th>
        <th>Результат</th>
    </tr>

    <%
        // retrieve your list from the request, with casting
        ArrayList<String> list = (ArrayList<String>)request.getAttribute("prevRequests");

        // print the information about every category of the list
        for(String prevRequest : list) {
            out.println("<tr>");
            for(String attribute : prevRequest.split(" ")) {
                out.println("<td class='answer-item'>");
                out.println(attribute);
                out.println("</td>");
            }
            out.println("</tr>");
        }
    %>
</table>

<p><a href="lab2">Вернуться</a></p>

</body>
