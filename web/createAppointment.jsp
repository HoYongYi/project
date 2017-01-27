<%--
  Created by IntelliJ IDEA.
  User: Dominic
  Date: 28/1/2017
  Time: 12:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<style type="text/css" title="layout" media="screen"> @import url("appointmentstyle.css"); </style>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>
<form action="/appointment" class="form-style-9",>
    <ul>
        <li>
            <input type="text" name="name" class="field-style field-split align-left" placeholder="Name" />
            <input type="text" name="nric" class="field-style field-split align-right" placeholder="Nric" />
        </li>
        <li>
            <select id="select" class="field-style field-full align-none" name="time">
                <option>10.00AM</option>
                <option>10.30AM</option>
                <option>11.00AM</option>
                <option>11.30AM</option>
                <option>12.00PM</option>
                <option>12.30PM</option>
                <option>1.00PM</option>
                <option>1.30PM</option>
                <option>2.00PM</option>
                <option>2.30PM</option>
                <option>3.00PM</option>
                <option>3.30PM</option>
                <option>4.00PM</option>
                <option>4.30PM</option>
                <option>5.00PM</option>
            </select>
        </li>

        <li>
            <input type="date" name="date" class="field-style field-full align-none" placeholder="Date"/>
        </li>
        <li>
            <textarea name="description" class="field-style" placeholder="Description"></textarea>
        </li>
        <li>
            <input type="submit" value="Make Appointment!" />

            <input type="button" value="Back" onClick="history.go(-1);return true;">
        </li>
    </ul>
</form>

</body>
</html>