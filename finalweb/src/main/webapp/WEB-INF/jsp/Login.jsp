<%-- 
    Document   : Login
    Created on : 07-May-2016, 22:37:25
    Author     : Nabs
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<!DOCTYPE html>
<html>
    <body>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"> </script>
        <title>Group CourseWork 4 </title>
        <link rel="stylesheet" type="text/css" href="${cp}/resources/css/site.css" />
        <script src="${cp}/resources/js/js.js"> </script>
        <title>User Login</title>
    </head>
    
        <h4>Please insert your login details</h4>
        <p1>Username:group4</p1><br>
        <p1>Password:hello</p1><br>
        <form:form method="post" name="loginForm">
            <table>
                <tr><td>User Name: </td><td><input name="username" type="textbox"></td></tr>
                <tr><td>Password: </td><td><input name="password" type="password"></td></tr>
                <tr><td colspan="2" align="right"><input type="submit" value="Submit"></td></tr>
            </table>
            <div style="color:red">${errorMessage}</div>
        </form:form>
 
    </body>
</html>