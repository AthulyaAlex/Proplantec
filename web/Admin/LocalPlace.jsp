<%-- 
    Document   : tbl_localplace
    Created on : 28 Oct, 2023, 2:47:49 PM
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
        <title>LocalPlace</title>
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
                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') fixed center center/cover;
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
                if(request.getParameter("txtsave")!=null)
                {
                   if(request.getParameter("txtid").equals(""))
                   {
                    String insqry="insert into tbl_localplace(localplace_name,location_id)values('"+request.getParameter("txtname")+"','"+request.getParameter("ddlloc")+"')";
                    con.executeCommand(insqry);
                   }
                   else{
                       String upQry="update tbl_localplace set localplace_name='"+request.getParameter("txtname")+"', location_id='"+request.getParameter("ddlloc")+"' where localplace_id='"+request.getParameter("txtid")+"'";
                       con.executeCommand(upQry);
                       response.sendRedirect("LocalPlace.jsp");
                   }
                    
                }  
                if(request.getParameter("did")!=null)
                {
                   String delqry="delete from tbl_localplace where localplace_id='"+request.getParameter("did")+"'";
                   con.executeCommand(delqry);
                   response.sendRedirect("LocalPlace.jsp");
                }
                String editid="";
                String editname="";
                   String editlid="";
                if(request.getParameter("eid")!=null)
                {
                   String selQ="select * from tbl_localplace where localplace_id='"+request.getParameter("eid")+"'";
                   ResultSet rs2=con.selectCommand(selQ);
                   rs2.next();
                   editid=rs2.getString("localplace_id");
                   editname=rs2.getString("localplace_name");
                   editlid=rs2.getString("location_id");
                }
        %>
        <div class="bg-img">
                <div style="background-color: #26404387;min-height: 700px">
        <form method="post">
             <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                     <h2 style="color:white" align="center">Localplace Entry</h2>
                <tr>
                    <td>Location</td>
                        </select>
                    </td>
                    <td>
                        <select name="ddlloc"  class="text-box" >
                            <option>--select location--</option>
                            
                            <%
                                String selqry="select * from tbl_location";      
                                ResultSet rs=con.selectCommand(selqry);
                                while(rs.next())
                                {
                                  %>
                                  <option value="<%=rs.getString("location_id")%>" style="color: black"  <% if(rs.getString("location_id").equals(editlid)){ out.print("Selected") ; } %>><%=rs.getString("location_name")%></option>
                                  
                                  
                                  <%
                                    
                                }
                            %>
                        </select>
                    </td>    
                </tr>
                <tr>
                    <td>LocalPlace</td>
                    <td>
                        <input type="text" name="txtname" class="text-box" placeholder="Enter localplace name"value="<%=editname%>">
                        <input type="hidden" name="txtid" value="<%=editid%>">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="txtsave" value="Save">
                        <input type="reset" name="txtcancel" value="Cancel">
                    </td>
                </tr>
            </table><br>
              <table border="1" cellpadding="10" align="center" >
                <tr>
                    <th>Sl.no</th>
                    <th>location</th>
                    <th>localplace</th>
                    <th>Action</th>
                </tr>
                <%
                 String selqr="select * from tbl_localplace lp inner join tbl_location l on l.location_id=lp.location_id";      
                ResultSet rs1=con.selectCommand(selqr);
                int i=0;
                while(rs1.next())
                {
                    i++;
                %>
            
                <tr>
                    <td><%=i%></td>
                    <td><%=rs1.getString("location_name")%></td>
                    <td><%=rs1.getString("localplace_name")%></td>
                     <td><a href="LocalPlace.jsp?did=<%=rs1.getString("localplace_id")%>" style="color: white">Delete</a>
                         | <a href="LocalPlace.jsp?eid=<%=rs1.getString("localplace_id")%>"style="color: white">Edit</a></td>
                </tr>
               
                <%
                }
                %>
             </table><br><br>
            
        </form>
    </body>
</html>
<%@include file="Foot.jsp" %>  