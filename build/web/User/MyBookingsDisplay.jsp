<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Bookings Display</title>
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
            <h2 style="color: white">Bookings</h2><br>
         
        
                <tr>
                    <th>Sl.no</th>
                    <th>Product Name</th>
                    <th>Product Price</th>
                    <th>Quantity</th>
                    <th>Total</th>
                    <th>Status</th>
                   
                </tr>
                <%
                    String selbook="select * from tbl_booking b inner join tbl_cart c on c.booking_id=b.booking_id inner join tbl_user u on u.user_id=b.user_id inner join tbl_product p on p.product_id=c.product_id where u.user_id='" + session.getAttribute("uid") + "' and booking_status>0 and payment_status='1'";
                    ResultSet rs = con.selectCommand(selbook);
                    int i = 0;
                    while (rs.next()) {
                         i++;
                           
                %>
                <tr>
                       
                        <td><%=i%></td>
                         <td><%=rs.getString("product_name")%></td>
                         <td><%=rs.getString("product_rate")%></td>
                         <td><%=rs.getString("cart_quantity")%></td>
                         <td>
                             <%
                                int Total = Integer.parseInt(rs.getString("product_rate")) * Integer.parseInt(rs.getString("cart_quantity"));
                                out.println(Total);
                              
                              %></td>
                         <td> <%
                    if (rs.getString("booking_status").equals("1") && rs.getString("cart_status").equals("1")) {
                        out.println("Payment Completed ,Package on Waiting List");
                    } else if (rs.getString("cart_status").equals("2") && rs.getString("booking_status").equals("1")) {
                        out.println("Product Packed");
                    } else if (rs.getString("cart_status").equals("3") && rs.getString("booking_status").equals("1")) {
                     out.println("Product Shipped");
                    } else if (rs.getString("cart_status").equals("4") && rs.getString("booking_status").equals("1")) {
                        %>
                        Product Delivered <a href="Review.jsp?id=<%=rs.getString("product_id")%>">Review</a>
                        <%
                        }

                    %></td>
                </tr>
                     <%
                 }
                     %>      
                 </table><br>
    </body>
</html>
<%@include file="Foot.jsp" %>