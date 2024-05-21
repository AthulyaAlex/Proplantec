<%-- 
    Document   : AgencyComplaintStatus
    Created on : 21 May, 2024, 12:14:05 AM
    Author     : HP
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1 align="center">Agent Complaint Status </h1>
        <table border="1" align="center">
            <tr>
                <td>Sl.No</td>
                <td>Date</td>
                <td>Complaint content</td>
                <td>Reply</td>
            </tr>
            <% int i = 0;
                String seleQry = "select * from tbl_complaint where agent_id='"+session.getAttribute("gid") +"'";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            %>
            <tr>
                <td align="center"><%=i%></td>
                <td><%=res.getString("complaint_date")%></td>
                <td><%=res.getString("complaint_content")%></td>
                <td>
              <%
                    if(res.getString("complaint_status").equals("0"))
                    {
                        out.print("Reply Pending");
                    }
                    if(res.getString("complaint_status").equals("1"))
                    {
                       out.print(res.getString("complaint_reply"));

                    }
                    
                    %>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>   
