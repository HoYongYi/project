<%--
  Created by IntelliJ IDEA.
  User: Dominic
  Date: 14/12/2016
  Time: 11:19 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="appointment.AppointmentDAO" %>

<html>
<head>
    <title>Title</title>
</head>
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
Hi <br>
<%= name%><br>
<%= nric%><br>
<%= time%><br>
<%= date%><br>
<%= description%>
<br><a href="createAppointment.html">Back to Home</a>
</body>
</html>