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
                <li><a href="about.jsp">About</a></li>
                <li><a href="newsandevents.jsp">News and Events</a></li>
                <li><a href="contactus.jsp">Contact us</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="services.jsp">Services</a></li>
                        <li><a href="/video/doctorVideo.jsp">Online Consultation</a></li>
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
    <form method="get" action="/patient">
        <div class="form-group">
            <label for="name">Name</label>
            <input name="name" type="text" class="form-control" id="name" aria-describedby="patientId" placeholder="Enter Your Name">
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
            <label for="age">Age</label>
            <input name="age" type="number" class="form-control" id="age" placeholder="age">
        </div>
        <br>
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
