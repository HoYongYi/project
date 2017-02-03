<%--
  Created by IntelliJ IDEA.
  User: Hyy
  Date: 14/12/2016
  Time: 6:09 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
                <li><a href="contactus.jsp">Contact us</a></li>
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
    <h1>Prevention and Correction of Contractures in Clients with Neurological Conditions</h1>
        <h2>SYNOPSIS</h2>
        <p>Medical advances have allowed high life expectancy amongst those afflicted with neurological condition.
            However, residual effects continue to prevail.
            Current focus of neurological rehabilitation strategies is maximising plasticity within
            the central nervous but what can often be forgotten is that the musculoskeletal system is
            just as plastic and deterioration in the form of muscle wastage,
            adaptive changes in length and stiffness (contractures or fixed flexion deformity) and joint deterioration can occur.</p>
        <p>A 1 day of practical introductory course for Occupational Therapists in using thermoplastic,
            soft splints and support. The main focus of the course is practical, to learn how to use
            the thermoplastic material for making splints,
            choosing suitable soft splints and techniques for providing support for the upper limb.</p>

        <h2>DATE</h2>
        <p>7 January 2017</p>
        <h2>TIME</h2>
        <p>9am - 5pm</p>
        <h2>SPEAKERS</h2>
        <p>Ms Janis Yeo, Senior Occupational Therapist (OT, CHT, CLT),
            Ms Lim Yi Hui, Senior Occupational Therapist (Bsc (Hons) OT, Certificate in Driving Assessment)</p>
        <h2>Target Participants</h2>
        <p>Occupational Therapists working in nursing homes or community settings</p>
        <h2>FEES</h2>
        <p>$300 ($270 for SAOT Members)</p>
    </div>

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