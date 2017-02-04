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
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">

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
<nav class="navbar navbar-default navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
                <span class="sr-only">Toggle navigation</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">Health Centre</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="../about.jsp">About</a></li>
                <li><a href="../event1.jsp">Event</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="/video/video.jsp">Online Consultation</a></li>
                        <li><a href="#">Another action</a></li>
                        <li><a href="#">Something else here</a></li>
                        <li role="separator" class="divider"></li>
                        <li class="dropdown-header">Nav header</li>
                        <li><a href="#">Separated link</a></li>
                        <li><a href="#">One more separated link</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a>Welcome,
                    <%if(null!=request.getAttribute("name"))
                    {
                        out.println(request.getAttribute("name"));
                    }else{
                        out.println("Guest");
                    }
                    %></a></li>
                <li><a href="/login/login.html">Log off</a></li>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<br><br><br><br><br>

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
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
<!-- ==================================================================== -->
</body>
</html>