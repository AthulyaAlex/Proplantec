<%-- 
    Document   : AgencyComplaint
    Created on : 20 May, 2024, 10:27:30 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agent Complaint</title>
        <style>
            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-image: center;
            }
            .text-box {
                background-color: transparent;
                width: 215px;
                color:gray;
            }
            </style>
    </head>
    <body>
        <%
            if (request.getParameter("btn_submit") != null) {
                String uq = "insert into tbl_complaint set complaint_content = '" + request.getParameter("complaint_content") + "'"
                        + ",complaint_date =curdate() ,agent_id = '" + session.getAttribute("gid") + "'";
                    if(con.executeCommand(uq)){
            %>
                <script>
                alert('Inserted');
                 window.location = "AgencyComplaint.jsp";
                </script>
            <%
            } 
            else {
            %>
                <script>
                    alert('Failed');
                window.location = "AgencyComplaint.jsp";
            </script>
            <%
            }
        }

        if (request.getParameter("del") != null) {
            String id = request.getParameter("del");
            String delQry = "delete from tbl_complaint where complaint_id ='" + id + "'";
            if (con.executeCommand(delQry)) {
         %>
       <script>
        alert('Deleted');
        window.location = "AgencyComplaint.jsp";
    </script>
    <%
    } else {
    %>
    <script>
        alert('Failed');
        window.location = "AgencyComplaint.jsp";
    </script>
    <%
            }
        }
    %>
       <div class="bg-img">
                <div style="background-color: #000000b8 !important;">
        <form method="post">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                <tr>
                    <td>Complaint Title</td>
                    <td><input type="text" class="text-box" name="complaint_title"</td>
                </tr>
                <tr>
                    <td>Complaint content</td>
                    <td>
                        <textarea name="complaint_content" class="text-box" rows="6" cols="20"></textarea>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center"><input type="submit" name="btn_submit" value="Register">&nbsp&nbsp<input type="reset" name="btn_reset" value="Reset"</td>
                </tr>
            </table>
        </form>
        <table border="1" align="center">
            <tr>
                <td>Sl.No</td>
                <td>Date/time</td>
                <td>Complaint title</td>
                <td>Agency Name</td>
                <td>complaint content </td>
                <td>Complaint status</td>
                <td>Complaint reply</td>
                <td>Action </td>
            </tr>
            <% int i = 0;
                String seleQry = "select * from tbl_complaint pc inner join tbl_agent dc on dc.agent_id=pc.agent_id";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=res.getString("complaint_date")%></td>
                <td><%=res.getString("complaint_title")%></td>
                <td><%=res.getString("agent_name")%></td>
                <td><%=res.getString("complaint_content")%></td>
                <td><%=res.getString("complaint_status")%></td>
                <td><%=res.getString("complaint_reply")%></td>
                <td><a href="AgencyComplaint.jsp?del=<%=res.getString("complaint_id")%>">Delete</a></td>
            </tr>
            <%
                }
            %>    
            </table>
        </form> 
    </body>
</html>
<%@include file="Foot.jsp" %>
  