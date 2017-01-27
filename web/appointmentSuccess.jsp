<%--
  Created by IntelliJ IDEA.
  User: Dominic
  Date: 14/12/2016
  Time: 8:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="appointment.AppointmentDAO" %>

<html>
<head>
    <title>Title</title>
</head>
<style type="text/css" title="layout" media="screen"> @import url("appointmentstyle.css"); </style>
<%
    String name=request.getParameter("name");
    String nric=request.getParameter("nric");
    String time=request.getParameter("time");
    String date=request.getParameter("date");
    String description=request.getParameter("description");
    if (name != null) {
        session.setAttribute("name", name);
        session.setAttribute("nric", nric);
        session.setAttribute("time", time);
        session.setAttribute("date", date);
        session.setAttribute("description", description);
    } else {
        name = (String)session.getAttribute("name");
        nric = (String)session.getAttribute("nric");
        time = (String)session.getAttribute("time");
        date = (String)session.getAttribute("date");
        description = (String)session.getAttribute("description");
    }
%>
<body>
<form class="form-style-9",>
    <ul>
        <li>
            <h2>Hi</h2> <strong><h1><%=name%>!</h1></strong>
        </li>
        <li>
            <h2>you have made an appointment on </h2><strong><h1> <%=date%></h1></strong> <h2> at</h2><strong><h1><%=time%></h1></strong>
        </li>
        <li>
            <h2>For </h2><strong><h1><%=description%></h1></strong>
        </li>
        <a href="client.jsp" class="h3">Okay</a>
    </ul>
</form>
</body>
</html>