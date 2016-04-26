<%-- 
    Document   : events
    Created on : 20-Apr-2016, 15:36:30
    Author     : sinan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

    <html>
    <head>
        <!-- Imports -->
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="https://code.jquery.com/jquery-2.2.3.min.js"></script>
        <script src="${cp}/resources/js/js.js"> </script>
        
    </head>
    <body>  
        <!-- Title-->
        <h1>Events</h1>
        
    </body>
    
    <div class="logo">
        <img src="${cp}/resources/logo.jpg" alt="Logo" style="width:200px;height:134px;">
    </div> 
    
    <div class="nav">
    <ul>
          <!-- Navigation Bar -->
        <li class="index"><a href="index.htm" >Home</a></li>
        <!-- active indicates what page the user is on -->
        <li class="venues"><a  href="venues.htm">Venues</a></li>
        <li class="events"><a href="events.htm" class="active">Events</a></li>
        <li class="about"><a href="about.htm" >About</a></li>
        <li class="contact"><a href="contact.htm">Contact</a></li>
        
      </ul>
     </div>
   
    <div class="venueone">
<div id="comments" class="testcomment">
    <h2 href="#" class="btn">Bar 13</h2>
    <div id="comment-wrap">     
<p>Event one: 28/04/2016 </p>
<p>Event Details go here/p>
<p>......................</p>
    <button>Add To Basket</button>
    
<p>Event two: 29/04/2016 </p>
<p>Event Details go here</p>
<p>......................</p>

    <button>Add To Basket</button>

<p>Event three: 21/05/2016 </p>
<p>Event Details go here/p>
<p>......................</p>
    <button>Add To Basket</button>      
    </div>
    </div>
        
   <div class="venueone">
<div id="comments" class="testcomment">
    <h2 href="#" class="btn">Casino Night Club</h2>
    <div id="comment-wrap">     
<p>Event one: 28/04/2016 </p>
<p>Event Details go here</p>
<p>......................</p>
    <button>Add To Basket</button>
    
<p>Event two: 29/04/2016 </p>
<p>Event Details go here</p>
<p>......................</p>

    <button>Add To Basket</button>

<p>Event three: 21/05/2016 </p>
<p>Event Details go here</p>
<p>......................</p>
    <button>Add To Basket</button>      
    </div>
    </div>
       
       <div class="venueone">
<div id="comments" class="testcomment">
    <h2 href="#" class="btn">Tickled Ivory</h2>
    <div id="comment-wrap">     
<p>Event one: 28/04/2016 </p>
<p>Event Details go here</p>
<p>......................</p>
    <button>Add To Basket</button>
    
<p>Event two: 29/04/2016 </p>
<p>Event Details go here</p>
<p>......................</p>

    <button>Add To Basket</button>

<p>Event three: 21/05/2016 </p>
<p>Event Details go here</p>
<p>......................</p>
    <button>Add To Basket</button>      
    </div>
    </div>
           
<div class="venueone">
<div id="comments" class="testcomment">
    <h2 href="#" class="btn">Weatherspoons</h2>
    <div id="comment-wrap">     
<p>Event one: 28/04/2016 </p>
<p>Event Details go here</p>
<p>......................</p>
    <button>Add To Basket</button>
    
<p>Event two: 29/04/2016 </p>
<p>Event Details go here</p>
<p>......................</p>

    <button>Add To Basket</button>

<p>Event three: 21/05/2016 </p>
<p>Event Details go here</p>
<p>......................</p>
    <button>Add To Basket</button>      
    </div>
    </div>
  
    
    </body>
    
    <div class="footerholder">
    <div class="site-footer">
        Copyright 2016	&copy;
    </div>
</div>

</html>