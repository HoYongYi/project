<%--
  Created by IntelliJ IDEA.
  User: Hyy
  Date: 3/2/2017
  Time: 3:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="volunteer.VolunteerDAO" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
</head>
<body>

<!-- ==================================================================== -->
<!-- Required for template -->
<!-- ==================================================================== -->
<!-- ==================================================================== -->
<!-- Nav Bar Copy this before your content  -->
<!-- ==================================================================== -->
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
<!-- ==================================================================== -->
<!-- nav bar ends here -->
<!-- ==================================================================== -->
<style type="text/css" title="layout" media="screen"> @import url("../appointmentstyle.css"); </style>
<%
    String Name=request.getParameter("Name");
    String NRIC=request.getParameter("NRIC");
    String HPNum=request.getParameter("HPNum");
    String Reason=request.getParameter("Reason");
    String Email=request.getParameter("Email");
    String Age=request.getParameter("Age");
    String Gender=request.getParameter("Gender");
    if (NRIC != null) {
        session.setAttribute("Name", Name);
        session.setAttribute("NRIC", NRIC);
        session.setAttribute("HPNum", HPNum);
        session.setAttribute("Reason", Reason);
        session.setAttribute("Email", Email);
        session.setAttribute("Age", Age);
        session.setAttribute("Gender", Gender);
    } else {
        Name = (String)session.getAttribute("Name");
        NRIC = (String)session.getAttribute("NRIC");
        HPNum = (String)session.getAttribute("HPNum");
        Reason = (String)session.getAttribute("Reason");
        Email = (String)session.getAttribute("Email");
        Age = (String)session.getAttribute("Age");
        Gender = (String)session.getAttribute("Gender");
    }
%>

<br>

<br>

<br>

<br>

<form class="form-style-9",>
    <ul>
        <li>
            <h2>Hi</h2> <strong><h2><%=Name%>!</h2></strong>
        </li>
        <li>
            <h2>you have successfully applied to be a volunteer </h2>
        </li>
        <a href="../Guest/index.jsp" class="h3">Ok</a>
    </ul>
</form>










<!-- ==================================================================== -->
<!-- PLACE BEOFRE CLOSING BODY-->
<!-- ==================================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
<!-- ==================================================================== -->
</body>
</html>