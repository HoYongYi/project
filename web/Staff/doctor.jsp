<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html;charset=iso-8859-1" />
    <meta name="Description" content="A free open source web design by Gen.  Free for anyone to use as long as credits are intact. " />
    <meta name="Keywords" content="open source web design,http://gendesigns.blogspot.com" />
    <meta name="Copyright" content="Gen" />
    <meta name="Designed By" content="http://gendesigns.blogspot.com" />
    <meta name="Language" content="English" />
    <link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <style type="text/css" title="layout" media="screen"> @import url("../style.css"); </style>
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
    <div class="line">
        &nbsp;
    </div>
    <div id="content">
        <div id="right">
            <h1>Latest news</h1>
            <div class="date">04/07/08&nbsp;&#45;</div>
            <p>Aspiring teacher became a doc because of bullies</p>
            <div class="date">02/07/08&nbsp;&#45;</div>
            <p>HIV no longer a death sentence but a period of hopeful living</p>
            <p><img src="../images/doctor.jpg" alt="Surgeons"/></p>
        </div>
        <div id="left">
            <h1>Welcome to Woodlands Integrated Health Campus</h1>
            <p>
                The Woodlands Integrated Health Campus will be an integrated healthcare facility that will include an acute hospital,
                a community hospital and a nursing home.
                The hospital will serve the anticipated increase in demand for healthcare services in the northern region of Singapore,
                as our population grows and ages.
            </p>

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