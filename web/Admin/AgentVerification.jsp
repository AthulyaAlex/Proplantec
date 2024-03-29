<%-- 
    Document   : AgentVerification
    Created on : 11 Jan, 2024, 10:51:13 AM
    Author     : HP
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agent Verification</title>
    </head>
    <body>
        <%
            if (request.getParameter("aid") != null) {
                String up = "update tbl_agent set agent_status='1' where agent_id='" + request.getParameter("aid") + "'";
                 if (con.executeCommand(up)) {
                    response.sendRedirect("AgentVerification.jsp");
                }
            }

            if (request.getParameter("rid") != null) {
                String up = "update tbl_agent set agent_status='2' where agent_id='" + request.getParameter("rid") + "'";
                if (con.executeCommand(up)) {
                    response.sendRedirect("AgentVerification.jsp");
                }
            }

        %>
        <div align="center">
            <h2>New Agent</h2>
            <table border="2" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Proof</th>
                    <th>Photo</th>
                    <th>Location</th>
                    <th>Action</th>
                </tr>  
                <%                    
                    String selqry = "select * from tbl_agent g inner join tbl_location l on l.location_id=g.location_id where g.agent_status='0'";
                    ResultSet rs = con.selectCommand(selqry);
                    int i = 0;
                    while (rs.next()) {
                        i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("agent_name")%></td>
                    <td><%=rs.getString("agent_contact")%></td>   
                    <td><%=rs.getString("agent_proof")%></td>
                    <td><%=rs.getString("agent_photo")%></td>
                    <td><%=rs.getString("location_name")%></td>
                    <td><a href="AgentVerification.jsp?aid=<%=rs.getString("agent_id")%>">Accept</a>|
                        <a href="AgentVerification.jsp?rid=<%=rs.getString("agent_id")%>">Reject</a></td>              
                </tr>
                <%
                    }
                %>

            </table>

            <h2>Accepted Agent</h2>
            <table border="2" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Proof</th>
                    <th>Photo</th>
                    <th>Location</th>
                    <th>Action</th>
                </tr>  
                <%          String selqry1 = "select * from tbl_agent g inner join tbl_location l on l.location_id=g.location_id where g.agent_status='1'";
                    ResultSet rs1 = con.selectCommand(selqry1);
                    int i1 = 0;
                    while (rs1.next()) {
                        i1++;
                %>
                <tr>
                    <td><%=i1%></td>
                    <td><%=rs1.getString("agent_name")%></td>
                    <td><%=rs1.getString("agent_contact")%></td>   
                    <td><%=rs1.getString("agent_proof")%></td>
                    <td><%=rs1.getString("agent_photo")%></td>
                    <td><%=rs1.getString("location_name")%></td>
                    <td><a href="AgentVerification.jsp?rid=<%=rs1.getString("agent_id")%>">Reject</a></td>
                </tr>
                <%
                    }
                %>

            </table>

            <h2>Rejected Agent</h2>
            <table border="2" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Proof</th>
                    <th>Photo</th>
                    <th>Location</th>
                    <th>Action</th>
                </tr>  
                <%                    String selqry2 = "select * from tbl_agent g inner join tbl_location l on l.location_id=g.location_id where g.agent_status='2'";
                    ResultSet rs2 = con.selectCommand(selqry2);
                    int i2 = 0;
                    while (rs2.next()) {
                        i2++;
                %>
                <tr>
                    <td><%=i2%></td>
                    <td><%=rs2.getString("agent_name")%></td>
                    <td><%=rs2.getString("agent_contact")%></td>   
                    <td><%=rs2.getString("agent_proof")%></td>
                    <td><%=rs2.getString("agent_photo")%></td>
                    <td><%=rs2.getString("location_name")%></td>
                    <td><a href="AgentVerification.jsp?aid=<%=rs2.getString("agent_id")%>">Accept</a>|
                    </td>                
                </tr>
                    <%
                        }
                    %>

            </table>
        </div>
    </body>
</html>