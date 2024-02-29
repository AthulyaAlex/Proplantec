<%-- 
    Document   : Ajaxplaces.jsp
    Created on : 7 Dec, 2023, 12:01:37 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<option value="">--select localplace--</option>
<%
    String selQ = "select * from tbl_localplace where location_id='" + request.getParameter("pid") + "'";
    ResultSet rs = con.selectCommand(selQ);
    while (rs.next()) {
%>
<option value="<%=rs.getString("localplace_id")%>"><%=rs.getString("localplace_name")%></option>
<%
    }
%>      

