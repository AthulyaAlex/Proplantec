<%-- 
    Document   : ComplaintStatus
    Created on : 20 May, 2024, 2:14:54 PM
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
                background-image: center;
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
                <div style="background-color: #26404387;">
        <form method="post">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                <h1 style="color:white" align="center">Complaint Status </h1>
            <table align="center" cellpadding="10">
            <tr>
                <td>Sl.No</td>
                <td>Date</td>
                <td>Complaint content</td>
                <td>Reply</td>
            </tr>
            <% int i = 0;
                String seleQry = "select * from tbl_complaint where user_id='"+session.getAttribute("uid") +"'";
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
            </body><br><br><br><br><br><br><br><br><br><br><br>
</html> 
            </div>
                </div>
      </div>
            <%@include file="Foot.jsp" %>