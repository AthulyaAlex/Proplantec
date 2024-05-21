<%-- 
    Document   : ViewComplaint
    Created on : 20 May, 2024, 2:00:59 PM
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
        <h1 align="center">User Complaint </h1>
        <table border="1" align="center">
            <tr>
                <td>Sl.No</td>
                <td>User Name</td> 
                <td>Date</td>
                <td>Complaint content</td>
                <td>Action</td>
                <td>Status</td>
            </tr>
            <% int i = 0;
                String seleQry = "select * from tbl_complaint f inner join tbl_user u on f.user_id=u.user_id";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            %>
            <tr>
                <td align="center"><%=i%></td>
                <td><%=res.getString("user_name")%></td>
                <td><%=res.getString("complaint_date")%></td>
                <td><%=res.getString("complaint_content")%></td>
                <td><a href="ComplaintReply.jsp?cid=<%=res.getString("complaint_id")%>">Reply</a><br></td>
                <td>
                    <%
                    if(res.getString("complaint_status").equals("0"))
                    {
                        out.print("Reply Pending");
                    }
                    if(res.getString("complaint_status").equals("1"))
                    {
                        out.print("Replied");
                    }
                    
                    %>
                </td>
            </tr>
            <%
                }
            %>
        </table>
                <h1 align="center">Agency Complaint </h1>
        <table border="1" align="center">
            <tr>
                <td>Sl.No</td>
                <td>Agent Name</td> 
                <td>Date</td>
                <td>Complaint content</td>
                <td>Action</td>
                <td>Status</td>
            </tr>
            <% int j = 0;
                String selQry = "select * from tbl_complaint f inner join tbl_agent u on f.agent_id=u.agent_id";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    j++;
            %>
            <tr>
                <td align="center"><%=j%></td>
                <td><%=rs.getString("agent_name")%></td>
                <td><%=rs.getString("complaint_date")%></td>
                <td><%=rs.getString("complaint_content")%></td>
                <td><a href="ComplaintReply.jsp?cid=<%=rs.getString("complaint_id")%>">Reply</a><br></td>
                <td>
                    <%
                    if(rs.getString("complaint_status").equals("0"))
                    {
                        out.print("Reply Pending");
                    }
                    if(rs.getString("complaint_status").equals("1"))
                    {
                        out.print("Replied");
                    }
                    
                    %>
                </td>
            </tr>
            <%
                }
            %>
        </table>
    </body>
</html>