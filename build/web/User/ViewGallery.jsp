<%-- 
    Document   : ViewGallery
    Created on : 1 Mar, 2024, 4:48:37 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
        <html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Gallery</title>
    </head>
    <body>
        <div align="center">
        <h2>Product Gallery</h2>
         
        <form method="post">
        <table border="3" align="center">
               
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

    </body>
</html>

    </body>
</html>