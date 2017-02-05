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
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
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
                    <li><a><Form action="/logout" method="post"><button>Sign out</button></Form></a></li>
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
            <p><img src="images/doctor.jpg" alt="Surgeons"/></p>
        </div>
        <div id="left">
            <h1>Welcome to the Woodlands Integrated Health Campus</h1>
            <p>
                The Woodlands Integrated Health Campus will be an integrated healthcare facility that will include an acute hospital,
                a community hospital and a nursing home.
                The hospital will serve the anticipated increase in demand for healthcare services in the northern region of Singapore,
                as our population grows and ages.
            </p>
            <div class ="col">
                <h1>Join us today!</h1>
                <div id = "bottom">
                    <img src ="images/volunteer.jpg" alt ="Volunteer"/>
                </div>
            </div>
            <h1>Stay connected</h1>
            <div class="col">
                <div class="fcol">
                    <a href = "https://www.facebook.com/" ><img src="images/FacebookButton.jpg" alt="Facebook" /> </a>
                    <a href = "https://www.twitter.com/"><img src="images/twitter.jpg" alt="Twitter"/></a>
                </div>

            </div>
        </div>
    </div>
    <div class="cleaner">&nbsp;</div>
    <div id="footer">
        &copy; 2008 <a href="index.html">Designs.com</a>. Valid <a href="http://jigsaw.w3.org/css-validator/check/referer">CSS</a> &amp; <a href="http://validator.w3.org/check?uri=referer">XHTML</a>. Template design by <a href="http://gendesigns.blogspot.com">Gen</a>
    </div>
</div>

<!-- ==================================================================== -->
<!-- Required for template -->
<!-- ==================================================================== -->
<!-- Placed at the end of the document so the pages load faster -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script>window.jQuery || document.write('&lt;script src="../../assets/js/vendor/jquery.min.js">&lt;\/script>')</script>
<script src="bootstrap/dist/js/bootstrap.min.js"></script>
<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
<script src="bootstrap/assets/js/ie10-viewport-bug-workaround.js"></script>
<!-- ==================================================================== -->
</body>
</html>