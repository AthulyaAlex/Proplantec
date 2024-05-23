<%-- 
    Document   : ComplaintAgency
    Created on : 22 May, 2024, 6:58:10 AM
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
        <title>Complaint</title>
    
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
            .text-box {
                background-color: transparent;
                width: 215px;
                color:gray;
            }
            
            input::reset {
                    width: 40%;
                    background-color: #096;
                    color: white;
                    padding: 15px;
                    margin: 4px 0;
                    border: none;
                    border-radius: 4px !important;
                    cursor: pointer;
            }
            </style>
    </head>
    <body>
        <%
            if(request.getParameter("btn_submit")!=null)
            {
                    String uq = "insert into tbl_complaint set complaint_title = '"+request.getParameter("complaint_title")+"'"
                            + ",complaint_content = '"+request.getParameter("complaint_content")+"',complaint_date =curdate(),"
                            + "user_id = '"+session.getAttribute("uid")+"',agent_id = '"+request.getParameter("gid")+"'";
                    if(con.executeCommand(uq)){
            %>
                <script>
                alert('Inserted');
                 window.location = "ComplaintAgency.jsp";
                </script>
            <%
            } 
            else {
            %>
                <script>
                    alert('Failed');
                window.location = "ComplaintAgency.jsp";
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
        window.location = "ComplaintAgency.jsp";
    </script>
    <%
    } else {
    %>
    <script>
        alert('Failed');
        window.location = "ComplaintAgency.jsp";
    </script>
    <%
            }
        }
    %>
        
        <div class="bg-img">
                <div style="background-color:#26404387;">
        <form method="post">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                
            <table border="1" align="center">
                <tr>
                    <td>Agent</td>
                    <td><select name="gid" class="text-box">
                            <option value="">----select----</option>
                            <% 
                String selQry = "select * from tbl_agent";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
            %>
            <option value="<%=rs.getString("agent_id")%>"><%=rs.getString("agent_name")%></option>
            <%
                }
            %>
                        </select>          
                    </td>
                </tr>
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
                    <td colspan="2" align="center"><input type="submit" name="btn_submit" value="Register">&nbsp&nbsp<input type="reset" name="btn_reset" value="Reset" class="btn" ></td>
                </tr>
            </table>
       
                        <table border="1" align="center"><br><br><br>
                 <br><tr>
                <td>Sl.No</td>
                <td>Date/time</td>
                <td>Complaint title</td>
                <td>Agent Name</td>
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
                <td><a href="ComplaintAgency.jsp?del=<%=res.getString("complaint_id")%>">Delete</a></td>
            </tr>
            <%
                }
            %>    
            </table>
        </form> 
    </body><br><br><br><br>
</html>
<%@include file="Foot.jsp" %>
        </div>
                </div>
        </div>
