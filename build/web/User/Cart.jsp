<%-- 
    Document   : Carrt
    Created on : 14 May, 2024, 10:29:46 AM
    Author     : HP
--%>
<jsp:useBean class="DB.ConnectionClass" id="con"> </jsp:useBean>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>My Cart</title>
    </head>
    <body>
        <% 
                if(request.getParameter("btn")!=null)
                {
                    String id=request.getParameter("txtid");
                    String rate=request.getParameter("txtrate");
                    String upQry="update tbl_booking set booking_total='"+rate+"',booking_status='1' where booking_id='"+id+"'";
                    out.println(upQry);
                    if(con.executeCommand(upQry))
                    {
                        %>
                        <script>
                            alert('Updated');
                            </script>
                            <%
                        }
                else{
                      %>
                        <script>
                            alert('Failed');
                            </script>
                            <%   
                }
                    //response.sendRedirect("HomePage.jsp");
                }
                
        %>
                
        <%
        
        String selQry="select * from tbl_booking where user_id='" + session.getAttribute("uid") + "'";
        ResultSet rs = con.selectCommand(selQry);
        rs.next();
        System.out.print(selQry);
        String bid=rs.getString("booking_id");
        %>
        <table border="1" align="center">
                <tr>
                    <th>Sl.no</th>
                    <th>Product Name</th>
                    <th>Product Photo</th>
                    <th>Product Rate</th>
                    <th>Product Quantity</th>
                    <th>Total</th>
                </tr>
                <%
                String selcart="select * from tbl_cart c inner join tbl_product p on p.product_id=c.product_id where booking_id='" + rs.getString("booking_id") + "'";
                ResultSet rsc = con.selectCommand(selcart);
                int i = 0; 
                int CartTotal=0;
                while (rsc.next()) {
                    
                            i++;
                %>
                <tr>
                         <td><%=i%></td>
                         <td><%=rsc.getString("product_name")%></td>
                         <td><img src="../Assets/Files/Productphoto/<%=rsc.getString("product_image")%>" height="70" width="70"</td></td>
                         <td><%=rsc.getString("product_rate")%></td>
                         <td><input type="number" name="txtquantity" value="<%=rsc.getString("cart_quantity")%>" onchange="getCart(this.value,'<%=rsc.getString("cart_id")%>')"></td>
                         <td>
                             <%
                                int Total = Integer.parseInt(rsc.getString("product_rate")) * Integer.parseInt(rsc.getString("cart_quantity"));
                                out.println(Total);
                                CartTotal+=Total;
                              %></td>
                         
                </tr> 
                
                <%
                }
                %>
                <tr>
                    <th>Total</th>
                    <td colspan="5" align="right"><% out.print(CartTotal); %></td>
                </tr>
        
        </table>
                <form method="post">
                    <input type="hidden" name="txtid" value="<% out.print(bid); %>">
                    <input type="hidden" name="txtrate" value="<% out.print(CartTotal); %>" id="seltotal">
                    
                    <input type="submit" name="btn" value="Submit">    
                </form>     
    </body>
    <script src="../Assets/jQuery/jQuery.js"></script>         
    <script>
                            function getCart(qty,cid)
                            {  
                                $.ajax({url: "../Assets/AjaxPages/AjaxMyCart.jsp?qty=" + qty +"&cid="+cid,
                                    success: function(result) {
                                        console.log(result);
                                        window.location="Cart.jsp"
                                    }
                                })
                            }

    </script>
</html>

