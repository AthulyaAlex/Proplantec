<%-- 
    Document   : MyProfile
    Created on : 5 Jan, 2024, 4:12:37 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"></jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MyProfile</title>
    </head>
    <body>
        <%
          String sel1 = "select*from tbl_agent where agent_id='"+session.getAttribute("gid")+"'";  
          ResultSet rs3 = con.selectCommand(sel1);
          if(rs3.next())
          {
        %>
        <form method="post" >
            <table border="2" align="center">
                <tr>
                    <td colspan="2" align="center"><img src="../Assets/Files/Agentphoto/<%=rs3.getString("agent_photo")%>" height="120" width="120"></td>
                </tr>
                <tr>
                    <td>Proof</td>
                    <td><a href="../Assets/Files/Agentproof/<%=rs3.getString("agent_proof")%>"download>Download</a></td>
                </tr>
                <tr>
                    <td>Name</td>
                   <td>
                       <%=rs3.getString("agent_name")%>
                   </td>  
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <%=rs3.getString("agent_contact")%>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                       <%=rs3.getString("agent_address")%> 
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <%=rs3.getString("agent_email")%>
                    </td>
                </tr>
            <%
            }
            %> 
            </table>
        </form>  
    </body>
</html>
