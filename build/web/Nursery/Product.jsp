<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product</title>
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
                <div style="background-color: #26404387;min-height: 700px">
         <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/ProductUploadAction.jsp">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
        
           
                <tr>
                    <td>Product Name</td>
                    <td>
                        <input type="text" class="text-box" name="txtname" placeholder="Enter Product Name">
                                            </td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td align="center">
                        <input type="file" class="text-box" name="txtimg">
                    </td>
                </tr>
                <tr>
                    <td>Rate</td>
                    <td>
                        <input type="text" class="text-box" name="txtname" placeholder="Enter Rate">
                    </td>
                </tr>
                <tr>
                    <td>Details</td>
                    <td>
                        <input type="text" class="text-box" name="txtdet" placeholder="Enter Details">
                    </td>
                </tr>
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
                            <option value="<%=rs2.getString("category_id")%>"><%=rs2.getString("category_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Subcategory</td>
                    <td>
                        <select name="ddlsub" class="text-box" id="ddlsub" >
                            <option>--select subcategory--</option>
                            <%
                                String selqry = "select * from tbl_subcategory";
                                ResultSet rs = con.selectCommand(selqry);
                                while (rs.next()) {
                            %>
                            <option value="<%=rs.getString("subcategory_id")%>"><%=rs.getString("subcategory_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
              
                
                <tr>
                    <td>Stock</td>
                    <td>
                        <input type="text" class="text-box" name="txtname" placeholder="Enter Stock">
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

                           
    </script>
  
</html>
<%@include file="Foot.jsp" %>
         
