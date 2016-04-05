<%-- 
    Document   : index2
    Created on : Apr 2, 2016, 11:18:58 PM
    Author     : tommyacton
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<c:set var="cp" value="${pageContext.request.servletContext.contextPath}" scope="request" />
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="${cp}/resources/js/js.js"></script>
    </head>
    <body>
        <h1> Welcome to the registration page  </h1>
        <span class="red">${msg}</span>
        <p> First Name</p>
        <p> Last Name</p>
         <p> Email</p>
         <p>Time</p>
         <p>Toms a dickead</p>
         
    </body>
</html>
