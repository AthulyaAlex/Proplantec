<%-- 
    Document   : MyProfile
    Created on : 5 Jan, 2024, 4:12:37 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
        <title>Login</title>
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
        <%
          String sel1 = "select*from tbl_user where user_id='"+session.getAttribute("uid")+"'";  
          ResultSet rs = con.selectCommand(sel1);
          if(rs.next())
          {
        %>
        <form method="post">
        <div class="bg-img">
                <div style="background-color: #26404387;">
        
           
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                <tr>
                    <td colspan="2" align="center"><img src="../Assets/Files/Userphoto/<%=rs.getString("user_photo")%>" height="120" width="120"></td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td><%=rs.getString("user_name")%></td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td><%=rs.getString("user_contact")%></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><%=rs.getString("user_email")%></td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td><%=rs.getString("user_address")%></td>
                </tr>
                
                <%
                }
                %> 
        	       
            </table>
        </form>
                </body><br><br><br><br><br><br>
</html></div>
                </div>
          </div>
<%@include file="Foot.jsp" %>