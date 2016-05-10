<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.js"></script>
<<link rel="stylesheet" type="text/css" href="../resources/css/bae.css" />

<!DOCTYPE html>
<html>
    <head>
        
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        
        <!--Java script starts here -->
         
        
        <script src="${cp}/resources/js/js.js"> </script>
        <!--Java script starts here -->     
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="http://code.jquery.com/jquery-latest.min.js"></script>
        <script>
            $(function () {
                $('#view_Cart_form').submit(function () {
                    // show a hidden div to indicate progression
                    $('#hideSuccessfulPayment').show();
                    $('#hideConfirm').show();
                    $('#hideCheckout').hide();
                    // kick off AJAX
                    $.ajax({
                        url: this.action,
                        type: this.method,
                        data: $(this).serialize(),
                        success: function () {
                            // AJAX request finished, handle the results and hide progress
                            $('#hideSuccessfulPayment').hide();
                            $('#hideConfirm').hide();
                        }
                    });
                    return false;
                });
            });
        </script>

        <style>
            #hideSuccessfulPayment { 
                display: none;
                font-size: 30px;
                text-align:center;
                color: red; 
            }
           
        </style> 

        <title class="titleviewcart">Ticket Cart</title>
        </head>
        <body>
            <div class="viewcart" style="position:absolute; left:40%;">
                <h1>Ticket Cart</h1>

                <p>Click on the [Increase] sign to increase tickets to the basket</p>
                <p>Click on the [Decrease] sign to decrease tickets from the basket </p>
                <p>Click on the [Remove  ] sign to remove tickets from the basket </p>

            <table style="width: 400px">
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
            <p>Total: £${cart.getTotal()}</p>

            <p>Please enter card information</p>
            <form id="view_Cart_form" action="servlet-url" method="post">
               <p>Card holder name <input type="text" name="cardholdername" maxlength="40" required onkeypress="return (event.charCode === 8 || event.charCode === 0) ? null : ((event.charCode >= 65 && event.charCode <= 91) || (event.charCode >= 97 && event.charCode <= 122))"></p>
                <p>Card number <input type="text" name="cardnumber" maxlength="16" required onkeypress="return (event.charCode === 8 || event.charCode === 0) ? null : event.charCode >= 48 && event.charCode <= 57"></p>
                <p>Security code <input type="text" name="securitycode" maxlength="3" size="3" onkeypress="return (event.charCode === 8 || event.charCode === 0) ? null : event.charCode >= 48 && event.charCode <= 57" required></p>
                 <p>Expiry date <input type="date" name="date" required></p>
                <input type="submit" value="Pay Now">
            </form>
            <div id="hideSuccessfulPayment" style="display: none;">Payment Successful</div>
           
            <div id="hideCheckout">
            <p><a href="/DeliriumEvents/tickets/index2">Back to Checkout</a></p>
            </div>
            
            <div id="hideConfirm" style="display: none;">
                <p>
                    <a href="/DeliriumEvents/cart/confirmation">View Payment </a>
                </p>
            </div>
        </div>
    </body>
</html>
