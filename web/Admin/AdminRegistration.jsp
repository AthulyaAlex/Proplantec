<%-- 
    Document   : AdminRegistration
    Created on : 14 Jan, 2024, 10:23:11 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@include file="Head.jsp"%>
 <br><br><br><br><br>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Registration</title>
        <style>
            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-position:top;
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
                <br><br><br><br><br><br>
                <div style="color:white;font-size: 15px;">
                <table align="center" cellpadding="10"></table>
             
            
        <%
            if(request.getParameter("txtsave")!=null)
            {
                if(request.getParameter("txtpsswd").equals(request.getParameter("txtcpsswd")))
                    {
                    String insqry="insert into tbl_admin(admin_name,admin_email,admin_password)values('"+request.getParameter("txtname")+"','"+request.getParameter("txtemail")+"','"+request.getParameter("txtpsswd")+"')";
                    con.executeCommand(insqry);
                    }
            }
            
        %>
       <form method="post">
            <table border="0" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" name="txtname" class="text-box" placeholder="Enter Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$">
                    </td>
                </tr> 
                <tr>
                    <td>Email</td>
                    <td>
                        <input required type="email" name="txtemail" class="text-box"placeholder="Enter Email-Id">
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input required type="password" name="txtpsswd" class="text-box" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" >
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input required type="password" name="txtcpsswd" class="text-box" placeholder="ReEnter Password">
                    </td>
                </tr>         
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="txtsave" value="Save">
                        <input type="reset" name="txtcancel" value="Cancel">
                        <br><br><br><br><br><br><br><br><br><br><br>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
<br><br><br><br>
<%@include file="Foot.jsp"%>
