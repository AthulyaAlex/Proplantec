<%-- 
    Document   : HomePage
    Created on : 11 Jan, 2024, 10:54:58 AM
    Author     : HP
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Nursery Home Page</title>
    </head>
    <body>
        <h1>Hello<%=session.getAttribute("nname")%></h1>
        <a href="MyProfile.jsp">PROFILE</a><br>
        <a href="EditProfile.jsp">EDIT PROFILE</a><br>
        <a href="ChangePassword.jsp">CHANGE PASSWORD</a><br>
        <a href="Product.jsp">ADD IMAGES</a><br>
        <a href="Productdisplay.jsp">UPLOADED IMAGES</a>
    </body>
</html>
