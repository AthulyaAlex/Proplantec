<%-- 
    Document   : login
    Created on : 5 Jan, 2024, 4:04:26 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    
    <body>
        <%
            if (request.getParameter("btnlogin") != null) {
                String email=request.getParameter("txtemail");
                String password=request.getParameter("txtpsswd");
                
                String seluser="select * from tbl_user where user_email='"+email+"' and user_password='"+password+"' ";
                ResultSet rs = con.selectCommand(seluser);
                String selnursery="select * from tbl_nursery where nursery_email='"+email+"' and nursery_password='"+password+"' ";
                ResultSet rs1 = con.selectCommand(selnursery);
                String seladmin="select * from tbl_admin where admin_email='"+email+"' and admin_password='"+password+"' ";
                ResultSet rs2 = con.selectCommand(seladmin);
                String selagent="select * from tbl_agent where agent_email='"+email+"' and agent_password='"+password+"' ";
                ResultSet rs3 = con.selectCommand(selagent);
                if(rs.next())
                {
                    session.setAttribute("uid",rs.getString("user_id"));
                    session.setAttribute("uname",rs.getString("user_name"));
                    response.sendRedirect("../User/HomePage.jsp");
                    
                }
                else if(rs1.next())
                {
                    session.setAttribute("nid",rs1.getString("nursery_id"));
                    session.setAttribute("nname",rs1.getString("nursery_name"));
                    response.sendRedirect("../Nursery/HomePage.jsp");
                    
                }  
                else if(rs2.next())
                {
                    session.setAttribute("aid",rs2.getString("admin_id"));
                    session.setAttribute("aname",rs2.getString("admin_name"));
                    response.sendRedirect("../Admin/HomePage.jsp");
                    
                } 
                else if(rs3.next())
                {
                   session.setAttribute("gid",rs3.getString("agent_id"));
                   session.setAttribute("gname",rs3.getString("agent_name"));
                   response.sendRedirect("../DeliveryAgency/HomePage.jsp"); 
                }
                else
                {
                   %>
                   <script>
                       alert("Invalid Credentilas")
                       window.Location="Login.jsp"
                   </script>
                   <%
                }
            }
        %>
        <form method="POST">
            <table border="2" align="center">
                <tr>
                    <td>Email</td>
                    <td>
                        <input  required type="email" name="txtemail" placeholder="Enter Email-Id">
                    </td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td>
                        <input  required type="password" name="txtpsswd" placeholder="Enter Password" pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}" title="Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters" >
                    </td>
                </tr>
                <tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btnlogin" value="Login">
                    </td>
                </tr>
            </table>
        </form>  
    </body>
   
</html>
