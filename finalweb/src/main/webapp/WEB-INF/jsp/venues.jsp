<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

    <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="${cp}/resources/js/js.js"></script>
    </head>
    <body>  
        <!-- Title-->
        <h1> Venues</h1>
        Spring says: <span class="blue">${msg}</span>
   
    <div class="nav">
    <ul>
          <!-- Navigation Bar -->
        <li class="index"><a href="index.htm" >Home</a></li>
        <!-- active indicates what page the user is on -->
        <li class="venues"><a  href="venues.htm" class="active">Venues</a></li>
        <li class="about"><a href="about.htm" >About</a></li>
        <li class="contact"><a href="contact.htm">Contact</a></li>
      </ul>
     </div>
        
        <div class="boxone">
        <h1>Bar 13</h1>
<p>Address: 13-15 Bridge Street, Guildford</p>
<p>Phone: 01483 546578</p>
<p>E-mail: info@barthirteen.co.uk</p>
        </div>     
        
        
         <div class="boxone">
        <h1>Casino Nightclub</h1>
<p>Address: Onslow Street,
Guildford, GU1 4SQ
Surrey</p>
<p>Phone: 01483 865780</p>
<p>E-mail: casino-guildford@luminar.co.uk</p>
        </div>    
        
         <div class="boxone">
        <h1>Tickled Ivory</h1>
<p>Address: ??????????????</p>
<p>Phone: ??????????????</p>
<p>E-mail: ??????????????</p>
        </div>       
        
        
    </body>
    
    <div class="footerholder">
    <div class="site-footer">
        Copyright 2016	&copy;
    </div>
</div>

</html>
