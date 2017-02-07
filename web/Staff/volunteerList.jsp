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
<%--<%--%>
    <%--VolunteerDAO dao=new VolunteerDAO();--%>
    <%--List<Volunteer> volunteerList=dao.getAllVolunteer();--%>
<%--%>--%>
<html>
<head>
    <link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
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
            <img src="../images/plus.gif" alt="Logo"/>
            <a class="navbar-brand" href="#">Health Centre</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li><a href="/Staff/doctor.jsp">Home</a></li>
                <li><a href="/Staff/createEvents.jsp">Create Events</a></li>
                <li><a href="/Staff/createNews.jsp">Create News</a></li>
                <li><a href="/Staff/viewStaff.jsp">View Staff</a></li>
                <li class="active"><a href="/Staff/volunteerList.jsp">View Volunteers</a></li>
                <li><a href="report.xhtml">Statistic</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li class="dropdown-header">Consultation Records</li>
                        <li><a href="/video/video.jsp">Online Consultation</a></li>
                        <li><a href="/video/viewRecord.jsp">View Record</a></li>
                        <li><a href="/video/createRecord.jsp">Create Record</a></li>
                    </ul>
                </li>
            </ul>
            <ul class="nav navbar-nav navbar-right">
                <li><a href="Staff/viewStaff.jsp">Welcome,
                    <%if(null!=session.getAttribute("name"))
                    {
                        out.println(session.getAttribute("name"));
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

<table id="table" border ="2" width ="800" class="flat-table">
    <tbody>

    <tr>
        <th></th>
        <th>Id</th>
        <th>Name</th>
        <th>Nric</th>
        <th>HPNum</th>
        <th>Reason</th>
        <th>Email</th>
        <th>Age</th>
        <th>Gender</th>
    </tr>

    <%
        VolunteerDAO dao=new VolunteerDAO();
        List<Volunteer>list=dao.getAllVolunteer();

        for (Volunteer volunteer: list) {
    %>

    <tr>
        <td></td>
        <td><%= volunteer.getVolunteerID()   %>      </td>
        <td><%= volunteer.getVolunteerName()  %>      </td>
        <td><%= volunteer.getVolunteerNRIC() %>      </td>
        <td><%= volunteer.getVolunteerHPNum()%>     </td>
        <td><%= volunteer.getVolunteerReason()%>     </td>
        <td><%= volunteer.getVolunteerEmail()%>     </td>
        <td><%= volunteer.getVolunteerAge()%>     </td>
        <td><%= volunteer.getVolunteerGender()%>     </td>
        <td></td>


    </tr>
    <%
        }
    %>
    </tbody>
</table>

<%--<h3>id  name   nric   hpnum   reason  email  age  gender</h3>--%>

<%--<br>--%>

<%--<%for(int i =0; i<volunteerList.size();i++) {--%>
    <%--String id =volunteerList.get(i).getVolunteerID();--%>
    <%--String name =volunteerList.get(i).getVolunteerName();--%>
    <%--String nric =volunteerList.get(i).getVolunteerNRIC();--%>
    <%--String hpnum =volunteerList.get(i).getVolunteerHPNum();--%>
    <%--String reason =volunteerList.get(i).getVolunteerReason();--%>
    <%--String email =volunteerList.get(i).getVolunteerEmail();--%>
    <%--String age =volunteerList.get(i).getVolunteerAge();--%>
    <%--String gender =volunteerList.get(i).getVolunteerGender(); %>--%>
<%--<%out.println(id + " " + name + " " + nric + " " + hpnum + " " + reason + " " + email + " " + age + " " +  gender);%><br>--%>
<%--<%}%>--%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
<!-- ==================================================================== -->
</body>
</html>