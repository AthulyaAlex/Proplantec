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
          String sel1 = "select*from tbl_nursery where nursery_id='"+session.getAttribute("nid")+"'";  
          ResultSet rs1 = con.selectCommand(sel1);
          if(rs1.next())
          {
        %>
        <form method="post" >
            <table border="1" align="center">
                <tr>
                    <td colspan="2" align="center"><img src="../Assets/Files/Nurseryphoto/<%=rs1.getString("nursery_logo")%>" height="120" width="120"></td>
                </tr>
                <tr>
                    <td>Proof</td>
                    <td><a href="../Assets/Files/Nurseryproof/<%=rs1.getString("nursery_proof")%>"download>Download</a></td>
                </tr>
                <tr>
                    <td>Name</td>
                   <td>
                       <%=rs1.getString("nursery_name")%>
                   </td>  
                </tr>
                <tr>
                    <td>Contact</td>
                    <td>
                        <%=rs1.getString("nursery_contact")%>
                    </td>
                </tr>
                <tr>
                    <td>Address</td>
                    <td>
                       <%=rs1.getString("nursery_address")%> 
                    </td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td>
                        <%=rs1.getString("nursery_email")%>
                    </td>
                </tr>
            <%
            }
            %> 
            </table>
        </form>  
    </body>
</html>
