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
                <div style="background-color:  #26404387;min-height: 700px">
                    <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                     <div>
                     <h1 style="color: white";>Hello<%=session.getAttribute("uname")%></h1>
                     </div>
                     <a href="MyProfile.jsp" style="color: white">PROFILE</a><br>
        <a href="Complaint.jsp" style="color: white">COMPLAINT NURSERY</a><br>
        <a href="ComplaintStatus.jsp" style="color: white">NURSERY COMPLAINT STATUS</a><br>
        <a href="ComplaintAgency.jsp" style="color: white">COMPLAINT AGENT</a><br>
        <a href="ComplaintAgencyStatus.jsp" style="color: white">AGENT COMPLAINT STATUS</a><br>
        </body> <br><br><br><br><br><br><br> <br><br><br><br><br><br><br><br>
</html>
</div>
                </div>
<%@include file="Foot.jsp" %>