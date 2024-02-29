<%-- 
    Document   : tbl_productgallery
    Created on : 28 Oct, 2023, 9:41:11 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productgallery</title>
    </head>
    <body>
        <form method="post"  enctype="multipart/form-data" action="../Assets/Actionpages/ProductgalleryUploadAction.jsp">
            <table border="3" align="center">
                <tr>
                    <td>Image</td>
                    <td align="center">
                        <input required type="file" name="txtimg">
                    </td>
                    <td>
                        <input required type="text" name="productid" value="<%=request.getParameter("pid")%>"hidden>
                    </td>
                   
                    
                </tr>
                <tr>
                    <td>Product</td>
                    <td>
                        <select name="ddlpro" onchange="getPlace(this.value)">
                            <option>--select Product--</option>
                            <%
                                String selqry = "select * from tbl_product";
                                ResultSet rs = con.selectCommand(selqry);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("product_id")%>"><%=rs.getString("product_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="txtsave" value="Save">
                        <input type="reset" name="txtcancel" value="Cancel">
                    </td>
                </tr>
            </table>
        </form>    
    </body>
</html>
