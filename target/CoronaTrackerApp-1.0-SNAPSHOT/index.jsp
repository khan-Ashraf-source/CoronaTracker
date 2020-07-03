<%-- 
    Document   : index
    Created on : Jun 26, 2020, 5:06:39 AM
    Author     : ash
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <link rel="stylesheet" type="text/css" href="css/style.css">
        <link rel='stylesheet' type="text/css" href='http://fonts.googleapis.com/css?family=Lato:100,300,400,300italic' >
        <title>Corona Tracker</title>
    </head>
    <body>
        <header>
            <nav>
                <div class="row">
                    <img src="img/logo.png" alt="logo" class="logo"><br>
<!--                    <h1>covid-19</h1>-->
                    <ul class="main-nav">
                        <li><a href="#">Home</a></li>
                        <li><a href="#">About Us</a></li>
                    </ul>
                </div>
            </nav>
        
            <div class="main-content">
                <h1>Track</h1>
                <form action="/Corona_Tracker/process" method="post" class="main-form">
                    <input type="text" placeholder="Country" name="country" required>
                    <input type="submit" value="Track" class="submit-data">
                </form>
                <h2><c:out value='${requestScope.message}'/></h2>
            </div>
        </header>
    </body>
</html>
