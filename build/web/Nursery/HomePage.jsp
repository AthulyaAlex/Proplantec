<%-- 
    Document   : HomePage
    Created on : 11 Jan, 2024, 10:54:58 AM
    Author     : HP
--%>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <br>   <br>   <br>   <br>   <br>   <br>
        <title>Nursery Home Page</title>
        <style>
            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-image: center;
            }
            .text-box {
                background-color: transparent;
                width: 215px;
                color:gray;
            }
        </style>
    </head>
    <body>
        <div class="bg-img">
                <div style="background-color: #000000b8 !important;">
        <h1 style="color: white;">Hello<%=session.getAttribute("nname")%></h1>
        <a href="MyProfile.jsp">PROFILE</a><br>
        <a href="EditProfile.jsp">EDIT PROFILE</a><br>
        <a href="ChangePassword.jsp">CHANGE PASSWORD</a><br>
        <a href="Product.jsp">ADD IMAGES</a><br>
        <a href="Productdisplay.jsp">UPLOADED IMAGES</a><br>
        <a href="BookingsDisplay.jsp">ORDERS</a>
        <br>   <br>   <br>   <br>   <br>   <br>   <br>   <br>   <br>   <br>   <br>
           
    </body>
</html>
<%@include file="Foot.jsp" %>
