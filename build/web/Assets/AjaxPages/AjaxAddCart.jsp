<%-- 
    Document   : AjaxAddCart
    Created on : 1 Mar, 2024, 4:29:41 PM
    Author     : HP
--%>

<%@page import="java.sql.ResultSet" %>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%
    String id = request.getParameter("id");
    String selQry = "select count(*) as count from tbl_booking where user_id='" + session.getAttribute("uid") + "' and booking_status='0'";
    ResultSet rsC = con.selectCommand(selQry);
    rsC.next();
    if (Integer.parseInt(rsC.getString("count")) > 0) {
        String sel = "select booking_id as id from tbl_booking where user_id='" + session.getAttribute("uid") + "' and booking_status='0'";
        ResultSet rs = con.selectCommand(sel);
        if (rs.next()) {
            String sqlQry = "select count(*) as count from tbl_cart where booking_id='" + rs.getString("id") + "' and product_id='" + id + "'";
            System.out.println(sqlQry);
            ResultSet rsc = con.selectCommand(sqlQry);
            rsc.next();
            if (Integer.parseInt(rsc.getString("count")) > 0) {
                out.println("Already Added to Cart");
            } else {
                String insQry = "insert into tbl_cart(booking_id,product_id)values('" + rs.getString("id") + "','" + id + "')";
                if (con.executeCommand(insQry)) {
                    out.println("Added to Cart");
                } else {
                    out.println("Failed to Add Cart");
                }
            }
        }
    } else {
        String ins = "insert into tbl_booking(user_id)values('" + session.getAttribute("uid") + "')";
        if (con.executeCommand(ins)) {
            String sel = "select Max(booking_id) as id from tbl_booking";
            ResultSet rs = con.selectCommand(sel);
            if (rs.next()) {
                String insQry = "insert into tbl_cart(booking_id,product_id)values('" + rs.getString("id") + "','" + id + "')";
                if (con.executeCommand(insQry)) {
                    out.println("Added to Cart");
                } else {
                    out.println("Failed to Add Cart");
                }
            }
        }
    }


%>