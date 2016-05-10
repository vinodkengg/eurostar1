<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tickets for Sale</title>
    </head>

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
