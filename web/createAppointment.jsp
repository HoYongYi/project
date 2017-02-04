<%--
  Created by IntelliJ IDEA.
  User: Dominic
  Date: 28/1/2017
  Time: 12:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<style type="text/css" title="layout" media="screen"> @import url("appointmentstyle.css"); </style>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">

</head>
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

<form action="/appointment" class="form-style-9",>
    <ul>
        <li>
            <input type="text" name="name" class="field-style field-split align-left" placeholder="Name" />
            <input type="text" name="nric" class="field-style field-split align-right" placeholder="Nric" />
        </li>
        <li>
            <select id="select" class="field-style field-full align-none" name="time">
                <option>10.00AM</option>
                <option>10.30AM</option>
                <option>11.00AM</option>
                <option>11.30AM</option>
                <option>12.00PM</option>
                <option>12.30PM</option>
                <option>1.00PM</option>
                <option>1.30PM</option>
                <option>2.00PM</option>
                <option>2.30PM</option>
                <option>3.00PM</option>
                <option>3.30PM</option>
                <option>4.00PM</option>
                <option>4.30PM</option>
                <option>5.00PM</option>
            </select>
        </li>

        <li>
            <input type="date" name="date" class="field-style field-full align-none" placeholder="Date"/>
        </li>
        <li>
            <textarea name="description" class="field-style" placeholder="Description"></textarea>
        </li>
        <li>
            <input type="submit" value="Make Appointment!" />

            <input type="button" value="Back" onClick="history.go(-1);return true;">
        </li>
    </ul>
</form>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>