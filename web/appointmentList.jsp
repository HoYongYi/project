<%@ page import="appointment.AppointmentDAO" %>
<%@ page import="appointment.Appointment" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Dominic
  Date: 3/2/2017
  Time: 2:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
AppointmentDAO dao=new AppointmentDAO();
    List<Appointment>list=dao.getAllAppointment();
%>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%for(int i =0; i<list.size();i++) {
    String var=list.get(i).getPatientName(); %>

  <%out.println(var);%><br>
<%}%>

</body>
</html>
