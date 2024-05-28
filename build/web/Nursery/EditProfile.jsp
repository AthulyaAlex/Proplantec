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
            .text-box {
                background-color: transparent;
                width: 215px;
                color:white;
            }
        </style>
    </head>
    <body>
        <%
            if(request.getParameter("txtupdate")!=null)
            {
                    String uq = "update tbl_nursery set nursery_name = '"+request.getParameter("txtname")+"',nursery_contact = '"+request.getParameter("txtcontact")+"',nursery_email = '"+request.getParameter("txtemail")+"',nursery_address = '"+request.getParameter("txtaddress")+"'where nursery_id = '"+session.getAttribute("nid")+"'";
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
            String sq2 = "select*from tbl_nursery where nursery_id ='"+session.getAttribute("nid")+"'";
            ResultSet rs1 = con.selectCommand(sq2);
            rs1.next();
            editname = rs1.getString("nursery_name");
            editcontact = rs1.getString("nursery_contact");
            editemail = rs1.getString("nursery_email");
            editaddress = rs1.getString("nursery_address");
                        
        %>
       <div class="bg-img">
                <div style="background-color: #26404387;min-height: 700px">
        <form method="post">
           <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">s
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
