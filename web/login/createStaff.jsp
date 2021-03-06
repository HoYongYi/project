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
                <li><a href="createEvents.jsp">Create Events</a></li>
                <li><a href="createNews.jsp.jsp">Create News</a></li>
                <li><a href="viewStaff.jsp">View Staff</a></li>
                <li><a href="volunteerList.jsp">View Volunteers</a></li>
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
                <li><a>Welcome,
                    <%if(null!=session.getAttribute("name"))
                    {
                        out.println(session.getAttribute("name"));
                    }else{
                        out.println("Guest");
                    }
                    %></a></li>
                <%--<li><a><Form action="/logout" method="post"><button>Sign out</button></Form></a></li>--%>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
<!-- ==================================================================== -->
<!-- nav bar ends here -->
<!-- ==================================================================== -->
<div class = "container">
    <form method="get" action="/staff">
        <div class="form-group">
            <label for="name">Name</label>
            <input name="name" type="text" class="form-control" id="name" aria-describedby="patientId" placeholder="Enter Patient Id">
        </div>
        <br>
        <label>Gender: </label>
        <label class="radio-inline">
            <input type="radio" name="gender" value="male">Male
        </label>
        <label class="radio-inline">
            <input type="radio" name="gender" value="female">Female
        </label>
        <br><br>
        <div class="form-group">
            <label for="password">Password</label>
            <input name="password" type="password" class="form-control" id="password" placeholder="Password">
        </div>
        <div class="form-group">
            <label for="nric">NRIC</label>
            <input name="nric" type="text" class="form-control" id="nric" placeholder="nric">
        </div>
        <div class="form-group">
            <label for="phone">Phone</label>
            <input name="phone" type="tel" class="form-control" id="phone" placeholder="phone">
        </div>
        <div class="form-group">
            <label for="address">Home address</label>
            <input name="address" type="text" class="form-control" id="address" placeholder="home address">
        </div>
        <br>
        <label>Designation: </label>
        <label class="radio-inline">
            <input type="radio" name="designation" value="doctor">Doctor
        </label>
        <label class="radio-inline">
            <input type="radio" name="designation" value="admin">Admin
        </label>
        <br><br>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
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