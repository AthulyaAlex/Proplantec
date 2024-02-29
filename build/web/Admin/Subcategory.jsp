<%-- 
    Document   : tbl_subcategory
    Created on : 28 Oct, 2023, 9:37:01 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sub category</title>
    </head>
    <body>
        <% 
                if(request.getParameter("txtsave")!=null)
                {
                   if(request.getParameter("txtid").equals(""))
                   {
                    String insqry="insert into tbl_subcategory(subcategory_name,category_id)values('"+request.getParameter("txtname")+"','"+request.getParameter("ddlcat")+"')";
                    con.executeCommand(insqry);
                   }
                   else{
                       String upQry="update tbl_subcategory set subcategory_name='"+request.getParameter("txtname")+"', category_id='"+request.getParameter("ddlcat")+"' where subcategory_id='"+request.getParameter("txtid")+"'";
                       con.executeCommand(upQry);
                       response.sendRedirect("Subcategory.jsp");
                   }
                    
                }  
                if(request.getParameter("did")!=null)
                {
                   String delqry="delete from tbl_subcategory where subcategory_id='"+request.getParameter("did")+"'";
                   con.executeCommand(delqry);
                   response.sendRedirect("Subcategory.jsp");
                }
                String editid="";
                String editname="";
                    String editcid="";
                if(request.getParameter("eid")!=null)
                {
                   String selQ="select * from tbl_subcategory where subcategory_id='"+request.getParameter("eid")+"'";
                   ResultSet rs2=con.selectCommand(selQ);
                   rs2.next();
                   editid=rs2.getString("subcategory_id");
                   editname=rs2.getString("subcategory_name");
                   editcid=rs2.getString("category_id");
                }
        %>
        
        <form method="post">
            <table border="3" align="center">
                
                <tr>
                    <td>Category</td>
                    <td>
                        <select name="ddlcat" required>
                            <option>--select category--</option>
                        
                        <%
                                String selqry="select * from tbl_category";      
                                ResultSet rs=con.selectCommand(selqry);
                                while(rs.next())
                                {
                                  %>
                                  <option value="<%=rs.getString("category_id")%>" <% if(rs.getString("category_id").equals(editcid)){ out.print("Selected") ; } %>><%=rs.getString("category_name")%></option>
                                  
                                  
                                  <%
                                    
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Name</td>
                    <td>
                        <input required type="text" name="txtname" pattern="[A-Z]||[a-z]{a,}" placeholder="Enter Subcategory" value="<%=editname%>">
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
                    <th>Subcategory</th>
                    <th>Category</th>
                    <th>Action</th>
                </tr>
               <%
                 String selqr="select * from tbl_subcategory sc inner join tbl_category c on c.category_id=sc.category_id";      
                ResultSet rs1=con.selectCommand(selqr);
                int i=0;
                while(rs1.next())
                {
                    i++;
                %>
            
                <tr>
                    <td><%=i%></td>
                    <td><%=rs1.getString("category_name")%></td>
                     <td><%=rs1.getString("subcategory_name")%></td>
                     <td><a href="Subcategory.jsp?did=<%=rs1.getString("subcategory_id")%>">Delete</a>
                         | <a href="Subcategory.jsp?eid=<%=rs1.getString("subcategory_id")%>">Edit</a></td>
                </tr>
               
                <%
                }
                %>
            </table>
        </form>     
    </body>
</html>

