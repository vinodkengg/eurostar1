
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="${cp}/resources/js/js.js"></script>
    </head>
        
    <body>
        <!-- Title-->
        <h1> Delirium Events</h1>
    </body>
    
    <!-- Website Logo -->
    <div class="logo">
        <img src="${cp}/resources/logo.jpg" alt="Logo" style="width:200px;height:134px;">
    </div>  
        
    <div class="nav">
        <ul>
            <!-- Navigation Bar --> 
            <!-- active indicates what page the user is on -->
          <li class="index"><a href="index.htm" class="active">Home</a></li>
          <li class="venues"><a  href="venues.htm">Venues</a></li>
          <li class="about"><a href="about.htm" >About</a></li>
          <li class="contact"><a href="contact.htm">Contact</a></li>
        </ul>
    </div>
      
    <footer>
        <div class="footerholder">
        <div class="site-footer">
        Copyright 2016	&copy;
        </div>
    </footer>

</html>
