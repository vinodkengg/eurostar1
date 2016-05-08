<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    
    <head>
        <script src="http://maps.googleapis.com/maps/api/js"></script>
       <!-- <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>-->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.2/jquery.min.js"></script>
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <!--Java script starts here -->     
        <script src="${cp}/resources/js/js.js"> </script>
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
                <!-- active indicates what page the user is on -->
                <li class="venues"><a  href="venues.htm" class="active">Venues</a></li>
                <li class="events"><a href="events.htm">Events</a></li>
                <li class="hello"><a href="helloView.htm">Add To Guest List </a></li>
                <li class="name"><a href="nameView.htm">View Guest List </a></li>
                <li class="about"><a href="about.htm" >About</a></li>
                <li class="contact"><a href="contact.htm">Contact</a></li>
                <li class="login"><a href="login.htm">Login</a></li>
                <li class="registration"><a href="registration.htm">Registration</a></li>
            </ul>
        </div>
   
        <!--different types of venues-->
        <div class="Venues">
            <div class="venueone">
                <div id="comments" class="testcomment">
                    <h2 href="#" class="btn">Bar 13</h2>
                    <div id="comment-wrap">     
                        <p>Address: 13-15 Bridge Street, Guildford</p>
                        <p>Phone: 01483 546578</p>
                        <p>E-mail: info@barthirteen.co.uk</p>
                            <input id="Button2" type="button" value="Show on Map" onclick="return Button2_onclick()" />
                    </div>
                </div>
            </div> 

            <div class="venuetwo">
                <div id="comments" class="testcomment">
                    <h2 href="#" class="btn">Casino Night Club</h2>
                    <div id="comment-wrap">     
                        <p>Address: 13-15 Bridge Street, Guildford</p>
                        <p>Phone: 01483 546578</p>
                        <p>E-mail: info@barthirteen.co.uk</p>
                           <input id="Button1" type="button" value="Show on Map" onclick="return Button1_onclick()" />
                    </div>
                </div>
            </div>

            <div class="venuethree">
                <div id="comments" class="testcomment">
                    <h2 href="#" class="btn">Tickled Ivory</h2>
                    <div id="comment-wrap">     
                        <p>Address: 13-15 Bridge Street, Guildford</p>
                        <p>Phone: 01483 546578</p>
                        <p>E-mail: info@barthirteen.co.uk</p>
                           <input id="Button3" type="button" value="Show on Map" onclick="return Button3_onclick()" />
                    </div>
                </div>    
            </div>
        
        </div>
        
    <div class="container">
      <br>
      <div id="myCarousel" class="carousel slide" data-ride="carousel">
        <!-- Indicators -->
        <ol class="carousel-indicators">
          <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
          <li data-target="#myCarousel" data-slide-to="1"></li>
          <li data-target="#myCarousel" data-slide-to="2"></li>          
        </ol>
        
        <!-- Wrapper for slides -->
        <div class="carousel-inner" role="listbox">
          <div class="item active">
            <img src="http://olliewade.com/website/wp-content/uploads/2015/05/p1086670672-5.jpg" alt="Bar Thirteen" width="600" height="300">
          </div>

          <div class="item">
            <img src="http://i2.getsurrey.co.uk/incoming/article5325769.ece/ALTERNATES/s615/TM364594News.jpg" alt="Casino" width="600" height="300">
          </div>

          <div class="item">
            <img src="http://www.tickledivory.com/piano-bar-live-music/Tickled-Ivory-new.jpg" alt="Tickled Ivory" width="600" height="300">
          </div>
        </div>
       

    
   
    <div id="googleMap" class="mapdiv"></div>
    
    
        
    </body>
    
    <!--Copyright Footer -->
    <div class="footerholder">
        <div class="site-footer">
            Copyright 2016 &copy;
        </div>
    </div>
</html>
