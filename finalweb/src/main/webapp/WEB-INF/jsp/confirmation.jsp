<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE html>

<html>
    <head>
        <!--Imports for CSS, JS and Jquery -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="${cp}/resources/js/js.js"></script>
        <title> Confirmation </title>
    </head>

    <body>

        <h1> Delirium Events</h1>

        <!-- Website Logo Left -->
        <div class="logoleft">
            <img src="${cp}/resources/logo.jpg" alt="Logo" style="width:150px;height:100px;">
        </div>

        <!-- Website Logo Right -->
        <div class="logoright">
            <img src="${cp}/resources/logo.jpg" alt="Logo" style="width:150px;height:100px;">
        </div>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
    <body onload="Button4_onclick()">
    
        <!-- Website Logo Left -->
    <div class="logoleft">
        <img src="${cp}/resources/logo.jpg" alt="Logo" style="width:150px;height:100px;">
    </div>  
            
    <!-- Website Logo Right -->
    <div class="logoright">
        <img src="${cp}/resources/logo.jpg" alt="Logo" style="width:150px;height:100px;">
    </div>         
      
    <!--Confirmation of the ticket bought for a specific event -->
    <div class="ticket" style="position:absolute; left:40%;">
        <h1>Confirmation</h1>

        <p>Thank you for your purchase</p>
    <div class="payment">
        <table>
            <tr>
                <td>Tickets</td>
                <td>Unit Price</td>
                <td>Qty</td>
                <td>&nbsp;</td>
            </tr>
        
        <c:forEach items="${cart.items}" varStatus="i" var="item">
            <tr>
                <td>${item.product.description}</td>
                <td>£${item.product.price}</td>
                <td>${item.quantity}</td>
            </tr>
        </c:forEach>
        </table>

        <p>Total: £${cart.getTotal()}</p>
        <p><a href="/DeliriumEvents/index" class="button">Home</a></p>
      
    </div>
    </div>
    
    <!--Copyright Footer -->
    <div class="footerholder">
        <div class="site-footer">
            Copyright 2016 &copy;
        </div>
    </div>
</body>
</html>
