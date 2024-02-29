<%-- 
    Document   : Productdispaly
    Created on : 1 Feb, 2024, 10:53:05 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product Display</title>
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
        <div align="center">
        <h2>Uploaded Products</h2>
         
        <form method="post">
        <table border="3" align="center">
               
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
             </table>
        </form>
             </div>        
         
    </body>
</html>