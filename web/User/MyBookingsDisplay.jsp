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
    </head>
    <body>
       <div class="bg-img">
                <div style="background-color: #26404387;min-height: 700px">
                 <form method="post">
                     <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table border="1" align="center" cellpadding="10">       
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
                        out.println("Package Arrived");
                    }
                    else if (rs.getString("cart_status").equals("5") && rs.getString("booking_status").equals("1")) {
                        out.println("Out for delivery");
                    }
                    else if (rs.getString("cart_status").equals("6") && rs.getString("booking_status").equals("1")) {
                      
                        %>
                        Product Delivered<br> <a href="Review.jsp?id=<%=rs.getString("product_id")%>"style="color: #34ce57">Product Review</a><br>
                        
                        
                        <%
                         String selQry= "select * from tbl_assignbooking where booking_id='"+rs.getString("booking_id")+"' ";
                                 ResultSet rs1 = con.selectCommand(selQry);
                                 while(rs1.next()){
                                     %>
                                 <a href="AgencyReview.jsp?id=<%=rs1.getString("agent_id")%>"style="color: #34ce57">Agency Review</a>
                                 <%
                                 }
                        }

                    %></td>
                </tr>
                     <%
                 }
                     %>      
                 </table><br>
    </body><br><br><br><br><br><br><br><br>
</html>
</div>
                </div>
          </div>
<%@include file="Foot.jsp" %>