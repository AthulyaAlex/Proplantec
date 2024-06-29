<%-- 
    Document   : GuestSearch
    Created on : 21 May, 2024, 10:43:44 AM
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
        <title>Search</title>
        <style>
/*            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }*/
            body {
                margin: 0;
                padding: 0;
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') fixed center center/cover;
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
        <div class="bg-img">
                <div style="background-color: #26404387;">
                       <form method="POST">
                    <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                <tr>                                                            
                    <td>Category</td>
                    <td>
                        <select name="ddlcat" class="text-box" onchange="getsubcategory(this.value)">
                            <option>--select Category--</option>
                            <%
                                String seelqry = "select * from tbl_category";
                                ResultSet rs2 = con.selectCommand(seelqry);
                                while (rs2.next()) {
                            %>
                            <option value="<%=rs2.getString("category_id")%>"style="color:black"><%=rs2.getString("category_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Subcategory</td>
                    <td>
                        <select name="ddlsub" class="text-box"  id="ddlsub" >
                            <option>--select subcategory--</option>
                            <%
                                String selqry = "select * from tbl_subcategory";
                                ResultSet rs = con.selectCommand(selqry);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("subcategory_id")%>"style="color:black"><%=rs.getString("subcategory_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="txtsave" value="Search">
                    </td>
            </table><br>
            <style>
    th {
        padding: 10px; /* Adjust the padding value to increase or decrease the space */
    }
</style>
            <table border="0" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Product Image</th>
                    <th>Product Name</th>
                    <th>Product Rate</th>
                    <th>Product Details</th>
                    <th>Product Stock</th>
                    <th>Product Gallery</th>
                    <th>Action</th>
                </tr>
                <%
                    if (request.getParameter("txtsave") != null) {
                        String selectqry = "select * from tbl_product where category_id='" + request.getParameter("ddlcat") + "' and subcategory_id='" + request.getParameter("ddlsub") + "'";
                        ResultSet r = con.selectCommand(selectqry);

                        int i = 0;
                        while (r.next()) {
                            i++;
                %>
                <tr>
                         <td><%=i%></td>
                         <td><img src="../Assets/Files/Productphoto/<%=r.getString("product_image")%>" height="70" width="70"</td></td>
                         <td><%=r.getString("product_name")%></td>
                         <td><%=r.getString("product_rate")%></td>
                         <td><%=r.getString("product_details")%></td>
                         <td><%=r.getString("product_stock")%></td>
                         <td><a href="ViewGallery.jsp?sid=<%=r.getString("product_id")%> "style="color: white"> View Gallery</a>
                         <td><button type="button" name="btn" onclick="booking(<%=r.getString("product_id")%>)">Add to cart</button></td>
                         <%
                         if(request.getParameter("btn")!=null){
                            %>
                        <script>
                        alert("Please Login");
                        window.location="Guest/GuestSearch.jsp";
                    </script>
                            <%
                        }
                        }  
                    }  
                       %>            
            </table>     
        </form>   
    </body>
    <script src="../Assets/jQuery/jQuery.js"></script>         
    <script>
                            function getsubcategory(subid)
                            {

                                //  alert(did);  
                                $.ajax({url: "../Assets/AjaxPages/Ajaxcategory.jsp?subid=" + subid,
                                    success: function(result) {
                                        $("#ddlsub").html(result);
                                    }
                                })
                            }
                            function booking(id)
                            {  
                                alert("Please Login")
                                window.location="Login.jsp"
                            }
//                            function booking(id)
//                           {  
//                                $.ajax({url: "../Assets/AjaxPages/AjaxAddCart.jsp?id=" + id,
//                                    success: function(result) {
//                                        alert(result)
//                                        $("#").html(result);
//                                    }
//                                }) 
//                            }
//                            

    </script>
</html>
<br><br><br><br><br><br>
<%@include file="Foot.jsp" %>
