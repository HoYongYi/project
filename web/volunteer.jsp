<%--
  Created by IntelliJ IDEA.
  User: Hyy
  Date: 2/2/2017
  Time: 9:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <title>Volunteer Application Form</title>
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
            <img src="images/plus.gif" alt="Logo"/>
            <a class="navbar-brand" href="#">Health Centre</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="event1.jsp">Event</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="services.jsp">Services</a></li>
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
        </div><!--/.nav-collapse -->
    </div>
</nav>
<h1>Please enter your details</h1>

<form action = "/volunteer" class="form-style-9" method ="get">
    <table cellspacing="5" cellpadding="5" border="1">
        <tr>
            <td align="right">Name:</td>
            <td><input type="text" name="Name"></td>
        </tr>
        <tr>
            <td align="right">NRIC:</td>
            <td><input type="text" name="NRIC"></td>
        </tr>
        <tr>
            <td align="right">HPNum:</td>
            <td><input type="text" name="HPNum"></td>
        </tr>
        <tr>
            <td align="right">Reason:</td>
            <td><input type="text" name="Reason"></td>
        </tr>
        <tr>
            <td align="right">Email:</td>
            <td><input type="text" name="Email"></td>
        </tr>

    </table>
    <input type="submit" value="Submit">
    <input type="button" value="Back" onClick="history.go(-1);return true;">
</form>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
<!-- ==================================================================== -->
</body>
</html>
