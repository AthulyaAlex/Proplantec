<%-- 
    Document   : BookingsDisplay
    Created on : 20 May, 2024, 10:01:41 AM
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
        <%
            if (request.getParameter("id") != null) {
                String up = "update tbl_cart set cart_status='" + request.getParameter("status") + "' where cart_id='" + request.getParameter("id") + "'";

                if (con.executeCommand(up)) {
                    response.sendRedirect("BookingsDisplay.jsp");
                }
            }


        %>
    </head>
    <body>
        <div class="bg-img">
            <div style="background-color: #26404387; min-height: 700px">
                <form method="post">
                    <br><br><br><br><br><br><br>
                    <div style="color:white;font-size: 15px;">
                        <table border="1" align="center" cellpadding="10">       
                            <div align="center">
                                <h2 style="color: white">Bookings</h2><br>


                                <tr>
                                    <th>Sl.no</th>
                                    <th>Product Name</th>

                                    <th>Quantity</th>

                                    <th>Action</th>

                                </tr>
                                <%                        String selbook = "select * from tbl_booking b inner join tbl_cart c on c.booking_id=b.booking_id inner join tbl_product u on u.product_id=c.product_id inner join tbl_nursery n on n.nursery_id=u.nursery_id  where n.nursery_id='" + session.getAttribute("nid") + "' and booking_status>0 and payment_status='1'";
                                    ResultSet rs = con.selectCommand(selbook);
                                    int i = 0;
                                    while (rs.next()) {
                                        i++;

                                %>

                                <tr>

                                    <td><%=i%></td>
                                    <td><%=rs.getString("product_name")%></td>

                                    <td><%=rs.getString("cart_quantity")%></td>

                                    <td><%
                                        if (rs.getString("cart_status").equals("1") && rs.getString("booking_status").equals("1")) {
                                        %>
                                        Payment Completed <a href="BookingsDisplay.jsp?id=<%=rs.getString("cart_id")%>&status=2">Pack Product</a>
                                        <%
                                        } else if (rs.getString("cart_status").equals("2") && rs.getString("booking_status").equals("1")) {
                                        %>
                                        Product Packed <a href="BookingsDisplay.jsp?id=<%=rs.getString("cart_id")%>&status=3">Ship Product</a>
                                        <%
                                        } else if (rs.getString("cart_status").equals("3") && rs.getString("booking_status").equals("1")) {
                                        %>
                                        Preparing for dispatch <a href="BookingsDisplay.jsp?id=<%=rs.getString("cart_id")%>&status=4">Dispatch Product</a>
                                        <%
                                        } else if (rs.getString("cart_status").equals("4") && rs.getString("booking_status").equals("1")) {
                                       
                                        out.println("Package Arrived");
                                        } else if (rs.getString("cart_status").equals("5") && rs.getString("booking_status").equals("1")) {
                                        
                                         out.println("Preparing for delivery");
                                        
                                        
                                        } else if (rs.getString("cart_status").equals("6") && rs.getString("booking_status").equals("1")) {

                                        %>
                                        Product Delivered 
                                        <%
                                            }
                                        %>



                                        <%
                                            }

                                        %>
                                </tr>

                                <%                         
                                %>      
                        </table><br>
                        </body>
                        </html>
                                </div>
                    </div>
            </div>
                        <%@include file="Foot.jsp" %>