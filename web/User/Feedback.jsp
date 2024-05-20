<%-- 
    Document   : tbl_feedback
    Created on : 28 Oct, 2023, 9:46:18 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Feedback</title>
        <title>Login</title>
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
            if(request.getParameter("btn_submit")!=null)
            {
                    String uq = "insert into tbl_feedback set feedback_content = '"+request.getParameter("feedback_content")+"'"
                            + ",feedback_date =curdate() ,user_id = '"+session.getAttribute("uid")+"'";
                    con.executeCommand(uq);
                    %>
                <script>
                        alert("Feedback Send");
                        window.location="HomePage.jsp";
                </script>
    <%
            }
        if (request.getParameter("del") != null) {
            String id = request.getParameter("del");
            String delQry = "delete from tbl_feedback where feedback_id ='" + id + "'";
            con.executeCommand(delQry);
             %>
                <script>
                        alert("Feedback Deleted");
                        window.location="HomePage.jsp";
                </script>
    <%
        }
    %>
        <div class="bg-img">
                <div style="background-color: #000000b8 !important;">
        <form method="post">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                <tr>
                    <td>Feedback</td>
                    <td>
                        <textarea name="feedback_content" class="text-box" rows="6" cols="20"></textarea>
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
                <td>Feedback </td>
                <td>Action </td>
            </tr>
            <% int i = 0;
                String seleQry = "select * from tbl_feedback";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            %>
            <tr>
                <td><%=i%></td>
                <td><%=res.getString("feedback_date")%></td>
                <td><%=res.getString("feedback_content")%></td>
                <td><a href="Feedback.jsp?del=<%=res.getString("feedback_id")%>">Delete</a></td>
            </tr>
            <%
                }
            %>
            </table>
         </form>      
    </body>
</html>
<%@include file="Foot.jsp" %>