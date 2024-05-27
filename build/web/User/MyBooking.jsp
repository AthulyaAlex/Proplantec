<%-- 
    Document   : MyBooking
    Created on : 14 May, 2024, 3:21:53 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
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
                color:white;
            }
            </style>
    </head>
    <body>
        <div class="bg-img">
                <div style="background-color: #000000b8 !important;">
                    <form method="post>"
                  <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                <tr>
                    <th>Sl.no</th>
                    <th>Amount</th>
                    <th>Booking Status</th>
                    <th>Products</th>
                    <th>Action</th>
                </tr>
                <%
                    String selbook="select * from tbl_booking where user_id= '" + session.getAttribute("uid") +"' ";
                    ResultSet rs = con.selectCommand(selbook);
                    int i = 0;
                    while (rs.next()) {
                         i++;
                           
                %>
                <tr>
                         <td><%=i%></td>
                         <td><%=rs.getString("booking_total")%></td>
                         <td><%=rs.getString("booking_status")%></td>
                         <td><a href="MyBookingsDisplay.jsp">View Product</a></td>
                </tr>
                  
                <%
                    } 
                    %> 
               
        </table><br><br><br><br><br>
    </body>
</html>
<%@include file="Foot.jsp" %>