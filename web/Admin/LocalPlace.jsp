<%-- 
    Document   : tbl_localplace
    Created on : 28 Oct, 2023, 2:47:49 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>LocalPlace</title>
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
        <form method="post">
            <table border="3" align="center">
                <tr>
                    <td>Location</td>
                        </select>
                    </td>
                    <td>
                        <select name="ddlloc">
                            <option>--select location--</option>
                            
                            <%
                                String selqry="select * from tbl_location";      
                                ResultSet rs=con.selectCommand(selqry);
                                while(rs.next())
                                {
                                  %>
                                  <option value="<%=rs.getString("location_id")%>" <% if(rs.getString("location_id").equals(editlid)){ out.print("Selected") ; } %>><%=rs.getString("location_name")%></option>
                                  
                                  
                                  <%
                                    
                                }
                            %>
                        </select>
                    </td>    
                </tr>
                <tr>
                    <td>LocalPlace</td>
                    <td>
                        <input type="text" name="txtname" placeholder="Enter localplace name"value="<%=editname%>">
                        <input type="hidden" name="txtid" value="<%=editid%>">
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="txtsave" value="Save">
                        <input type="reset" name="txtcancel" value="Cancel">
                    </td>
                </tr>
            </table>
             <table border="2" align="center">
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
                     <td><a href="LocalPlace.jsp?did=<%=rs1.getString("localplace_id")%>">Delete</a>
                         | <a href="LocalPlace.jsp?eid=<%=rs1.getString("localplace_id")%>">Edit</a></td>
                </tr>
               
                <%
                }
                %>
             </table>
            
        </form>
    </body>
</html>
  
