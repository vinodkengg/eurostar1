<%-- 
    Document   : Login
    Created on : 07-May-2016, 22:37:25
    Author     : Nabru
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />


<!DOCTYPE html>
<html>
    <head>
        <!--Imports for CSS, JS and Jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />             
        <script src="${cp}/resources/js/js.js"> </script>
    </head>
           
    <body>
    <!-- Title-->
        <h1> Delirium Events</h1>
        
        <marquee scrollamount="20">${userInformation}</marquee> 
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
            <li class="index"><a href="index.htm" class="active">Home</a></li>
            <li class="venues"><a  href="venues.htm">Venues</a></li>
            <li class="events"><a href="events.htm">Events</a></li>
            <li class="hello"><a href="helloView.htm">Add To Guest List </a></li>
            <li class="name"><a href="nameView.htm">View Guest List </a></li>
            <li class="about"><a href="about.htm" >About</a></li>
            <li class="hello"><a href="hello.htm">Genres</a></li>
            <li class="contact"><a href="contact.htm">Contact</a></li>
            <li class="login"><a href="login.htm">Login</a></li>
        </ul>
    </div>        
    <!--Page Text -->
    <div>
        <h4>Please insert your login details</h4>
        <p>If users enter different login details from the shown details below, access will be denied and users won't be able to purchase tickets from the events page </p>
        <p2>Username:group4</p2><br>
        <p2>Password:hello</p2><br>
        <form:form method="post" name="loginForm">
            <table>
                <tr><td><p>User Name:</p> </td><td><input name="username" type="textbox"></td></tr>
                <tr><td><p>Password:</p></td><td><input name="password" type="password"></td></tr>
                <tr><td colspan="2" align="right"><input type="submit" value="Submit"></td></tr>
            </table>
    <div style="color:red">${errorMessage}</div>
        </form:form>
 
    </body>
</html>