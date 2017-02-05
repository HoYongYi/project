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
    <link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <title>Volunteer Application Form</title>
    <script type="text/javascript">
        function validate()
        {
            var a = document.getElementById("Name");
            var b = document.getElementById("NRIC");
            var c = document.getElementById("HPNum");
            var d = document.getElementById("Reason");
            var e = document.getElementById("Email");
            var f = document.getElementById("Age");
            var g = document.getElementById("Gender");
            var h = document.getElementById("HPNum").value;
            var i = document.getElementById("Age").value;
            var valid = true;
            if(a.value.length<=0 || b.value.length<=0 || c.value.length<=0 || d.value.length<=0 || e.value.length<=0 || f.value.length<=0 || g.value.length<=0)
            {
                alert("Don't leave the field empty!");
                valid = false;
            }
            else if(isNaN(h) || isNaN(i)){
                alert("You have not entered a number for either age or HPNum , please enter the fields accordingly");
                valid = false;
            }

            else if(g.value != "M" && g.value != "F"){
                    alert("Please enter M or F")
                    valid = false;
            }

            else if(f.value > 120 || f.value < 13){
                alert("Please enter a valid value for your age")
                valid = false;
            }

            else if (c.value.length != 8){
                alert("Please enter a valid phone number")
                valid = false;
            }
            return valid;
        };

    </script>
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
                <li class="active"><a href="#">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="event1.jsp">Event</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="../services.jsp">Services</a></li>
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

<form action = "/volunteer" class="form-style-9" method ="get" onsubmit="return validate();">

    <h3>Thank you for your interest in volunteering with Woodlands Integrated Health Campus </h3>
     <br>
        <h3>Here's a Step-by-Step Guide to complete your registration:</h3>
<br>
        <h3>1.    Kindly complete and submit this online application form to register your interest. This form may take approximately 15 mins to complete.</h3>
        <h3> 2.    We will be in contact within 2 to 3 weeks to invite you to our monthly Volunteer Induction Programme (VIP).</h3>
            <h3> 3.    After attending the VIP, you may start your volunteering journey with us!</h3>

            <h3> All information provided in this form will be treated with strict confidence.</h3>

            <h5>Name</h5>
            <input type="text" name="Name" id = "Name">

            <h5>NRIC:</h5>
            <input type="text" name="NRIC" id = "NRIC">

            <h5>HPNum:</h5>
            <input type="text" name="HPNum"  id="HPNum">

            <h5>Reason:</h5>
            <input type="text" name="Reason" id ="Reason" >

            <h5>Email:</h5>
            <input type="text" name="Email"  id = "Email">

            <h5>Age:</h5>
            <input type="text" name="Age"  id ="Age" >

            <h5>Gender:</h5>
            <input type="text" name="Gender"  id="Gender">

<br>
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
