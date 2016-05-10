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

    <body>
        
    <div class="ticket" style="position:absolute; left:40%;">
        <h1>Delirium Events Tickets</h1>
        
        <p>Click on the [BUY] to add tickets to the basket</p>

        <c:forEach items="${products}" varStatus="i" var="product">
        <p>
        <c:url value="/cart/add" var="url" context="/DeliriumEvents">
        <c:param name="pid" value="${product.id}"/>
        </c:url>
            No ${i.index + 1}. ${product.description} £${product.price} - <a href="${url}">[BUY]</a>
        </p>
        </c:forEach>

        <c:forEach items="${cart.items}" var="item">
            <c:set var="numItems" value="${numItems+item.quantity}"/>
        </c:forEach>
        <p><a href="/DeliriumEvents/cart/view">Checkout [${numItems > 0 ? numItems : 0}]</a></p>
    </div>
    
    </body>
</html>
