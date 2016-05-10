<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    
    <head>
    <!--Imports for CSS, JS and Jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Contact</title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="${cp}/resources/js/js.js"> </script>   
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
            <li class="index"><a href="index.htm" >Home</a></li>
            <li class="venues"><a  href="venues.htm">Venues</a></li>
            <li class="about"><a href="about.htm" >About</a></li>
            <li class="hello"><a href="hello.htm">Genres</a></li>
            <li class="name"><a href="nameView.htm">View Guest List </a></li>    
            <li class="login"><a href="login.htm">Login</a></li>
        </ul>
        
    </body>
    
    <!--Copyright Footer -->
    <div class="footerholder">
        <div class="site-footer">
            Copyright 2016 &copy;
        </div>
    </div>
   
</html>
