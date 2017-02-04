<%--
  Created by IntelliJ IDEA.
  User: Mok
  Date: 2/3/2017
  Time: 1:58 PM
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
<div id="pgcontent">


    <div style="margin-top: 0px; position:relative; padding-bottom:20px;"><script type="text/javascript">
        //<![CDATA[
        Sys.WebForms.PageRequestManager._initialize('ctl00$cphMain$ctlFCDCListing$ctlFCSearch$smFCSearchScriptManager', document.getElementById('aspnetForm'));
        Sys.WebForms.PageRequestManager.getInstance()._updateControls([], [], [], 90);
        //]]>
    </script>



        <div id="ctl00_cphMain_ctlFCDCListing_ctlFCSearch_fcbox">
            <div id="ctl00_cphMain_ctlFCDCListing_ctlFCSearch_pnlDC" class="fcbox" onkeypress="javascript:return WebForm_FireDefaultButton(event, 'ctl00_cphMain_ctlFCDCListing_ctlFCSearch_btnDC')">
                <p class="searchbox">
                    <br>
                    <input name="ctl00$cphMain$ctlFCDCListing$ctlFCSearch$txtDC" type="text" id="ctl00_cphMain_ctlFCDCListing_ctlFCSearch_txtDC" autocomplete="off">
                    <input type="submit" name="ctl00$cphMain$ctlFCDCListing$ctlFCSearch$btnDC" value="Search" onclick="javascript:try{fFCSearch(Trim(document.getElementById('ctl00_cphMain_ctlFCDCListing_ctlFCSearch_txtDC').value),'/patient-guide/find-care/diseases-conditions/default.aspx'); return false;}catch(errC){return false;};" id="ctl00_cphMain_ctlFCDCListing_ctlFCSearch_btnDC" autocomplete="off">
                    </p>
                <script type="text/javascript">try { document.getElementById("ctl00_cphMain_ctlFCDCListing_ctlFCSearch_txtDC").setAttribute("autocomplete", "off"); } catch (errC) { }</script>
            </div>
        </div></div>
    <div>
        <p>
            <a href="#">Abdominal Pain</a><br>
            <a href="#">Abnormal Electrocardiogram (ECG)</a><br>
            <a href="#">Above Knee Amputations (Prosthetics)</a><br>
            <a href="#">Abscess of Pharynx or Nasopharynx</a><br>
            <a href="#">Achalasia</a><br>
            <a href="#">Achilles Tendonitis</a><br>
            <a href="#">Acute Laryngitis</a><br>
            <a href="#">Acute Pancreatitis</a><br>
            <a href="#">Acute Sinusitis</a><br>
            <a href="#">Adrenal Disorders</a><br>
            <a href="#">Aesthetic Eyelid Surgery</a><br>
            <a href="#">Age-Related Macular Degeneration (AMD)</a><br>
            <a href="#">Allergic Rhinitis (AR)</a><br>
            <a href="#">Allergic rhinoconjunctivitis</a><br>
            <a href="#">Altitude Illness</a><br>
            <a href="#">Amputation</a><br>
            <a href="#">Anaemia</a><br>
            <a href="#">Anaphylaxis</a><br>
        </p>
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
