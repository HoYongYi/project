<%--
  Created by IntelliJ IDEA.
  User: Dominic
  Date: 1/2/2017
  Time: 3:02 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="appointment.AppointmentDAO" %>
<%@ page import="appointment.SMS" %>
<html>
<head>
    <title>Title</title>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">

</head>
<style type="text/css" title="layout" media="screen"> @import url("appointmentstyle.css"); </style>

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
<br><br><br><br><br>
<form class="form-style-9",>
    <div style="text-align:center">
    <ul>
        <li>
            <a href="createAppointment.jsp" class="h3"><h2>Make Appointment</h2></a>
        </li>
        <li><br></li>

        <li>
            <a href="appointmentList.jsp" class="h3"><h2>View Appointments</h2></a>
        </li>
    </ul>
    </div>
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>
