<%-- 
    Document   : Productdispaly
    Created on : 1 Feb, 2024, 10:53:05 AM
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
        <title>Product Display</title>
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
              .text-box {
                background-color: transparent;
                width: 215px;
                color:white;
            }
        </style>    
    </head>
    <body>
        <%
        if(request.getParameter("did")!=null)
          {
              String delqry="delete from tbl_product where product_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("Productdisplay.jsp");
          }
        %>
        
         <div class="bg-img">
                <div style="background-color: #26404387;">
        <form method="post">
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                     <div align="center">
                         <br><br><br><br>        <h2 style="color: white";>Uploaded Products</h2><br>
               
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Image</th>
                    <th>Rate</th>
                    <th>Details</th>
                    <th>Stock</th>
                    <th>Action</th>
                    <th>Add More Images</th>
                    <th>Image Gallery<th>
                </tr>
        <%
                 String selqry = "select*from tbl_product where nursery_id='"+session.getAttribute("nid")+"'";  
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><%=rs.getString("product_name")%></td>
                         <td><img src="../Assets/Files/Productphoto/<%=rs.getString("product_image")%>" height="70" width="70"</td></td>
                         <td><%=rs.getString("product_rate")%></td>
                         <td><%=rs.getString("product_details")%></td>
                         <td><%=rs.getString("product_stock")%></td>
                         <td><a href="Productdisplay.jsp?did=<%=rs.getString("product_id")%>">Delete</a></td>
                         <td><a href="Productgallery.jsp?pid=<%=rs.getString("product_id")%>">AddMoreImages</a></td>
                         <td><a href="Productgallerydisplay.jsp?gid=<%=rs.getString("product_id")%>">ViewGallery</a></td>
                     </tr>
                     <%
                 }
                     %>      
                 </table><br><br>
        </form>
             </div>        
         
    </body>
</html>
<%@include file="Foot.jsp" %>