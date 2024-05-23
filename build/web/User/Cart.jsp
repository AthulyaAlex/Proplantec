<%-- 
    Document   : Carrt
    Created on : 14 May, 2024, 10:29:46 AM
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
        <title>My Cart</title>
        <title>Login</title>
            <style>
/*            .bg-img {
                background-image: url("../Assets/Templates/Main/assets/img/hero-bg.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                background-image: center;
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
                color:gray;
            }
            </style>
    </head>
    <body>
        <% 
                if(request.getParameter("btn")!=null)
                {
                    String id=request.getParameter("txtid");
                    String rate=request.getParameter("txtrate");
                    String radio =request.getParameter("rdo");
                    String upQry="update tbl_booking set booking_total='"+rate+"',booking_status='1', planter_status='"+radio+"' where booking_id='"+id+"'";
                    String upQ="update tbl_cart set cart_status='1' where booking_id='"+id+"'";
                    con.executeCommand(upQ);
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
                    response.sendRedirect("Payment.jsp?bid="+id+"");
                }
                
        %>
                
        <%
        String bid =""; 
        String selQry="select * from tbl_booking where user_id='" + session.getAttribute("uid") + "'& booking_status=0";
        ResultSet rs = con.selectCommand(selQry);
        if(rs.next())
        {
           System.out.print(selQry);
           bid=rs.getString("booking_id"); 
        }
        else
        {
            out.println("Cart empty");
        }
        
        %>
         <div class="bg-img">
                <div style="background-color: #26404387;">
                      <form method="post">
            <br><br><br><br><br><br><br>
            <div style="color:white;font-size: 15px;">
                 <table align="center" cellpadding="10">
              
    
                <tr>
                    <th>Sl.no</th>
                    <th>Product Name</th>
                    <th>Product Photo</th>
                    <th>Product Rate</th>
                    <th>Product Quantity</th>
                    <th>Action</th>
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
                         <td><img src="../Assets/Files/Productphoto/<%=rsc.getString("product_image")%>" height="70" width="70"></td>
                         <td><%=rsc.getString("product_rate")%></td>
                         <td><input type="number" name="txtquantity" value="<%=rsc.getString("cart_quantity")%>" onchange="getCart(this.value,'<%=rsc.getString("cart_id")%>')"></td>
                         <td><button onclick="getDel('<%=rsc.getString("cart_id")%>')">Delete</button></td>
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
                    <td colspan="6" align="right"><% out.print(CartTotal); %></td>
                </tr>    
                    <tr>
                        <th>Labour Required</th>
                        <td colspan="6" >Yes<input type="radio" name="rdo" value="1">
                             No<input type="radio" name="rdo" value="0"></td>
                    </tr>
                    
                       
                  
                    
                    <tr>
                       
                        <td colspan="7" align="center"><input type="submit" name="btn" value="Payment"></td>
                    </tr>    
               
        
        </table>
                    <input type="hidden" name="txtid" value="<% out.print(bid); %>">
                    <input type="hidden" name="txtrate" value="<% out.print(CartTotal); %>" id="seltotal">
                    
                    
                </form>     
    </body><br><br><br>
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
                            function getDel(cid)
                            {  
                                $.ajax({url: "../Assets/AjaxPages/AjaxMyCart.jsp?Action='Delete'&cid="+cid,
                                    success: function(result) {
                                        console.log(result);
                                        window.location="Cart.jsp"
                                    }
                                })
                            }
                            

    </script>
                </html></div>
                </div>
         </div>
<%@include file="Foot.jsp" %>
