<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    
    <head>
    <!--Imports for CSS and JS -->    
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="${cp}/resources/js/js.js"></script>
        <title>Genres</title>
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
            <li class="hello"><a href="helloView.htm">Add To Guest List </a></li>
            <li class="about"><a href="about.htm" >About</a></li>
            <li class="contact"><a href="contact.htm">Contact</a></li>
            <li class="hello"><a href="hello.htm" class="active">Genres</a></li>
            <li class="login"><a href="login.htm">Login</a></li>
        </ul>
    </div>
    
       
    <!--List of different types of music(uses DAO to fetch data from the backend to display for the user) -->
        <p><a href="user/0">Hip Hop</a></p>
        <p><a href="user/1">R&B</a></p>
        <p><a href="user/2">Dance Hall</a></p>
        <p><a href="users">Get All</a></p>" 
            
    
    </body>
    
    <!--Copyright Footer -->
    <div class="footerholder">
        <div class="site-footer">
            Copyright 2016 &copy;
        </div>
    </div>

</html>
