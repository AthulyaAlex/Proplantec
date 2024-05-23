<%-- 
    Document   : ComplaintReply
    Created on : 20 May, 2024, 12:55:38 PM
    Author     : HP
--%>

<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet" %>
<%@include file="Head.jsp"%>
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
        </style>
        
    </head>
    <body>  
        <div class="bg-img">
                <div style="background-color:#26404387;">
                    <form method="post">
                        <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
        <%
            String seleQry = "select * from tbl_complaint f inner join tbl_user u on f.user_id=u.user_id where f.complaint_id ='" + request.getParameter("cid") + "'";
            ResultSet ress = con.selectCommand(seleQry);
            if (ress.next()) 
            {
        %>
        <table border="1" align="center">
            <tr>
                <td>User Name</td> 
               
                <td>Date</td>
                <td>Complaint content</td>
            </tr>
            <tr>
                <td><%=ress.getString("user_name")%></td>
               
                <td><%=ress.getString("complaint_date")%></td>
                <td><%=ress.getString("complaint_content")%></td>
            </tr>
        </table>
            <%
                }
            %>
            
            <%
            String seQry = "select * from tbl_complaint f inner join tbl_agent u on f.agent_id=u.agent_id where f.complaint_id ='" + request.getParameter("cid") + "'";
            ResultSet r = con.selectCommand(seQry);
            if (r.next()) 
            {
                    %>                
            <table border="1" align="center">
            <tr>
                <td>Agency Name</td> 
                <td>Date</td>
                <td>Complaint content</td>
            </tr>
            <tr>
                <td><%=r.getString("agent_name")%></td>
                <td><%=r.getString("complaint_date")%></td>
                <td><%=r.getString("complaint_content")%></td>
            </tr>
            <%
                }
            %>
            </table>
            <%
            if(request.getParameter("btn_submit")!=null)
            {
                String uq = "update tbl_complaint set complaint_reply='"+request.getParameter("complaint_reply")+"' where complaint_id = '"+request.getParameter("cid")+"'";
                if(con.executeCommand(uq)){
                    String up= "update tbl_complaint set complaint_status='1' where complaint_id ='"+request.getParameter("cid")+"'"  ;
                     if(con.executeCommand(up)){
                         
                   
                    %>
                <script type="text/javascript" >
                    alert("Complaint Replied");
                    setTimeout(function() {
                    window.location.href = 'HomePage.jsp'
                    }, 1000);
                </script>
            <%
                                           
            }
             else{
                     String up1= "update tbl_complaint set complaint_status='0' where complaint_id ='"+request.getParameter("cid")+"'"  ;
                     con.executeCommand(up1);
                    }
                }     
            }    
            %>
        <form method="post" >
        <table border="1" align="center">
        <tr>
            <td>Complaint Reply</td>
            <td>
                <textarea name="complaint_reply" rows="7" cols="20" class="text-box"></textarea>
            </td>
        </tr>
        <tr>
            <td colspan="2" align="center"><input type="submit" name="btn_submit" value="Register">&nbsp&nbsp<input type="reset" name="btn_reset" value="Reset"</td>
        </tr>
        </table>
        </form>
    </body>
</html>
            </div>
                </div>
        </div>
<%@include file="Foot.jsp" %>        
        