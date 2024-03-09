<%-- 
    Document   : Ajaxsubcategory
    Created on : 24 Jan, 2024, 11:08:41 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String sellqry = " select * from tbl_planttype where planttype_id='" + request.getParameter("plid") + "'";
                                ResultSet rs1 = con.selectCommand(sellqry);
                                while (rs1.next()) {
                            %>
                            <option value="<%=rs1.getString("planttype_id")%>"><%=rs1.getString("planttype_name")%></option>
                            <%
                                }
                            %>