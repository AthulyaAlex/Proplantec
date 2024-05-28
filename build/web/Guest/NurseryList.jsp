<%-- 
    Document   : NurseryList
    Created on : 16 May, 2024, 3:10:38 PM
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
        <title>NurseryList</title>
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
                    background-color:  #e1f5fe54;
                    border-radius: 17px;
            }
            .main {
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: center;
                    align-items: center;
                    gap: 2rem;
            }
/*             .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }*/
            body {
                margin: 0;
                padding: 0;
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') fixed center center/cover;
                min-height: 800px
            }
            .font{
                color: white;
            }
        </style>
    </head>
     
    <body><br><br><br><br><br><br><br>
        <div class="main">
        <%
            String selnur="select * from tbl_nursery n inner join tbl_location l on l.location_id=n.location_id where nursery_status='1'";
            ResultSet rs = con.selectCommand(selnur);
            int i=0;
            while(rs.next())
            {
                i++;
                %>
                <div class="sub">
                    <div class="font">
                    <div align="center"><img src="../Assets/Files/Nurseryphoto/<%=rs.getString("nursery_logo")%>" height="70" width="70"></div>
                    <div class="cont"><div>Name</div><div><%=rs.getString("nursery_name")%></div></div>
                    <div class="cont"><div>Contact</div><div><%=rs.getString("nursery_contact")%></div></div>
                </div>
                </div>
                <%
            }    
                %>
       
        </div><br>
        
    </body>
</html>
<%@include file="Foot.jsp" %>
