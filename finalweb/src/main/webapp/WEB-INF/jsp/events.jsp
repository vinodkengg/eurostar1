<%-- 
    Document   : events
    Created on : 20-Apr-2016, 15:36:30
    Author     : Sinan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
<!--Imports for CSS, JS and Jquery -->    
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="${cp}/resources/js/js.js"> </script>
        <title>Events</title>
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
            <li class="events"><a href="login.htm" class="active">Events</a></li>
            <li class="hello"><a href="helloView.htm">Add To Guest List </a></li>
            <li class="hello"><a href="hello.htm">Genres</a></li>
            <li class="about"><a href="about.htm" >About</a></li>
            <li class="login"><a href="login.htm">Login</a></li>
        </ul>
    </div>
        <br>
        <br>
        <h1> Please hover to select your event</h1>
    
    <div class="venueone">
    <div id="comments" class="testcomment">
        <h2 href="#" class="btn">Bar 13</h2>

    <div id="comment-wrap">     
        <p2>Go ham on Fridays</p2>
        <p>Date:28/05/2016 </p>
        <p>DJ Nabs back on stage</p>
        <button onClick="location.href='tickets/index2.htm'">Buy Tickets</button>
    
    </div>
    </div>
            
    <div class="venueone">
    <div id="comments" class="testcomment">
        <h2 href="#" class="btn">Casino Night Club</h2>

    <div id="comment-wrap">     
        <p2>Frisky on Saturday's</p2>
        <p>Date: 29/05/2016 </p>
        <p>Bringing back frisky to your night out</p>
        <button onClick="location.href='tickets/index2.htm'">Buy Tickets</button>
              
    </div>
    </div>

    <div class="venueone">
    <div id="comments" class="testcomment">
        <h2 href="#" class="btn">Tickled Ivory</h2>

    <div id="comment-wrap">     
        <p2>Cheesy Nights with Dj Nas</p2>
        <p>Date:28/04/2016 </p>
        <p>Enjoy 70's and 80's music and have an amazing experience</p>
        <button onClick="location.href='tickets/index2.htm'">Buy Tickets</button>
          
    </div>
    </div>
           
    <div class="venueone">
    <div id="comments" class="testcomment">
        <h2 href="#" class="btn">Weatherspoons</h2>

    <div id="comment-wrap">     
        <p2>Get Waved with Dj Sinz</p2>
        <p>Date: 03/06/2016</p>
        <p>R&B, Hip Hop and Afro beats</p>
        <button onClick="location.href='tickets/index2.htm'">Buy Tickets</button>

                   
    </div>
    </div>
</body>

<!--Copyright Footer -->
    <div class="footerholder">
    <div class="site-footer">
            Copyright 2016 &copy;
    </div>
    </div>

</html>
