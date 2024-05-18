<%-- 
    Document   : HomePage
    Created on : 12 Jan, 2024, 4:18:45 PM
    Author     : HP
--%>
<%@include file="Head.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%><br><br>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
        <style>
            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
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
            
        <h3 style="color: white;"><%=session.getAttribute("aname")%></h3>
        <h4><a href="ChangePassword.jsp" style="color: white;">CHANGE PASSWORD</a></h4>
    </body>
</html>
<br><br><br><br><br><br><br><br>
<%@include file="Foot.jsp"%>