<%-- 
    Document   : HomePage
    Created on : 12 Jan, 2024, 4:18:45 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
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
            
        </style>
    </head>
    
    <body>
         <div class="bg-img">
                <div style="background-color: #000000b8 !important;">
                 <br><br><br><br><br><br><br>
            
        <h1 class="banner">Hello<%=session.getAttribute("aname")%></h1>
        <a href="ChangePassword.jsp" style="color: white;">CHANGE PASSWORD</a>
        <%
         
          String s="select sum(booking_total) as amount from tbl_booking";
          ResultSet rs=con.selectCommand(s);
          rs.next();
          int admin_amt=Integer.parseInt(rs.getString("amount"));
           double perc=admin_amt*0.20;
         %>
         <br>
         <h3 style="color:white;">COMMISSION : <%out.println(perc);%></h3>
         <a href="ViewComplaint.jsp" style="color: white;">COMPLAINTS</a><br>
         <a href="Assign.jsp" style="color: white;">ASSIGN BOOKING</a>
         
    </body>
</html>
<br><br><br><br><br><br><br><br>
<%@include file="Foot.jsp"%>