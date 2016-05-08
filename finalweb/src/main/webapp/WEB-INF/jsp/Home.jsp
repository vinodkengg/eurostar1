<%-- 
    Document   : Home
    Created on : 07-May-2016, 22:37:34
    Author     : Nabs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="${cp}/resources/js/js.js"> </script>
        
    </head>
   
           <div class="nav">
            <ul>
                <li class="index"><a href="index.htm" >Home</a></li>
                <li class="venues"><a  href="venues.htm">Venues</a></li>
                <li class="events"><a href="events.htm">Events</a></li>
                <li class="about"><a href="about.htm" >About</a></li>
                <li class="hello"><a href="hello.htm">Genres</a></li>
                <li class="name"><a href="nameView.htm">View Guest List </a></li>
                <li class="contact"><a href="contact.htm" class="active">Contact</a></li>
                <li class="login"><a href="login.htm">Login</a></li>
               <li class="registration"><a href="registration.htm">Registration</a></li>
            </ul>
    
            <div class="active">
                
                <div id="msg">Click on Events!</div>
                
            </div>
        <h1 style="color:green">Login Successful!</h1>
                <h1 style="color:royalblue">${userInformation} ,</h1> <h1 style="color:green">welcome to Spring World !</h1>
    </body>
</html>