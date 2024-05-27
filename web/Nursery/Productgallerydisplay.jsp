<%-- 
    Document   : productgallerydisplay
    Created on : 1 Feb, 2024, 11:27:42 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productgallerydisplay</title>
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
              String delqry="delete from tbl_productgallery where productgallery_id='"+request.getParameter("did")+"'";
              con.executeCommand(delqry);
              response.sendRedirect("Productgallerydisplay.jsp?gid="+request.getParameter("gid"));
          }
        %>
         <div class="bg-img">
                <div style="background-color: #26404387;">
                    <form method="post">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">       
        <div align="center">
            <h2 style="color: white">Image Gallery</h2><br>
         
        
                <tr>
                    <th>Sl.no</th>
                    <th>Photo</th>
                    <th>Action</th>
                    
                </tr>
        <%
                 String selqry = "select*from tbl_productgallery where product_id='"+request.getParameter("gid")+"'";  
                 ResultSet rs = con.selectCommand(selqry);
                 int i=0;
                 while(rs.next())
                 {
                     i++;
                     %>
                     <tr>
                         <td><%=i%></td>
                         <td><img src="../Assets/Files/Productgalleryphoto/<%=rs.getString("productgallery_image")%>" height="90" width="90"</td>
                         <td><a href="Productgallerydisplay.jsp?did=<%=rs.getString("productgallery_id")%>&gid=<%=request.getParameter("gid")%>">Delete</a></td>
                     </tr>
                     <%
                 }
                     %>      
                 </table><br>
        </form>
             </div> 
    </body>
</html>
<%@include file="Foot.jsp" %>
