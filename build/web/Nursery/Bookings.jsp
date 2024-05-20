
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><br><br>
        <title>Bookings</title>
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
                 <form method="post">
                     <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">       
             <div align="center">
                <h2 style="color: white">Orders</h2><br>
                <tr>
                    <th>Sl.no</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Action</th>
                </tr>
                <%
                 String selqry ="select * from tbl_cart c inner join tbl_product p on p.product_id=c.product_id";  
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                       
                        <td><%=i%></td>
                         <td><%=rs.getString("product_name")%></td>
                         <td><%=rs.getString("cart_quantity")%></td>
                     </tr>     
                 </table>
    </body>
</html>
<%@include file="Foot.jsp" %>
