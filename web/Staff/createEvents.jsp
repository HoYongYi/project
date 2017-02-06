<%--
  Created by IntelliJ IDEA.
  User: Hyy
  Date: 6/2/2017
  Time: 9:43 PM
  To change this template use File | Settings | File Templates.
--%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title></title>
    <script src="https://code.jquery.com/jquery-1.9.1.min.js"></script>
    <link href="../bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <script src="../bootstrap/datepicker/js/bootstrap-datepicker.min.js"></script>
    <link id="bsdp-css" href="../bootstrap/datepicker/css/bootstrap-datepicker3.min.css" rel="stylesheet">
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.ar.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.az.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.bg.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.bs.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.ca.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.cs.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.cy.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.da.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.de.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.el.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.en-GB.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.es.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.et.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.eu.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.fa.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.fi.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.fo.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.fr.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.fr-CH.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.gl.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.he.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.hr.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.hu.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.hy.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.id.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.is.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.it.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.it-CH.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.ja.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.ka.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.kh.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.kk.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.kr.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.lt.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.lv.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.mk.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.ms.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.nb.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.nl.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.nl-BE.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.no.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.pl.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.pt-BR.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.pt.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.ro.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.rs.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.rs-latin.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.ru.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.sk.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.sl.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.sq.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.sr.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.sr-latin.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.sv.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.sw.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.th.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.tr.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.uk.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.vi.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.zh-CN.min.js" charset="UTF-8"></script>
    <script src="../bootstrap/datepicker/locales/bootstrap-datepicker.zh-TW.min.js" charset="UTF-8"></script>
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
            <img src="../images/plus.gif" alt="Logo"/>
            <a class="navbar-brand" href="#">Health Centre</a>
        </div>
        <div id="navbar" class="navbar-collapse collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">Home</a></li>
                <li><a href="../about.jsp">About</a></li>
                <li><a href="../newsandevents.jsp">News and Events</a></li>
                <li><a href="../contactus.jsp">Contact us</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="../services.jsp">Services</a></li>
                        <li><a href="video.jsp">Online Consultation</a></li>
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
<!-- ==================================================================== -->
<!-- nav bar ends here -->
<!-- ==================================================================== -->
<div class = "container">
    <form method="get" action="/event">
        <div class="form-group">
            <label for="event">Event title</label>
            <input name="event" type="text" class="form-control" id="event" aria-describedby="event" placeholder="Enter Event title">
        </div>
        <div class="form-group">
            <label for="venue">Venue</label>
            <input name="venue" type="text" class="form-control" id="venue" aria-describedby="venue" placeholder="Enter Venue">
        </div>
        <div class="form-group">
            <label for="staffId">Staff Id</label>
            <input name="staffId" type="text" class="form-control" id="staffId" placeholder=<%=session.getAttribute("pid")%>>
        </div>
        <div class="input-group date" id="datepicker" data-provide="datepicker">
            <input name="date" type="text" class="form-control"><span class="input-group-addon"><i class="glyphicon glyphicon-th"></i></span>
        </div>
        <div class="form-group">
            <label for="content">Content</label>
            <textarea name="content" class="form-control" id="content" rows="6"></textarea>
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
<script>
    $('#datepicker').datepicker({
        format: 'dd/mm/yyyy',
        maxViewMode: 2,
        todayBtn: "linked",
        clearBtn: true,
        daysOfWeekHighlighted: "0,2,4,6"
    });
</script>
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