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
        <script>

        </script>



        <title class="titleviewcart">Ticket Cart</title>
    </head>

    <div class="viewcart" style="position:absolute; left:40%;">
        <h1>Ticket Cart</h1>

        <p>Click on the [Increase] sign to increase tickets to the basket</p>
        <p>Click on the [Decrease] sign to decrease tickets from the basket </p>
        <p>Click on the [Remove  ] sign to remove tickets from the basket </p>
        <br>
        <br>
        <div class="payment">
            <table >
                <tr>
                    <td>Tickets</td>
                    <td>Unit Price</td>
                    <td>Qty</td>
                    <td>&nbsp;</td>
                </tr>

                <c:forEach items="${cart.items}" varStatus="i" var="item">
                    <c:url value="/cart/remove" var="r_url" context="/DeliriumEvents">
                        <c:param name="pid" value="${item.product.id}"/>
                    </c:url>
                    <c:url value="/cart/increase" var="i_url" context="/DeliriumEvents">
                        <c:param name="pid" value="${item.product.id}"/>
                    </c:url>
                    <c:url value="/cart/decrease" var="d_url" context="/DeliriumEvents">
                        <c:param name="pid" value="${item.product.id}"/>
                    </c:url>
                    <tr>
                        <td>${item.product.description}</td>
                        <td>£${item.product.price}</td>
                        <td>${item.quantity}</td>
                        <td>
                            <a href="${i_url}">[Add]</a>
                            <a href="${d_url}">[Remove]</a>
                            <a href="${r_url}">[Delete]</a>
                        </td>
                    </tr>
                </c:forEach>
            </table>
        </div>
        <h1>Total: £${cart.getTotal()}</h1>

        <p>Please enter card information</p>
        <form id="view_Cart_form" action="servlet-url" method="post">
            <p>Card holder name <input type="text" name="cardholdername" maxlength="40" required onkeypress="return (event.charCode === 8 || event.charCode === 0) ? null : ((event.charCode >= 65 && event.charCode <= 91) || (event.charCode >= 97 && event.charCode <= 122))"></p>
            <p>Card number <input type="text" name="cardnumber" maxlength="16" required onkeypress="return (event.charCode === 8 || event.charCode === 0) ? null : event.charCode >= 48 && event.charCode <= 57"></p>
            <p>Security code <input type="text" name="securitycode" maxlength="3" size="3" onkeypress="return (event.charCode === 8 || event.charCode === 0) ? null : event.charCode >= 48 && event.charCode <= 57" required></p>
            <p>Expiry date <input type="date" name="date" required></p>
            <br>
            <input type="submit" value="Pay Now">
        </form>
        <div id="hideSuccessfulPayment" style="display: none;">
            <p>Payment Successful </p>
            <p>
                <a href="/DeliriumEvents/cart/confirmation">View Payment </a>
            </p>
        </div>


        <p id="hideConfirm"><a href="/DeliriumEvents/tickets/index2">Back to Checkout</a></p>

    </div>
</body>
<div class="footerholder">
    <div class="site-footer">
        Copyright 2016 &copy;
    </div >
</div>

</html>
