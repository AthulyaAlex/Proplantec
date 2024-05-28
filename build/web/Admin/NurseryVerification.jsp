<%-- 
    Document   : NurseryVerification
    Created on : 11 Jan, 2024, 10:51:41 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@include file="Head.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
/*            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }*/
            body {
                margin: 0;
                padding: 0;
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') repeat center center/cover;
                min-height: 800px
            }
        </style>
    </head>
    <body>
        <%
            if (request.getParameter("aid") != null) {
                String up = "update tbl_nursery set nursery_status='1' where nursery_id='" + request.getParameter("aid") + "'";
                if (con.executeCommand(up)) {
                    response.sendRedirect("NurseryVerification.jsp");
                }
            }

            if (request.getParameter("rid") != null) {
                String up = "update tbl_nursery set nursery_status='2' where nursery_id='" + request.getParameter("rid") + "'";
                if (con.executeCommand(up)) {
                    response.sendRedirect("NurseryVerification.jsp");
                }
            }

        %>
        <div align="center" class="bg-img">
            <div style="background-color:#26404387;min-height: 700px"><br><br>
                <br><br>   <h3 style="color: white;">New Nursery</h3>
            <table border="2" align="center" cellpadding="10" style="color: white">
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Logo</th>
                    <th>Proof</th>
                    <th>Proof Download</th>
                    <th>Location</th>
                    <th>Action</th>
                </tr>  
                <%                    String selqry = "select * from tbl_nursery n inner join tbl_location l on l.location_id=n.location_id where n.nursery_status='0'";
                    ResultSet rs = con.selectCommand(selqry);
                    int i = 0;
                    while (rs.next()) {
                        i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("nursery_name")%></td>
                    <td><%=rs.getString("nursery_contact")%></td>   
                    <td><%=rs.getString("nursery_logo")%></td>
                    <td><%=rs.getString("nursery_proof")%></td>
                    <td><a href="../Assets/Files/Nurseryproof/<%=rs.getString("nursery_proof")%>"download>Download</a></td>
                    <td><%=rs.getString("location_name")%></td>
                    <td><a href="NurseryVerification.jsp?aid=<%=rs.getString("nursery_id")%>">Accept</a>|
                        <a href="NurseryVerification.jsp?rid=<%=rs.getString("nursery_id")%>">Reject</a></td>
                </tr>
                <%
                    }
                %>

            </table>
                <br>
            <h3 style="color: white;">Accepted Nursery</h3>
            <table border="2" align="center" cellpadding="10" style="color: white">
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Logo</th>
                    <th>Proof</th>
                    <th>Proof Download</th>
                    <th>Location</th>
                    <th>Action</th>
                </tr>  
                <%                    String selqry1 = "select * from tbl_nursery n inner join tbl_location l on l.location_id=n.location_id where n.nursery_status='1'";
                    ResultSet rs1 = con.selectCommand(selqry1);
                    int i1 = 0;
                    while (rs1.next()) {
                        i1++;
                %>
                <tr>
                    <td><%=i1%></td>
                    <td><%=rs1.getString("nursery_name")%></td>
                    <td><%=rs1.getString("nursery_contact")%></td>   
                    <td><%=rs1.getString("nursery_logo")%></td>
                    <td><%=rs1.getString("nursery_proof")%></td>
                    <td><a href="../Assets/Files/Nurseryproof/<%=rs1.getString("nursery_proof")%>"download>Download</a></td>
                    <td><%=rs1.getString("location_name")%></td>
                    <td><a href="NurseryVerification.jsp?rid=<%=rs1.getString("nursery_id")%>">Reject</a></td>
                </tr>
                <%
                    }
                %>

            </table>
                <br>
            <h3 style="color: white;">Rejected Nursery</h3>
            <table border="2" align="center"cellpadding="10" style="color: white">
                <tr>
                    <th>Sl.no</th>
                    <th>Name</th>
                    <th>Contact</th>
                    <th>Logo</th>
                    <th>Proof</th>
                    <th>Proof Download</th>
                    <th>Location</th>
                    <th>Action</th>
                </tr>  
                <%                    String selqry2 = "select * from tbl_nursery n inner join tbl_location l on l.location_id=n.location_id where n.nursery_status='2'";
                    ResultSet rs2 = con.selectCommand(selqry2);
                    int i2 = 0;
                    while (rs2.next()) {
                        i2++;
                %>
                <tr>
                    <td><%=i2%></td>
                    <td><%=rs2.getString("nursery_name")%></td>
                    <td><%=rs2.getString("nursery_contact")%></td>   
                    <td><%=rs2.getString("nursery_logo")%></td>
                    <td><%=rs2.getString("nursery_proof")%></td>
                    <td><a href="../Assets/Files/Nurseryproof/<%=rs2.getString("nursery_proof")%>"download>Download</a></td>
                    <td><%=rs2.getString("location_name")%></td>
                    <td><a href="NurseryVerification.jsp?aid=<%=rs2.getString("nursery_id")%>">Accept</a>|
                    </td>                </tr>
                    <%
                        }
                    %>
            </table><br><br>
        </div>
            </div>
    </body>
</html>
 <%@include file="Foot.jsp"%>