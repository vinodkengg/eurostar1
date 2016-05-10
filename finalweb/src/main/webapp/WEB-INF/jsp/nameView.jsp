<%-- 
    Document   : nameView
    Author     : Sinan Cayir
--%>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
 <%@taglib uri="http://www.springframework.org/tags" prefix="spring"%> 


<html>
    <head>
    <!--Imports for CSS, JS and Jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />      
        <script src="${cp}/resources/js/js.js"> </script>
    </head>
    <body>
        <h1>Add Your Guests Here!</h1>
        
    <div class="nav">
        <ul>
            <li class="index"><a href="index.htm" >Home</a></li>
            <li class="venues"><a  href="venues.htm">Venues</a></li>
            <li class="hello"><a href="helloView.htm" class="active">Add To Guest List </a></li>
            <li class="name"><a href="nameView.htm">View Guest List </a></li>
            <li class="about"><a href="about.htm" >About</a></li>
            <li class="contact"><a href="contact.htm">Contact</a></li>
            <li class="login"><a href="login.htm">Login</a></li>
        </ul>
    </div>
        
        
        <form action="" method="post" class="formtest">
            <spring:bind path="name.value">
            <p>Name:</p>
                <input type="text" name="${status.expression}" value="${status.value}" class="guestlist">
                <br>
            <p>Number of People Attending:</p>
                <input type="number" name="${status.expression}" value="${status.value}" class="guestlist2">
            <p>Event:</p>
                <input type="text" name="${status.expression}" value="${status.value}" class="guestlist">
            </spring:bind>
                <input type="submit" value="OK" class="inputok">
        </form>
    </body>
</html>
