<%-- 
    Document   : AdminRegistration
    Created on : 14 Jan, 2024, 10:23:11 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Registration</title>
        <style>
/*            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-position:center;
            }*/
            
            .text-box {
                background-color: transparent;
                width: 215px;
                color:gray;
            } body {
                margin: 0;
                padding: 0;
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') no-repeat center center/cover;
                min-height: 800px
            }
            
        </style>
    </head>
    <body>
        <div class="bg-img">
            <div style="background-color: #26404387;">
              <%@include file="Head.jsp"%>
                
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
           <table border="0" align="center"><br><br><br><br><br><br>
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
                        <input type="submit" name="txtsave" value="Save" class='button' div style='font-size:15px;'>
                        <input type="reset" name="txtcancel" value="Cancel" class='button' div style='font-size:15px;'>
                        <br><br><br><br><br><br>
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>

<%@include file="Foot.jsp"%>
