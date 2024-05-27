<%-- 
    Document   : HomePage
    Created on : 11 Jan, 2024, 10:54:58 AM
    Author     : HP
--%>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="Head.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
        <title>Nursery Home Page</title>
        <style>
/*            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-image: center;
            }*/
            body {
                margin: 0;
                padding: 0;
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') no-repeat center center/cover;
                min-height: 800px
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
                <div style="background-color: #26404387;"><br><br><br><br><br><br><br>
                    <div>
                        <h1 style="color: white;">Hello<%=session.getAttribute("nname")%></h1>
                </div>
                <a href="ComplaintView.jsp">COMPLAINTS</a>
                
    </body><br><br><br><br><br><br><br><br><br><br>
</html>         
</div></div>
<%@include file="Foot.jsp" %>
