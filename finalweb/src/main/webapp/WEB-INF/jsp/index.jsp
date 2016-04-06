
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
        <h1> DELIRIUM EVENTS </h1>
       
    </body>
    
    <div class="nav">
    <ul>
          <!-- Class active indicate current page -->
        <li class="home"><a href="index.htm" class="active">Home</a></li>
        <li class="events"><a  href="events.htm">Events</a></li>
        <li class="about"><a href="about.htm" >About</a></li>
        <li class="contact"><a href="contact.htm">Contact</a></li>
      </ul>
    
    </div>
    <footer>
        <div class="footerholder">
        <div class="site-footer">
        Copyright 2016
    </div>
    </footer>
</html>
