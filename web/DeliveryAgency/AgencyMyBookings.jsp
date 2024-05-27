<%-- 
    Document   : AgencyMyBookings
    Created on : 24 May, 2024, 12:15:38 PM
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
                color:white;
            }
            </style>
            <%
        if (request.getParameter("id") != null) {
            String up = "update tbl_cart set cart_status='"+request.getParameter("status")+"' where cart_id='" + request.getParameter("id") + "'";

            if (con.executeCommand(up)) {
                response.sendRedirect("AgencyMyBookings.jsp");
            }
        }


    %>
    </head>
    <body>
       <div class="bg-img">
                <div style="background-color: #26404387;">
                 <form method="post">
                     <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">       
        <div align="center">
            <h2 style="color: white">Bookings</h2><br>
         
        
               
                <tr>
                    <th>Sl.no</th>
                    <th>User Name</th>
                    <th>Product Name</th>
                    <th>Quantity</th>
                    <th>Location</th>
                    <th>Action</th>
                    
                </tr>
               <%
                    String selbook="select * from tbl_booking b inner join tbl_user us on b.user_id=us.user_id inner join tbl_localplace lp on lp.localplace_id=us.localplace_id  inner join  tbl_assignbooking a on a.booking_id=b.booking_id inner join tbl_cart c on c.booking_id=b.booking_id inner join tbl_product u on u.product_id=c.product_id inner join tbl_agent n on n.agent_id=a.agent_id  where a.agent_id='" + session.getAttribute("gid") + "' and booking_status>0 and payment_status='1'";
                    ResultSet rs = con.selectCommand(selbook);
                    int i = 0;
                    while (rs.next()) {
                         i++;
                           
                %>
                <tr>
                       
                        <td><%=i%></td>
                       <td><%=rs.getString("user_name")%></td>
                         <td><%=rs.getString("product_name")%></td>
                         <td><%=rs.getString("cart_quantity")%></td>
                        <td><%=rs.getString("localplace_name")%></td>
                         
                        <td><%
                     if (rs.getString("cart_status").equals("4") && rs.getString("booking_status").equals("1")) {
                    %>
                    Package Arriving<a href="AgencyMyBookings.jsp?id=<%=rs.getString("cart_id")%>&status=5">Package Arrived</a>
                    <%
                    } else if (rs.getString("cart_status").equals("5") && rs.getString("booking_status").equals("1")) {
                    %>
                    Preparing for delivery<a href="AgencyMyBookings.jsp?id=<%=rs.getString("cart_id")%>&status=6">Out For Delivery</a>
                    <%
                    }  else if (rs.getString("cart_status").equals("6") && rs.getString("booking_status").equals("1")) {
                    %>
                    Product Delivered 
                    <%
                                            }
                                        %>



                                        <%
                                            }

                                        %>
                                </tr>
        
                 </table><br>
    </body><br><br><br><br><br><br><br><br>
</html>
</div>
                </div>
          </div>
<%@include file="Foot.jsp" %>
