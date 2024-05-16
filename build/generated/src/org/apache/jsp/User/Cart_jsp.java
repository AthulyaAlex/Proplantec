package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Cart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write('\n');
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
          out.write(' ');
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>My Cart</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
                if(request.getParameter("btn")!=null)
                {
                    String id=request.getParameter("txtid");
                    String rate=request.getParameter("txtrate");
                    String upQry="update tbl_booking set booking_total='"+rate+"',booking_status='1' where booking_id='"+id+"'";
                    out.println(upQry);
                    if(con.executeCommand(upQry))
                    {
                        
      out.write("\n");
      out.write("                        <script>\n");
      out.write("                            alert('Updated');\n");
      out.write("                            </script>\n");
      out.write("                            ");

                        }
                else{
                      
      out.write("\n");
      out.write("                        <script>\n");
      out.write("                            alert('Failed');\n");
      out.write("                            </script>\n");
      out.write("                            ");
   
                }
                    //response.sendRedirect("HomePage.jsp");
                }
                
        
      out.write("\n");
      out.write("                \n");
      out.write("        ");

        
        String selQry="select * from tbl_booking where user_id='" + session.getAttribute("uid") + "' and booking_status='0'";
        ResultSet rs = con.selectCommand(selQry);
        rs.next();
        String bid=rs.getString("booking_id");
        
      out.write("\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Product Name</th>\n");
      out.write("                    <th>Product Photo</th>\n");
      out.write("                    <th>Product Rate</th>\n");
      out.write("                    <th>Product Quantity</th>\n");
      out.write("                    <th>Total</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                String selcart="select * from tbl_cart c inner join tbl_product p on p.product_id=c.product_id where booking_id='" + rs.getString("booking_id") + "'";
                ResultSet rsc = con.selectCommand(selcart);
                int i = 0; 
                int CartTotal=0;
                while (rsc.next()) {
                    
                            i++;
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                         <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rsc.getString("product_name"));
      out.write("</td>\n");
      out.write("                         <td><img src=\"../Assets/Files/Productphoto/");
      out.print(rsc.getString("product_image"));
      out.write("\" height=\"70\" width=\"70\"</td></td>\n");
      out.write("                         <td>");
      out.print(rsc.getString("product_rate"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rsc.getString("cart_quantity"));
      out.write("</td>\n");
      out.write("                         <td>\n");
      out.write("                             ");

                                int Total = Integer.parseInt(rsc.getString("product_rate")) * Integer.parseInt(rsc.getString("cart_quantity"));
                                out.println(Total);
                                CartTotal+=Total;
                              
      out.write("</td>\n");
      out.write("                         </td>\n");
      out.write("                </tr> \n");
      out.write("                \n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <th>Total</th>\n");
      out.write("                    <td colspan=\"5\" align=\"right\">");
 out.print(CartTotal); 
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("        \n");
      out.write("        </table>\n");
      out.write("                <form method=\"post\">\n");
      out.write("                    <input type=\"text\" name=\"txtid\" value=\"");
 out.print(bid); 
      out.write("\">\n");
      out.write("                    <input type=\"text\" name=\"txtrate\" value=\"");
 out.print(CartTotal); 
      out.write("\">\n");
      out.write("                    <input type=\"submit\" name=\"btn\" value=\"Submit\">    \n");
      out.write("                </form>     \n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
