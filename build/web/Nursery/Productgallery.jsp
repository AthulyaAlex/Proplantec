<%-- 
    Document   : tbl_productgallery
    Created on : 28 Oct, 2023, 9:41:11 PM
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
        <title>Productgallery</title>
        <style>
            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-image: center;
            }
            .text-box {
                background-color: transparent;
                width: 215px;
                color:gray;
            }
            </style>
    </head>
    <body>
        <div class="bg-img">
                <div style="background-color: #000000b8 !important;">
                    <form method="post"  enctype="multipart/form-data" action="../Assets/Actionpages/ProductgalleryUploadAction.jsp">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
        
           
                <tr>
                    <td>Image</td>
                    <td align="center">
                        <input required type="file" class="text-box" name="txtimg">
                    </td>
                    <td>
                        <input required type="text" name="productid" value="<%=request.getParameter("pid")%>"hidden>
                    </td>
                   
                    
                </tr>
                <tr>
                    <td>Product</td>
                    <td>
                        <select name="ddlpro" class="text-box" onchange="getPlace(this.value)">
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
                 </table><br>
        </form>    
    </body>
</html>
<%@include file="Foot.jsp" %>