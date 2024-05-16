<%-- 
    Document   : AjaxMyCart
    Created on : 16 May, 2024, 10:39:53 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
                    String id=request.getParameter("cid");
                    String quantity=request.getParameter("qty");
                    String upQry="update tbl_cart set cart_quantity='"+quantity+"' where cart_id='"+id+"'";
                    if(con.executeCommand(upQry)){
                        out.println("Cart Updated");
                    }
                    else
                    {
                        out.println("Failed");
                    }
                    
%>
