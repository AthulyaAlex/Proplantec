<%-- 
    Document   : productgallerydisplay
    Created on : 1 Feb, 2024, 11:27:42 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page  import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productgallerydisplay</title>
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
                
        <div align="center">
        <h2>Image Gallery</h2>
         
        <form method="post">
        <table border="3" align="center">
               
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
             </table>
        </form>
             </div> 
    </body>
</html>
