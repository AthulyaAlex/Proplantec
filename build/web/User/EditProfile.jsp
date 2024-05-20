<%-- 
    Document   : EditProfile
    Created on : 5 Jan, 2024, 4:12:59 PM
    Author     : HP
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import = "java.sql.ResultSet"%>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Profile</title>
        <title>Login</title>
            <style>
            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-image: center;
            }
            .text-box {
                background-color: transparent;
                width: 215px;
                color:gray;
            }
            </style>
    </head>
    <body>
        <%
            if(request.getParameter("txtupdate")!=null)
            {
                    String uq = "update tbl_user set user_name = '"+request.getParameter("txtname")+"',user_contact = '"+request.getParameter("txtcontact")+"',user_email = '"+request.getParameter("txtemail")+"',user_address = '"+request.getParameter("txtaddress")+"'where user_id = '"+session.getAttribute("uid")+"'";
                    con.executeCommand(uq);
                    response.sendRedirect("EditProfile.jsp");    
            } 
            String editname="";
            String editcontact="";
            String editemail="";
            String editaddress="";
            String sq2 = "select*from tbl_user where user_id ='"+session.getAttribute("uid")+"'";
            ResultSet rs = con.selectCommand(sq2);
            rs.next();
            editname = rs.getString("user_name");
            editcontact = rs.getString("user_contact");
            editemail = rs.getString("user_email");
            editaddress = rs.getString("user_address");
                        
        %>
        <div class="bg-img">
                <div style="background-color: #000000b8 !important;">
        <form method="post">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                <tr>
                    <td>Name</td>
                    <td>
                        <input type="text" value="<%=editname%>" name="txtname" class="text-box" placeholder="Enter name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$" required>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input type="text" value="<%=editcontact%>" name="txtcontact" class="text-box" placeholder="Enter Contact No" title="Phone number with 7-9 and remaing 9 digit with 0-9" pattern="[7-9]{1}[0-9]{9}" required>
                    </td>
                </tr>    
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" value="<%=editemail%>" name="txtemail" class="text-box" placeholder="Enter Email-Id" required>
                    </td>
                </tr>   
                <tr>
                    <td>Address</td>
                    <td>
                        <textarea name="txtaddress" class="text-box" placeholder="Enter Address" required><%=editaddress%></textarea>
                    </td>
                </tr>
                <tr>
                    <td align="center" colspan="2">
                        <input type="submit" name="txtupdate" value="Update">
                        <input type="reset" name="txtreset" value="Cancel">
                    </td>
                </tr>   
            </table>
        </form>   
    </body>
</html>
<%@include file="Foot.jsp" %>