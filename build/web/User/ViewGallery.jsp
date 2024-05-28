<%-- 
    Document   : ViewGallery
    Created on : 1 Mar, 2024, 4:48:37 PM
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
        <title>Product Gallery</title>
       
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
        
         <div class="bg-img">
                <div style="background-color: #26404387;min-height: 700px">
        <form method="post">
        <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
               <div align="center">
                   <h2 style="color: white";>Product Gallery</h2>
                <tr>
                    <th>Sl.no</th>
                    <th>Photo</th>
                    
                </tr>
       <%
                 String selqry = "select*from tbl_productgallery where product_id='"+request.getParameter("sid")+"'";  
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><img src="../Assets/Files/Productgalleryphoto/<%=rs.getString("productgallery_image")%>" height="90" width="90"</td>
                         
                     </tr>
                     <%
                 }
                     %>      
             </table>
        </form>
             </div> 
    </body>
</html>
</div>
                </div>
          
<%@include file="Foot.jsp" %>