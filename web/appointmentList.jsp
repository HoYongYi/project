<%@ page import="appointment.AppointmentDAO" %>
<%@ page import="appointment.*" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Dominic
  Date: 3/2/2017
  Time: 2:23 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <link href="TableStyle.css" rel="stylesheet" type="text/css">

    <title>Title</title>
</head>
<body>
<nav class="navbar navbar-default">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <img src="../images/plus.gif" alt="Logo"/>
            <a class="navbar-brand" href="#">Health Centre</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="/Patient/client.jsp">Home</a></li>
                <li><a href="/billPage.jsp">Check Your Bills</a></li>
                <li><a href="/Guest/newsandevents.jsp">News and Events</a></li>
                <li><a href="/Guest/contactus.jsp">Contact us</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="services.jsp">Services</a></li>
                        <li><a href="/video/video.jsp">Online Consultation</a></li>
                        <li><a href="/appointments.jsp">Appointment</a></li>
                        <li role="separator" class="divider"></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a>Welcome,
                    <%if(null!=session.getAttribute("name"))
                    {
                        out.println(session.getAttribute("name"));
                    }else{
                        out.println("Guest");
                    }
                    %></a></li>
                <li><a><Form action="/logout" method="post"><button>Sign out</button></Form></a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>

<br><br><br>
<table id="table" class="flat-table">
    <tbody>

    <tr>
        <th></th>
        <th >Name</th>
        <th>Nric</th>
        <th > Date</th>
        <th >Time</th>
        <th>Description</th>
        <th></th>
    </tr>

    <%
        AppointmentDAO dao=new AppointmentDAO();
        String nric= (String) session.getAttribute("nric");
        List<Appointment>list=dao.getAllAppointmentNric(nric);

        for (Appointment appointment: list) {
    %>

    <tr>
        <td></td>
        <td><%= appointment.getPatientName()   %>      </td>
        <td><%= appointment.getPatientNric()  %>      </td>
        <td><%= appointment.getDate() %>      </td>
        <td><%= appointment.getTime()%>     </td>
        <td><%= appointment.getDescription()%>     </td>
        <td></td>


    </tr>
    <%
        }
    %>
    </tbody>
</table>


<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
<!-- ==================================================================== -->
</body>
</html>
