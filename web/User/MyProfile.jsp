<%-- 
    Document   : MyProfile
    Created on : 5 Jan, 2024, 4:12:37 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Profile</title>
    </head>
    <body>
        <%
          String sel1 = "select*from tbl_user where user_id='"+session.getAttribute("uid")+"'";  
          ResultSet rs = con.selectCommand(sel1);
          if(rs.next())
          {
        %>
        <form method="post">
            <table border="1" align="center">
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
                <a href='EditProfile.jsp' class="filled-button" style="color: white">Edit Profile</a>
                <a href='ChangePassword.jsp' class="filled-button" style="color: white">Change Password</a>
                <%
                }
                %> 
        	       
            </table>
        </form>
    </body>
</html>
