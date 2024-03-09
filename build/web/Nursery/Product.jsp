<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Product</title>
    </head>
    <body>
        <form method="post" enctype="multipart/form-data" action="../Assets/Actionpages/ProductUploadAction.jsp">
            <table border="3" align="center">
                <tr>
                    <td>Product Name</td>
                    <td>
                        <input type="text" name="txtname" placeholder="Enter Product Name">
                                            </td>
                </tr>
                <tr>
                    <td>Image</td>
                    <td align="center">
                        <input type="file" name="txtimg">
                    </td>
                </tr>
                <tr>
                    <td>Rate</td>
                    <td>
                        <input type="text" name="txtname" placeholder="Enter Rate">
                    </td>
                </tr>
                <tr>
                    <td>Details</td>
                    <td>
                        <input type="text" name="txtdet" placeholder="Enter Details">
                    </td>
                </tr>
                <tr>                                                            
                    <td>Category</td>
                    <td>
                        <select name="ddlcat" onchange="getsubcategory(this.value)">
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
                        <select name="ddlsub" id="ddlsub" >
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
                        <input type="text" name="txtname" placeholder="Enter Stock">
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
         
