<%-- 
    Document   : Login
    Created on : 07-May-2016, 22:37:25
    Author     : Nabs
--%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />


<!DOCTYPE html>
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
                  <!-- active indicates what page the user is on, tagged in css to visibly identify to user -->
                  <li class="index"><a href="index.htm" class="active">Home</a></li>
                  <li class="venues"><a  href="venues.htm">Venues</a></li>
                  <li class="events"><a href="events.htm">Events</a></li>
                  <li class="hello"><a href="helloView.htm">Add To Guest List </a></li>
                  <li class="name"><a href="nameView.htm">View Guest List </a></li>
                  <li class="about"><a href="about.htm" >About</a></li>
                  <li class="hello"><a href="hello.htm">Genres</a></li>
                  <li class="contact"><a href="contact.htm">Contact</a></li>
                  <li class="login"><a href="login.htm">Login</a></li>
                  <li class="registration"><a href="registration.htm">Registration</a></li>
                </ul>
            
         <!--Page Text -->
        <div >
    
        <h4>Please insert your login detail</h4>
        <p1>Username:group4</p1><br>
        <p1>Password:hello</p1><br>
        <form:form method="post" name="loginForm">
            <table>
                <tr><td>User Name: </td><td><input name="username" type="textbox"></td></tr>
                <tr><td>Password: </td><td><input name="password" type="password"></td></tr>
                <tr><td colspan="2" align="right"><input type="submit" value="Submit"></td></tr>
            </table>
            <div style="color:red">${errorMessage}</div>
        </form:form>
 
    </body>
</html>