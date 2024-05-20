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
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Home Page</title>
        <title>Login</title>
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
                    <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                     <h1 style="color: white";>Hello<%=session.getAttribute("uname")%></h1>
        <a href="MyProfile.jsp">PROFILE</a><br>
        <a href="EditProfile.jsp">EDIT PROFILE</a><br>
        <a href="ChangePassword.jsp">CHANGE PASSWORD</a><br>
        <a href="Search.jsp">SEARCH</a><br>
        <a href="MyBookingsDisplay.jsp">MY ORDERS</a><br>
        <a href="Cart.jsp">MY CART</a><br>
        <a href="Feedback.jsp">FEEDBACK</a><br>
        <a href="Complaint.jsp">COMPLAINT</a><br>
        </body>
</html>
<%@include file="Foot.jsp" %>