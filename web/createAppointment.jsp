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

<form action="/appointment" class="form-style-9",>
    <ul>
        <li>
            <input type="text" name="name" class="field-style field-split align-left" value="<%=session.getAttribute("name")%>" />
            <input type="text" name="nric" class="field-style field-split align-right" value="<%=session.getAttribute("nric")%>"    />
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
            <input type="submit"onclick="myFunction()" value="Make Appointment!" />

            <input type="button" value="Back" onClick="history.go(-1);return true;">
        </li>
    </ul>
</form>
<script>
    function myFunction() {
        alert("You will be charged $2 for booking fee!");
    }
</script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>

</body>
</html>