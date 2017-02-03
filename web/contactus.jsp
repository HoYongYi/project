<%--
  Created by IntelliJ IDEA.
  User: Hyy
  Date: 14/12/2016
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
    <meta name="Description" content="A free open source web design by Gen.  Free for anyone to use as long as credits are intact. " />
    <meta name="Keywords" content="open source web design,http://gendesigns.blogspot.com" />
    <meta name="Copyright" content="Gen" />
    <meta name="Designed By" content="http://gendesigns.blogspot.com" />
    <meta name="Language" content="English" />
    <link href="bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style type="text/css" title="layout" media="screen"> @import url("style.css"); </style>
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
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="newsandevents.jsp">News and Event</a></li>
                <li class ="active"><a href="#">Contact us</a></li>
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
                <form action="/login", method = "post" >
                    <input type = "text" name = "username" placeholder="Username"/>
                    <input type = "password" name = "password" placeholder="Password"/>
                    <input type = "submit" value = "Login"/>
                </form>
            </ul>
        </div><!--/.nav-collapse -->
    </div>
</nav>
    <div class="line">
        &nbsp;
    </div>
    <div id = "left">
        <h1>Address: <h3>Woodlands Avenue 12 and Woodlands Drive 17,
            opposite Christ Church Secondary School,
            and within walking distance from the future Woodlands South MRT station</h3></h1>
        <h1>MAIN LINE: <h3>6555-xxxx</h3></h1>
        <h1>GENERAL FAX: <h3>6602-xxxx</h3></h1>
        <h1>BILLING INQUIRIES: <h3>6602-xxxx</h3></h1>
    </div>
    <div id="right">
        <img src="images/map.png" alt="Map"/>
    </div>


    <div class="cleaner">&nbsp;</div>
    <div class="line">
        &nbsp;</div>
    <div id="footer">
        &copy; 2008 <a href="index.html">Designs.com</a>. Valid <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> &amp; <a href="http://validator.w3.org/check?uri=referer">XHTML</a>. Template design by <a href="http://gendesigns.blogspot.com">Gen</a>
    </div>
</div>
</body>
</html>