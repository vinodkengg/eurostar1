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
                <li class="about"><a href="about.htm" >About</a></li>
                <li class="contact"><a href="contact.htm">Contact</a></li>
            </ul>
        </div>
   
        <!--different types of venues -->
        <div class="Venues">
            <div class="venueone">
                <div id="comments" class="testcomment">
                    <h2 href="#" class="btn">Bar 13</h2>
                    <div id="comment-wrap">     
                        <p>Address: 13-15 Bridge Street, Guildford</p>
                        <p>Phone: 01483 546578</p>
                        <p>E-mail: info@barthirteen.co.uk</p>
                            <button>Show on Map</button> <button>Events</button>
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
                            <button>Show on Map</button> <button>Events</button>
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
                           <button>Show on Map</button> <button>Events</button>
                    </div>
                </div>    
            </div>
        
        </div>

        <!--Images from online directory in container -->
        <div class="container_venues">
            <div class="slider_wrapper">
                <ul id="image_slider">
                    <li><img src="https://dl.dropboxusercontent.com/u/65639888/image/1.jpg"></li>
                    <li><img src="https://dl.dropboxusercontent.com/u/65639888/image/4.jpg"></li>
                    <li><img src="https://dl.dropboxusercontent.com/u/65639888/image/5.jpg"></li>
                    <li><img src="https://dl.dropboxusercontent.com/u/65639888/image/1.jpg"></li>
                    <li><img src="https://dl.dropboxusercontent.com/u/65639888/image/4.jpg"></li>
                    <li><img src="https://dl.dropboxusercontent.com/u/65639888/image/5.jpg"></li>
                </ul>					
                    <span class="nvgt" id="prev"></span>
                    <span class="nvgt" id="next"></span>
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