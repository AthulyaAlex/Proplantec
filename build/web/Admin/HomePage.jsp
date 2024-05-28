<%-- 
    Document   : HomePage
    Created on : 12 Jan, 2024, 4:18:45 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@include file="Head.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Home Page</title>
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
                <div style="background-color: #26404387;min-height: 700px">
                    <br><br><br><br><br><br>
                
          <div>  
        <h1  class="font" >Hello<%=session.getAttribute("aname")%></h1>
          </div>
                
        <%
         
          String s="select sum(booking_total) as amount from tbl_booking";
          ResultSet rs=con.selectCommand(s);
          rs.next();
          int admin_amt=Integer.parseInt(rs.getString("amount"));
           double perc=admin_amt*0.20;
           String sel="select sum(assign_amount) as am from tbl_assignbooking";
           ResultSet rs1=con.selectCommand(sel);
          rs1.next();
          double booking_amt=Integer.parseInt(rs1.getString("am"));
          double balance= perc-booking_amt;
         %>
         
         <br>
         <h3 style="color:white;">COMMISSION : <%out.println(balance);%></h3>
         
         
    </body>
</html>

                </div>
<%@include file="Foot.jsp"%>