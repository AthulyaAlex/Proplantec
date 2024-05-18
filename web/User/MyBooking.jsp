<%-- 
    Document   : MyBooking
    Created on : 14 May, 2024, 3:21:53 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Booking</title>
    </head>
    <body>
        <table border="1" align="center">
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
                        
                </tr>
                  
                <%
                    } 
                    %> 
               
        </table>
    </body>
</html>
