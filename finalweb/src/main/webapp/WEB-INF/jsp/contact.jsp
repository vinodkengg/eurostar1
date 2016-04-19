<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    
     <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        
        <!--Java script starts here -->
        <script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
        <script src="${cp}/resources/js/js.js"> </script>
        <!--Java script starts here -->
       
              

    </head>
    
    <body>
        <!-- Title-->
        <h1> Contact Us </h1>
    </body>
    
    <div class="logo">
        <img src="${cp}/resources/logo.jpg" alt="Logo" style="width:200px;height:134px;">
    </div> 
        
    <div class="nav">
    <ul>
          <!-- Navigation Bar -->
        <li class="index"><a href="index.htm" >Home</a></li>
        <li class="venues"><a  href="venues.htm">Venues</a></li>
        <li class="about"><a href="about.htm" >About</a></li>
        <!-- active indicates what page the user is on -->
        <li class="contact"><a href="contact.htm" class="active">Contact</a></li>
      </ul>
    
        <div class="active">
        
            <h1> hello man GHJK </h1>
            <div id="msg"> TEST </div>
   
        </div>
        
    </div>
    
    <div class="footerholder">
    <div class="site-footer">
        Copyright 2016	&copy;
    </div>
</div>

</html>
