<%-- 
    Document   : Plantype
    Created on : 26 Oct, 2023, 2:09:59 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>     
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Planttype</title>
    </head>
    <body>
        <% 
                if(request.getParameter("btnpla1")!=null)
                {
                    if(request.getParameter("txt_id").equals(""))
                    {
                    String insqry="insert into tbl_planttype(planttype_name)values('"+request.getParameter("txtenterplant")+"')";
                    con.executeCommand(insqry);
                    }
                    else
                    {
                        String upqry="update tbl_planttype set planttype_name='"+request.getParameter("txtenterplant")+"'where planttype_id='"+request.getParameter("txt_id")+"'";
                        con.executeCommand(upqry);
                        response.sendRedirect("Planttype.jsp");
                    }
                }
                if(request.getParameter("did")!=null)
                {
                   String delqry="delete from tbl_planttype where planttype_id='"+request.getParameter("did")+"'";
                   con.executeCommand(delqry);
                   response.sendRedirect("Planttype.jsp");
                }
                String editid="";
                String editname="";
                if(request.getParameter("eid")!=null)
                {
                    String selqry1="select* from tbl_planttype where planttype_id='"+request.getParameter("eid")+"'";
                    ResultSet rs1=con.selectCommand(selqry1);
                    rs1.next();
                    editid=rs1.getString("planttype_id");
                    editname=rs1.getString("planttype_name");
                }
            %>   
        
        <form name="frmplant" method="post">
            <table border="2" align="center">
                <tr>                                                            
                    <td>Category</td>
                    <td>
                        <select name="ddlcat" onchange="getPlace(this.value)">
                            <option>--select Category--</option>
                            <%
                                String seelqry = "select * from tbl_category";
                                ResultSet rs2 = con.selectCommand(seelqry);
                                while (rs2.next()) {
                            %>
                            <option value="<%=rs2.getString("category_id")%>"><%=rs2.getString("category_name")%></option>
                            <%
                                }
                            %>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td>Subcategory</td>
                    <td>
                        <select name="ddlsub" id="ddlsub">
                            <option>--select subcategory--</option>
                        </select>
                    </td>
                </tr>
                <tr>
          <td> planttype name</td>
          <td><input type="text" value="<%=editname%>" required pattern="[A-Z]||[a-z]{a,}" name="txtenterplant">
                <input type="hidden" value="<%=editid%>" name="txt_id"></td>
                </tr>
                
                <tr>
                    <td colspan="2" align="center">
                        <input type="submit" name="btnpla1" value="save" >     
                        <input type="submit" name="btndpla2" value="cancel" >
                    </td>
                </tr>
                </table>
            <table border="2" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Planttype</th>
                    <th>Action</th>
                </tr>
                <%String selqry="select * from tbl_planttype";      
                ResultSet rs=con.selectCommand(selqry);
                int i=0;
                while(rs.next())
                {
                    i++;
                %>
            
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("planttype_name")%></td>
                    <td><a href="Planttype.jsp?did=<%=rs.getString("planttype_id")%>">Delete</a>
                        | <a href="Planttype.jsp?eid=<%=rs.getString("planttype_id")%>">Edit</a></td>
                </tr>
                <%
            }    
                %>
            </table>
        </form>        
         
    </body>
    <script src="../Assets/jQuery/jQuery.js"></script>         
    <script>
                              function getPlace(did)
                            {
                              
                           //  alert(did);  
                                $.ajax({url:"../Assets/AjaxPages/Ajaxcategory.jsp?did=" + did,
                                success: function(result){
                                    $("#ddlsub").html(result);
                                }
                            })
                            }
    </script>
</html>
