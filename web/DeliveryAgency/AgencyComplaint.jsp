<%-- 
    Document   : AgencyComplaint
    Created on : 20 May, 2024, 10:27:30 PM
    Author     : HP
--%>


<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <style>
/*            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-position:center;
            }*/
        body {
                margin: 0;
                padding: 0;
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') no-repeat center center/cover;
                min-height: 800px
            }
            </style>
    </head>
    <body>
        <div class="bg-img">
                <div style="background-color: #26404387; min-height: 700px">
        <form method="post">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
     
                <h3 style="color: white"; align="center">Agency Complaint </h3>
        <table border="1" align="center">
            <tr>
                <td>Sl.No</td>
                <td>User Name</td> 
                <td>Date</td>
                <td>Complaint content</td>
                <td>Complaint Reply</td>
                <td>Status</td>
            </tr>
            <% int j = 0;
                String selQry = "select * from tbl_complaint f inner join tbl_user u on f.user_id=u.user_id inner join tbl_agent n on n.agent_id=f.agent_id";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    j++;
            %>
            <tr>
                <td align="center"><%=j%></td>
                <td><%=rs.getString("user_name")%></td>
                <td><%=rs.getString("complaint_date")%></td>
                <td><%=rs.getString("complaint_content")%></td>
                <td><%=rs.getString("complaint_reply")%></td>
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
            </div>
                </div>
        </div>
<%@include file="Foot.jsp" %>