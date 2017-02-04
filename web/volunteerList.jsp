<%@ page import="volunteer.VolunteerDAO" %>
<%@ page import="volunteer.Volunteer" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Hyy
  Date: 4/2/2017
  Time: 1:36 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    VolunteerDAO dao=new VolunteerDAO();
    List<Volunteer> volunteerList=dao.getAllVolunteer();
%>
<html>
<head>
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
                <li><a href="about.jsp">About</a></li>
                <li><a href="event1.jsp">Event</a></li>
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

<br>
<br>
<br>
<br>
<br>

<table border = "1" cellpadding = "5" width = "300">
<tr>
    <td>ID</td>
    <td>Name</td>
    <td>NRIC</td>
    <td>Contact Number</td>
    <td>Reason for volunteering</td>
    <td>Email</td>
</tr>

<%for(int i =0; i<volunteerList.size();i++) {
    String var =volunteerList.get(i).getVolunteerID();
    String var2 =volunteerList.get(i).getVolunteerName();
    String var3 =volunteerList.get(i).getVolunteerNRIC();
    String var4 =volunteerList.get(i).getVolunteerHPNum();
    String var5 =volunteerList.get(i).getVolunteerReason();
    String var6 =volunteerList.get(i).getVolunteerEmail(); %>
    <%out.println(var);%><br>
    <%out.println(var2);%><br>
    <%out.println(var3);%><br>
    <%out.println(var4);%><br>
    <%out.println(var5);%><br>
    <%out.println(var6);%><br>
<%}%>
</table>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
<!-- ==================================================================== -->
</body>
</html>
