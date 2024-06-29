<%-- 
    Document   : newjsp
    Created on : 26 Oct, 2023, 12:27:32 PM
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
        <title>Location</title>
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
            .text-box {
                background-color: transparent;
                width: 215px;
                color:white;
            }
    </style>      
    </head>
    <body>
            <% 
                if(request.getParameter("btnloc1")!=null)
                {
                   if(request.getParameter("txtlid").equals(""))    
                {
                    String insqry="insert into tbl_location(location_name)values('"+request.getParameter("txtenterlocation")+"')";
                    con.executeCommand(insqry);
                }
                else{
                      String upQry="update tbl_location set location_name='"+request.getParameter("txtenterlocation")+"' where location_id='"+request.getParameter("txtlid")+"'";
                       con.executeCommand(upQry);
                       response.sendRedirect("Location.jsp");
                   }
                }    
                if(request.getParameter("did")!=null)
                {
                   String delqry="delete from tbl_Location where Location_id='"+request.getParameter("did")+"'";
                   con.executeCommand(delqry);
                   response.sendRedirect("Location.jsp");
                   
                } 
                String editid="";
                String editname="";
                if(request.getParameter("eid")!=null)
                {
                    String selqry1="select* from tbl_location where location_id='"+request.getParameter("eid")+"'";
                    ResultSet rs1=con.selectCommand(selqry1);
                    rs1.next();
                    editid=rs1.getString("location_id");
                    editname=rs1.getString("location_name");
                }
            %>   
        <div class="bg-img">
                <div style="background-color:#26404387;">
        <form name="frmloc" method="post">
         <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                     <h2 style="color:white" align="center">Location Entry</h2>
                <tr>    
                    <td>Name</td>
                    <td><input type="text" class="text-box" value="<%=editname%>"placeholder="Enter location name"required pattern="[A-Z]||[a-z]{a,}" name="txtenterlocation">
                    <input type="hidden"  value="<%=editid%>" name="txtlid">  
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btnloc1" value="save" >     
                        <input type="submit" name="btnloc2" value="cancel" >
                    </td>
                </tr>
            </table><br>
              <table border="1" cellpadding="10" align="center" >
                <tr>
                    <th>Sl.no</th>
                    <th>Location</th>
                    <th>Action</th>
                </tr>
                <%
            String selqry="select * from tbl_location";      
            ResultSet rs=con.selectCommand(selqry);
            int i=0;
            while(rs.next())
            {
                i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("location_name")%></td>
                    <td><a href="Location.jsp?did=<%=rs.getString("location_id")%>" style="color: white">Delete</a>|
                        <a href="Location.jsp?eid=<%=rs.getString("location_id")%>" style="color: white">Edit</a></td>
                </tr>
                <%
            }    
                %>
            </table><br>
        </form>        
    </body>
</html>
<%@include file="Foot.jsp" %>
