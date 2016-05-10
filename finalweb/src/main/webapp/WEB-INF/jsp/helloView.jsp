<%-- 
    Document   : helloView
    Date       : 08,May,2016 
    Author     : Nasser
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<!DOCTYPE html>
<html>
    <head>
    <!--Imports for CSS, JS and Jquery -->        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />      
        <script src="${cp}/resources/js/js.js"> </script>
        <title>Group CourseWork 4 </title>
    </head>
    <body>
        <!-- Header -->
        <h1>Guest List</h1>
         <!-- Navigation Bar --> 
    <div class="nav">
        <ul>
            <li class="index"><a href="index.htm">Home</a></li>
            <li class="venues"><a  href="venues.htm">Venues</a></li>
            <li class="helloView"><a href="helloView.htm">Add To Guest List </a></li>
            <li class="hello"><a href="hello.htm">Genres</a></li>
            <li class="about"><a href="about.htm" >About</a></li>
            <li class="contact"><a href="contact.htm">Contact</a></li>
            <li class="login"><a href="login.htm">Login</a></li>
        </ul>
    </div>
        <p>${helloMessage}</p><br>    
    </body>
</html>
