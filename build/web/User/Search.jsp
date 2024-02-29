<%-- 1
    Document   : Search
    Created on : 15 Feb, 2024, 12:19:36 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search</title>
    </head>
    <body>
        <form method="post" >
            <table border="3" align="center">
                <tr>                                                            
                    <td>Category</td>
                    <td>
                        <select name="ddlcat" onchange="getPlace(this.value)">
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
                        <select name="ddlsub" id="ddlsub">
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
                    <td>PlantType</td>
                    <td>
                        <select name="ddlpla">
                            <option>--select PlantType--</option><%
                                String sellqry = " select * from tbl_planttype";
                                ResultSet rs1 = con.selectCommand(sellqry);
                                while (rs1.next()) {
                            %>
                            <option value="<%=rs1.getString("planttype_id")%>"><%=rs1.getString("planttype_name")%></option>
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
            <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Category</th>
                    <th>Subcategory</th>
                    <th>Planttype</th>
                    <th>Action</th>
                </tr>
                <%
                    if (request.getParameter("txtsave") != null) {
                        String selectqry = "select * from tbl_product where subcategory_id='" + request.getParameter("ddlsub") + "' and planttype_id='" + request.getParameter("ddlpla") + "'";
                        ResultSet r = con.selectCommand(selectqry);

                        int i = 0;
                        while (r.next()) {
                            i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=r.getString("category_name")%></td> 
                    <td><%=r.getString("subcategory_name")%></td> 
                    <td><%=r.getString("planttype_name")%></td> 

                </tr>
                <%
                        }
                    }
                %>
            </table>     
        </form>   
    </body>
    <script src="../Assets/jQuery/jQuery.js"></script>         
    <script>
                            function getPlace(subid)
                            {

                                //  alert(did);  
                                $.ajax({url: "../Assets/AjaxPages/Ajaxsubcategory.jsp?subid=" + subid,
                                    success: function(result) {
                                        $("#ddlsub").html(result);
                                    }
                                })
                            }

    </script>
</html>