<%-- 
    Document   : HomePage
    Created on : 12 Jan, 2024, 4:18:45 PM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
    </head>
    <body>
        <h1>Hello World!<%=session.getAttribute("aname")%></h1>
        <a href="ChangePassword.jsp">Change Password</a>
        Hai
    </body>
</html>
