<%-- 
    Document   : Assign
    Created on : 20 May, 2024, 2:20:09 PM
    Author     : HP
--%>
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
            <%
        if (request.getParameter("id") != null) {
            String up = "update tbl_cart set cart_status='"+request.getParameter("status")+"' where cart_id='" + request.getParameter("id") + "'";

            if (con.executeCommand(up)) {
                response.sendRedirect("BookingsDisplay.jsp");
            }
        }


    %>
    </head>
    <body>
       <div class="bg-img">
                <div style="background-color:  #26404387;">
                 <form method="post">
                     <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">       
        <div align="center">
            <h2 style="color: white">Bookings</h2><br>
         
        
                <tr>
                    <th>Sl.no</th>
                    <th>Product Name</th>
                    
                    <th>Quantity</th>
                    
                    <th>Action</th>
                    
                </tr>
                    <%
                    String selbook="select * from tbl_booking b inner join tbl_cart c on c.booking_id=b.booking_id inner join tbl_product u on u.product_id=c.product_id inner join tbl_nursery n on n.nursery_id=u.nursery_id  where n.nursery_id='" + session.getAttribute("nid") + "' and booking_status>0 and payment_status='1'";
                    ResultSet rs = con.selectCommand(selbook);
                    int i = 0;
                    while (rs.next()) {
                         i++;
                           
                %>
                
                     <tr>
                       
                        <td><%=i%></td>
                         <td><%=rs.getString("product_name")%></td>
                        
                         <td><%=rs.getString("cart_quantity")%></td>
                         <td><a href="AgencyList.jsp?bid=<%=rs.getString("booking_id")%>">ASSIGN</a></td>
                         
                     </tr>
                    
                     <%
                 }
                     %>      
                 </table><br><br><br>
    </body>
</html>
<%@include file="Foot.jsp" %>
