<%--
  Created by IntelliJ IDEA.
  User: Mok
  Date: 12/14/2016
  Time: 5:38 PM
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
                <li><a href="index.jsp">Home</a></li>
                <li><a href="about.jsp">About</a></li>
                <li><a href="event1.jsp">Event</a></li>
                <li class="dropdown">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">More <span class="caret"></span></a>
                    <ul class="dropdown-menu">
                        <li><a href="#">Services</a></li>
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
        <div class="line">
            &nbsp;
        </div>
        <div id="content">
            <div id="left">
                <h2 class="size_18 bold color_blue_3" style="margin: 20px 0 10px 0;">Daily Ward Charges for Inpatients</h2>
                <table class="tend_list" border="0" cellspacing="0">
                    <thead style="text-align: left;">
                    <tr><th class="start" style="text-align: left;" rowspan="2" valign="top">&nbsp;</th><th style="text-align: center;" colspan="2"><strong>Private Patients</strong></th><th class="end" style="text-align: center;" colspan="2"><strong>Subsidised Patients</strong></th></tr>
                    <tr><th style="text-align: center;"><strong>A1</strong></th><th style="text-align: center;"><strong>B1</strong></th><th style="text-align: center;"><strong>B2</strong></th><th style="text-align: center;"><strong>C</strong></th></tr>
                    </thead>
                    <tbody style="text-align: left;">
                    <tr class="even" style="text-align: left;">
                        <td style="text-align: left;">a) Acute Ward:</td>
                        <td colspan="4" style="border-right: 1px solid rgb(236, 236, 236);"></td>
                    </tr>
                    <tr class="odd" style="text-align: center;">
                        <td style="text-align: left;">&nbsp; &nbsp;&nbsp;Singapore Citizen</td>
                        <td>$420</td>
                        <td>$198</td>
                        <td>$77</td>
                        <td style="border-right: 1px solid rgb(236, 236, 236);">$35</td>
                    </tr>
                    <tr class="odd" style="text-align: center;">
                        <td style="text-align: left;">&nbsp; &nbsp;&nbsp;Permanent Resident</td>
                        <td>$420</td>
                        <td>$238</td>
                        <td>$136</td>
                        <td style="border-right: 1px solid rgb(236, 236, 236);">$75</td>
                    </tr>
                    <tr class="odd" style="text-align: center;">
                        <td style="text-align: left;">&nbsp; &nbsp;&nbsp;Resident Foreigner/<br>&nbsp; &nbsp;&nbsp;Non-Resident</td>
                        <td>$420</td>
                        <td>$248</td>
                        <td>$247</td>
                        <td style="border-right: 1px solid rgb(236, 236, 236);">$188</td>
                    </tr>
                    <tr class="even" style="text-align: left;">
                        <td style="text-align: left;">b) High Dependency Ward</td>
                        <td colspan="4" style="border-right: 1px solid rgb(236, 236, 236);"></td>
                    </tr>
                    <tr class="odd" style="text-align: center;">
                        <td style="text-align: left;">&nbsp; &nbsp;&nbsp;Singapore Citizen</td>
                        <td>$550</td>
                        <td>$328</td>
                        <td>$135</td>
                        <td style="border-right: 1px solid rgb(236, 236, 236);">$55</td>
                    </tr>
                    <tr class="odd" style="text-align: center;">
                        <td style="text-align: left;">&nbsp; &nbsp;&nbsp;Permanent Resident</td>
                        <td>$550</td>
                        <td>$450</td>
                        <td>$250</td>
                        <td style="border-right: 1px solid rgb(236, 236, 236);">$180</td>
                    </tr>
                    <tr class="odd" style="text-align: center;">
                        <td style="text-align: left;">&nbsp; &nbsp;&nbsp;Resident Foreigner/<br>&nbsp; &nbsp;&nbsp;Non-Resident</td>
                        <td>$550</td>
                        <td>$<span style="text-align: center;">550</span></td>
                        <td>$<span style="text-align: center;">550</span></td>
                        <td style="border-right: 1px solid rgb(236, 236, 236);">$<span style="text-align: center;">550</span></td>
                    </tr>
                    <tr class="even" style="text-align: left;">
                        <td style="text-align: left;">c) ICU Ward</td>
                        <td colspan="4" style="border-right: 1px solid rgb(236, 236, 236);"></td>
                    </tr>
                    <tr class="odd" style="text-align: center;">
                        <td style="text-align: left;">&nbsp; &nbsp;&nbsp;Singapore Citizen</td>
                        <td>$857</td>
                        <td>$628</td>
                        <td>$260</td>
                        <td style="border-right: 1px solid rgb(236, 236, 236);">$100</td>
                    </tr>
                    <tr class="odd" style="text-align: center;">
                        <td style="text-align: left;">&nbsp; &nbsp;&nbsp;Permanent Resident</td>
                        <td>$857</td>
                        <td>$770</td>
                        <td>$445</td>
                        <td style="border-right: 1px solid rgb(236, 236, 236);">$300</td>
                    </tr>
                    <tr class="odd" style="text-align: center;">
                        <td style="text-align: left;">&nbsp; &nbsp;&nbsp;Resident Foreigner/<br>&nbsp; &nbsp;&nbsp;Non-Resident</td>
                        <td>$857</td>
                        <td>$857</td>
                        <td>$857</td>
                        <td style="border-right: 1px solid rgb(236, 236, 236);">$857</td>
                    </tr>
                    </tbody>
                </table>
                <h1>Stay connected</h1>
                <div class="col">
                    <div class="fcol">
                        <img src="images/facebook.png" alt="Facebook"/>
                        <img src="images/twitter.png" alt="Twitter"/>
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