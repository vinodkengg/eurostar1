<%-- 
    Document   : sinan
    Created on : Apr 5, 2016, 7:00:24 PM
    Author     : tommyacton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        
        <!--Java script starts here -->
         
        
        <script src="${cp}/resources/js/js.js"> </script>
        <!--Java script starts here -->        
        
    
    </head>
    
    <body>
        <!-- Title-->
        <h1> Delirium Events</h1>
         
        <!-- Website Logo Left -->
        <div class="logoleft">
            <img src="${cp}/resources/logo.jpg" alt="Logo" style="width:150px;height:100px;">
        </div>  
            
        <!-- Website Logo Right -->
        <div class="logoright">
            <img src="${cp}/resources/logo.jpg" alt="Logo" style="width:150px;height:100px;">
        </div>  

        <!-- Navigation Bar -->
        <div class="nav">
            <ul>
                <li class="index"><a href="index.htm">Home</a></li>
                  <li class="venues"><a  href="venues.htm">Venues</a></li>
                  <li class="events"><a href="events.htm">Events</a></li>
                  <li class="about"><a href="about.htm" >About</a></li>
                  <li class="contact"><a href="contact.htm">Contact</a></li>
                  <li class="login"><a href="login.htm">Login</a></li>
                  <li class="registration"><a href="login.htm" class="active">Registration</a></li>
            </ul>
            <br>
            <br>
            <h3>Registration Form<br></h3>
            <div class="logindiv">
                <form method="post" action="events.htm">
                    <br>
                    <p3>Create a Username:</p3>
                    <input type="text" name="username" value="" class="username"><br>
                <br>
                <p3>Create a Password:</p3>
                <input type="password" name="password" value="" class="password"><br>
                <br>
                <p3>Contact Email:</p3><
                <input type="text" name="email" value="" class="email"><br>
                <br>
                 <p3 class="submit"><input type="submit" name="commit" value="Register"></p3>
                </form>
        </div>
        
        <!--INSERT CONTENT HERE -->
        
    </body>
    
    <!--Copyright Footer -->
    <div class="footerholder">
        <div class="site-footer">
            Copyright 2016 &copy;
        </div>
    </div>
   
</html>
