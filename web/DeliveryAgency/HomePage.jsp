<%-- 
    Document   : HomePage
    Created on : 14 Jan, 2024, 10:56:38 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Delivery Agency Page</title>
    </head>
    <body>
       <h1>Hello<%=session.getAttribute("gname")%></h1>
       <a href="MyProfile.jsp">PROFILE</a><br>
       <a href="EditProfile.jsp">EDIT PROFILE</a><br>
       <a href="ChangePassword.jsp">CHANGE PASSWORD</a>

    </body>
</html>
