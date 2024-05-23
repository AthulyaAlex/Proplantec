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
        <style>
/*            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/agency.jpg");
                background-repeat: no-repeat;
                background-size: cover;
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
                color:gray;
            }
        </style>
    </head>
    <body>
        <%
            if(request.getParameter("txtupdate")!=null)
            {
                    String uq = "update tbl_agent set agent_name = '"+request.getParameter("txtname")+"',agent_contact = '"+request.getParameter("txtcontact")+"',agent_email = '"+request.getParameter("txtemail")+"',agent_address = '"+request.getParameter("txtaddress")+"'where agent_id = '"+session.getAttribute("gid")+"'";
                    if(con.executeCommand(uq)){
                         %>
                    <script>
                        alert("Updated");
                        window.location="EditProfile.jsp";
                    </script>
                <%
                    }
                   
            } 
            String editname="";
            String editcontact="";
            String editemail="";
            String editaddress="";
            String sq2 = "select*from tbl_agent where agent_id ='"+session.getAttribute("gid")+"'";
            ResultSet rs3 = con.selectCommand(sq2);
            rs3.next();
            editname = rs3.getString("agent_name");
            editcontact = rs3.getString("agent_contact");
            editemail = rs3.getString("agent_email");
            editaddress = rs3.getString("agent_address");
                        
        %>
         <div class="bg-img">
                <div style="background-color: #26404387;">
        <form method="post">
           <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                <tr>
                    <td>Name</td>
                    <td>
                        <input type="text" class="text-box" value="<%=editname%>" name="txtname" placeholder="Enter name" title="Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter" pattern="^[A-Z]+[a-zA-Z ]*$" required>
                    </td>
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <input type="text" class="text-box" value="<%=editcontact%>" name="txtcontact" placeholder="Enter Contact No" title="Phone number with 7-9 and remaing 9 digit with 0-9" pattern="[7-9]{1}[0-9]{9}" required>
                    </td>
                </tr>    
                <tr>
                    <td>Email</td>
                    <td>
                        <input type="email" class="text-box" value="<%=editemail%>" name="txtemail" placeholder="Enter Email-Id" required>
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
                 </table><br>
        </form>   
    </body>
</html>
<%@include file="Foot.jsp" %>