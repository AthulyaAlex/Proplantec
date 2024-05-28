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
        <title>MyProfile</title>
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
            </style>  
    </head>
    <body>
        <%
          String sel1 = "select*from tbl_nursery where nursery_id='"+session.getAttribute("nid")+"'";  
          ResultSet rs1 = con.selectCommand(sel1);
          if(rs1.next())
          {
        %>
    <div class="bg-img">
                <div style="background-color:#26404387;min-height: 700px">
         
            <br><br><br><br><br><br><br>
        <form method="post" >
             <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
            
                <tr>
                    <td colspan="2" align="center"><img src="../Assets/Files/Nurseryphoto/<%=rs1.getString("nursery_logo")%>" height="120" width="120"></td>
                </tr>
                <tr>
                    <td>Proof</td>
                    <td><a href="../Assets/Files/Nurseryproof/<%=rs1.getString("nursery_proof")%>"download>Download</a></td>
                </tr>
                <tr>
                    <td>Name</td>
                   <td>
                       <%=rs1.getString("nursery_name")%>
                   </td>  
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <%=rs1.getString("nursery_contact")%>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                       <%=rs1.getString("nursery_address")%> 
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <%=rs1.getString("nursery_email")%>
                    </td>
                </tr>
            <%
            }
            %> 
                 </table><br>
        </form>  
    </body>
</html>
            </div>
                </div>
    </div>
            
<%@include file="Foot.jsp" %>
