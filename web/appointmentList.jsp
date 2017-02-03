<%@ page import="appointment.AppointmentDAO" %>
<%@ page import="appointment.Appointment" %><%--
  Created by IntelliJ IDEA.
  User: Dominic
  Date: 3/2/2017
  Time: 2:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    Appointment s = (Appointment) request.getAttribute("Appointment");
    Appointment h= (Appointment)
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%=s.getPatientName()%>
</body>
</html>
