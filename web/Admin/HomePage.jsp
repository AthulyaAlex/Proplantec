<%-- 
    Document   : HomePage
    Created on : 12 Jan, 2024, 4:18:45 PM
    Author     : HP
--%>
<%@include file="Head.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%><br><br><br><br><br><br><br><br>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
    </head>
    
    <body>
        <h3>Hello World!<%=session.getAttribute("aname")%></h3>
        <a href="ChangePassword.jsp">Change Password</a>
    </body>
</html>
<br><br><br><br><br><br><br><br>
<%@include file="Foot.jsp"%>