<%-- 
    Document   : nameView
    Author     : Bogdan Vrusias
--%>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        
        <title>JSP Page</title>
    </head>
    <body>
        <p>This is nameview Page </p>
        <form action="" method="post">
            Name:
            <spring:bind path="name.value">
                <input type="text"
                       name="${status.expression}"
                       value="${status.value}">
                <br>
            Number of People Attending:
                <input type="text"
                       name="${status.expression}"
                       value="${status.value}">
            </spring:bind>
                
                
            
            <input type="submit" value="OK">
        </form>
    </body>
</html>
