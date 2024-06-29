<%-- 
    Document   : Commission
    Created on : 31 May, 2024, 11:12:43 PM
    Author     : HP
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Commission Details</title>
        <style>
            /*            .bg-img {
                            background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                            background-repeat: no-repeat;
                            background-size: cover;
                        }*/
            body {
                margin: 0;
                padding: 0;
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') no-repeat center center/cover;
                min-height: 800px
            }
            .font{
                color: white;
            }

        </style>
    </head>
    <body>
      
        <div class="bg-img">
            <div style="background-color: #26404387;min-height: 700px"><br><br><br><br><br>
                  <h2 align="center" style="color:white">Commission Details</h2>
                   <style>
    th {
        padding: 10px; /* Adjust the padding value to increase or decrease the space */
    }
</style>
                <table border="1" align="center" style="color: white">
                    <tr>
                        <th>Sl.No</th>
                        <th>User Name</th> 

                        <th>Total Payment</th> 

                        <th>Allowance</th>

                    </tr>
                    <%
                        int j = 0;
                        String seleQry = "select * from tbl_booking b inner join tbl_assignbooking aa on aa.booking_id=b.booking_id inner join tbl_user u on u.user_id=b.user_id ";
                        ResultSet rs1 = con.selectCommand(seleQry);
                        while (rs1.next()) {
                            j++;
                    %>
                    <tr>
                        <td align="center">
                            <%=j%></td>
                        <td><%=rs1.getString("user_name")%></td>

                        <td><%=rs1.getString("booking_total")%></td>

                        <td>
                            <%
                                int admin_amt = Integer.parseInt(rs1.getString("booking_total"));
                                double perc = (admin_amt * 0.20);
                                double booking_amt = Integer.parseInt(rs1.getString("assign_amount"));
                                double balance = perc - booking_amt;
                                out.println(balance);
                            %>

                        </td>

                    </tr>
                    <%
                        }
                    %>
                </table>
                </body>
                </html>
            </div>
        </div>
    <%@include file="Foot.jsp" %>