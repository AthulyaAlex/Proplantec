<%-- 
    Document   : Ajaxplanttype
    Created on : 24 Jan, 2024, 11:08:57 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<option value="">--select category--</option>
<%
    String selQ = "select * from tbl_subcategory where category_id='" + request.getParameter("subid") + "'";
    out.println(selQ);
    ResultSet rs = con.selectCommand(selQ);
    while (rs.next()) {
%>
<option value="<%=rs.getString("subcategory_id")%>" style="color: black"><%=rs.getString("subcategory_name")%></option>
<%
    }
%>      
