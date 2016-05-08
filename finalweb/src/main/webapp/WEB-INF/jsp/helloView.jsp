<%-- 
    Document   : helloView
    Author     : Sinan Cayir
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<!DOCTYPE html>
<html>
    <head>
        <!--JQuery imports -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <!--Css imports-->
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />      
        <!--Javascript imports--> 
        <script src="${cp}/resources/js/js.js"> </script>
        <!-- Tittle -->
        <title>Group CourseWork 4 </title>
 
    </head>
    <body
        <!-- Header -->
        <h1>Guest List</h1>
         <!-- Navigation Bar --> 
            <div class="nav">
                <ul>
                  <!-- active indicates what page the user is on, tagged in css to visibly identify to user -->
                  <li class="index"><a href="index.htm">Home</a></li>
                  <li class="venues"><a  href="venues.htm">Venues</a></li>
                  <li class="events"><a href="events.htm">Events</a></li>
                  <li class="hello"><a href="helloView.htm">Add To Guest List </a></li>
                  <li class="name"><a href="nameView.htm" class="active">View Guest List </a></li>
                  <li class="hello"><a href="hello.htm">Genres</a></li>
                  <li class="about"><a href="about.htm" >About</a></li>
                  <li class="contact"><a href="contact.htm">Contact</a></li>
                  <li class="login"><a href="login.htm">Login</a></li>
                  <li class="registration"><a href="registration.htm">Registration</a></li>
                </ul>
            </div>
        <p>${helloMessage}</p><br> 
    </body>
</html>
