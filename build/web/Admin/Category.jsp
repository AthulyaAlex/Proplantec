<%-- 
    Document   : Category
    Created on : 26 Oct, 2023, 2:14:00 PM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>  
<%@include file="Head.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><br><br><br>
        <title>Category</title>
        <style>
            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/2.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }
            .text-box {
                background-color: transparent;
                width: 215px;
                color:gray;
            }
        </style>
    </head>
    <body>
        <% 
               if(request.getParameter("btncat1")!=null)
                {
                    if(request.getParameter("txt_id").equals(""))
                    {
                    String insqry="insert into tbl_category(category_name)values('"+request.getParameter("txtentercat")+"')";
                    con.executeCommand(insqry);
                    }
                    else
                    {
                        String upqry="update tbl_category set category_name='"+request.getParameter("txtentercat")+"'where category_id='"+request.getParameter("txt_id")+"'";
                        con.executeCommand(upqry);
                        response.sendRedirect("Category.jsp");
                    }
                }
                if(request.getParameter("did")!=null)
                {
                   String delqry="delete from tbl_category where category_id='"+request.getParameter("did")+"'";
                   con.executeCommand(delqry);
                   response.sendRedirect("Category.jsp");
                }
                String editid="";
                String editname="";
                if(request.getParameter("eid")!=null)
                {
                    String selqry1="select* from tbl_category where category_id='"+request.getParameter("eid")+"'";
                    ResultSet rs1=con.selectCommand(selqry1);
                    rs1.next();
                    editid=rs1.getString("category_id");
                    editname=rs1.getString("category_name");
                }
                      
        %>   
        
       <div class="bg-img">
                <div style="background-color: #000000b8 !important;">
            <form method="POST" enctype="multipart/form-data" action="../Assets/Actionpages/UserUploadAction.jsp">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
                <tr>
                    <td>Name</td>
                    <td><input type="text" class="text-box" value="<%=editname%>" required pattern="[A-Z]||[a-z]{a,}" name="txtentercat">
                        <input type="hidden" class="text-box" value="<%=editid%>" name="txt_id"></td>
                </tr>
                <tr>
                    <td colspan="2" align="right">
                        <input type="submit" name="btncat1" value="save" >     
                        <input type="submit" name="btncat2" value="cancel" >
                    </td>
                </tr>
            </table>
                <br>
            <table border="2" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Category</th>
                    <th>Action</th>
                </tr>
                <%
            String selqry="select * from tbl_category";      
            ResultSet rs=con.selectCommand(selqry);
            int i=0;
            while(rs.next())
            {
                i++;
                %>
                <tr>
                    <td><%=i%></td>
                    <td><%=rs.getString("category_name")%></td>
                    <td><a href="Category.jsp?did=<%=rs.getString("category_id")%>">Delete</a>
                        |<a href="Category.jsp?eid=<%=rs.getString("category_id")%>">Edit</a></td>
                </tr>
                <%
            }    
                %>
            </table>    
                
        </form>        
         
    </body>
</html>
<br><br><br><br><br><br>
<%@include file="Foot.jsp" %>

