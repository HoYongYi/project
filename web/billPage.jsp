<%@ page import="patient.BillDAO" %>
<%@ page import="patient.Bill" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Mok
  Date: 12/14/2016
  Time: 5:38 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<%
    BillDAO dao=new BillDAO();
    String name = (String)session.getAttribute("name");
    List<Bill> list=dao.getBills(name);
%>
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
    <meta name="Description" content="A free open source web design by Gen.  Free for anyone to use as long as credits are intact. " />
    <meta name="Keywords" content="open source web design,http://gendesigns.blogspot.com" />
    <meta name="Copyright" content="Gen" />
    <meta name="Designed By" content="http://gendesigns.blogspot.com" />
    <meta name="Language" content="English" />
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style type="text/css" title="layout" media="screen"> @import url("style.css"); </style>
    <style type="text/css" title="layout" media="screen"> @import url("table.css"); </style>
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
                <li><a href="/Patient/client.jsp">Home</a></li>
                <li><a href="/billPage.jsp">Check Your Bills</a></li>
                <li><a href="newsandevents.jsp">News and Events</a></li>
                <li><a href="contactus.jsp">Contact us</a></li>
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
<div class="line">
    &nbsp;
</div>
<div id="content">
    <div id="left">
        <h2 class="size_18 bold color_blue_3" style="margin: 20px 0 10px 0;">Expense</h2>

        <div class="table-responsive">
            <table class="table">
                <thead>
                <tr>
                    <th>Bill No</th>
                    <th>Nric</th>
                    <th>Name</th>
                    <th>Services</th>
                    <th>Amount</th>
                </tr>
                </thead>
                <tbody>

                <%
                    for(Bill b : list) {
                %>
                <tr>
                    <td><%= b.getBillNo()%></td>
                    <td><%= b.getPNric()%></td>
                    <td><%= b.getPName()%></td>
                    <td><%= b.getServices()%></td>
                    <td><%= b.getAmount()%></td>
                </tr>
                <%
                    }
                %>
                </tbody>
            </table>
        </div>
    </div>


    </div>
</div>
<div class="cleaner">&nbsp;</div>
<div class="line">
    &nbsp;</div>
<div id="footer">
    &copy; 2008 <a href="index.html">Designs.com</a>. Valid <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> &amp; <a href="http://validator.w3.org/check?uri=referer">XHTML</a>. Template design by <a href="http://gendesigns.blogspot.com">Gen</a>
</div>
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="../bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="../bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
</body>
</html>