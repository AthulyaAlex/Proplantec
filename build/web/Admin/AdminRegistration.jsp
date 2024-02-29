<%-- 
    Document   : AdminRegistration
    Created on : 14 Jan, 2024, 10:23:11 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Registration</title>
    </head>
    <body>
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
            <table border="3" align="center">
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" name="txtname" placeholder="Enter Name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$">
                    </td>
                </tr> 
                <tr>
                    <td>Email</td>
                    <td>
                        <input required type="email" name="txtemail" placeholder="Enter Email-Id">
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input required type="password" name="txtpsswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" >
                    </td>
                </tr>
                <tr>
                    <td>Confirm Password</td>
                    <td>
                        <input required type="password" name="txtcpsswd" placeholder="ReEnter Password">
                    </td>
                </tr>         
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="txtsave" value="Save">
                        <input type="reset" name="txtcancel" value="Cancel">
                    </td>
                </tr>
            </table>
        </form>
    </body>
</html>
