<%-- 
    Document   : AgencyList
    Created on : 16 May, 2024, 10:04:30 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agency List</title>
    </head>
    <body>
      <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <style>
            
            .cont {
                    display: flex;
                    width: 200px;
                    justify-content: space-between;
            }
            .sub {
                    display: flex;
                    flex-direction: column;
                    justify-content: center;
                    align-items: center;
                    gap: 7px;
                    padding: 22px;
                    background-color: #E1F5FE;
                    border-radius: 17px;
            }
            .main {
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: center;
                    align-items: center;
                    gap: 2rem;
            }
            
        </style>
    </head>
    <body>
        <div class="main">
        <%
            String selnur="select * from tbl_agent a inner join tbl_location l on l.location_id=a.location_id where agent_status='1'";
            ResultSet rs = con.selectCommand(selnur);
            int i=0;
            while(rs.next())
            {
                i++;
                %>
                <div class="sub">
                    <div><img src="../Assets/Files/Agentphoto/<%=rs.getString("agent_photo")%>" height="70" width="70"></div>
                    <div class="cont"><div>Name</div><div><%=rs.getString("agent_name")%></div></div>
                    <div class="cont"><div>Contact</div><div><%=rs.getString("agent_contact")%></div></div>
                </div>
                <%
            }    
                %>
       
        </div><br>
        
    </body>
</html>
