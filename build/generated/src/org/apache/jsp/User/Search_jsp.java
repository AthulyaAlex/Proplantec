package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Search_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Search</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <form method=\"post\" >\n");
      out.write("            <table border=\"3\" align=\"center\">\n");
      out.write("                <tr>                                                            \n");
      out.write("                    <td>Category</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddlcat\" onchange=\"getsubcategory(this.value)\">\n");
      out.write("                            <option>--select Category--</option>\n");
      out.write("                            ");

                                String seelqry = "select * from tbl_category";
                                ResultSet rs2 = con.selectCommand(seelqry);
                                while (rs2.next()) {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs2.getString("category_id"));
      out.write('"');
      out.write('>');
      out.print(rs2.getString("category_name"));
      out.write("</option>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Subcategory</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddlsub\" id=\"ddlsub\" >\n");
      out.write("                            <option>--select subcategory--</option>\n");
      out.write("                            ");

                                String selqry = "select * from tbl_subcategory";
                                ResultSet rs = con.selectCommand(selqry);
                                while (rs.next()) {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString("subcategory_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("subcategory_name"));
      out.write("</option>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"txtsave\" value=\"Search\">\n");
      out.write("                    </td>\n");
      out.write("            </table><br>\n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Product Image</th>\n");
      out.write("                    <th>Product Name</th>\n");
      out.write("                    <th>Product Rate</th>\n");
      out.write("                    <th>Product Details</th>\n");
      out.write("                    <th>Product Stock</th>\n");
      out.write("                    <th>Product Gallery</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    if (request.getParameter("txtsave") != null) {
                        String selectqry = "select * from tbl_product where category_id='" + request.getParameter("ddlcat") + "' and subcategory_id='" + request.getParameter("ddlsub") + "'";
                        ResultSet r = con.selectCommand(selectqry);

                        int i = 0;
                        while (r.next()) {
                            i++;
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                         <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                         <td><img src=\"../Assets/Files/Productphoto/");
      out.print(r.getString("product_image"));
      out.write("\" height=\"70\" width=\"70\"</td></td>\n");
      out.write("                         <td>");
      out.print(r.getString("product_name"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(r.getString("product_rate"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(r.getString("product_details"));
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(r.getString("product_stock"));
      out.write("</td>\n");
      out.write("                         <td><a href=\"ViewGallery.jsp?sid=");
      out.print(r.getString("product_id"));
      out.write(" \"> View Gallery</a>\n");
      out.write("                         <td><button type=\"submit\" onclick=\"booking(");
      out.print(r.getString("product_id"));
      out.write(")\">Add to cart</button></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                        }
                    }
                
      out.write("\n");
      out.write("            </table>     \n");
      out.write("        </form>   \n");
      out.write("    </body>\n");
      out.write("    <script src=\"../Assets/jQuery/jQuery.js\"></script>         \n");
      out.write("    <script>\n");
      out.write("                            function getsubcategory(subid)\n");
      out.write("                            {\n");
      out.write("\n");
      out.write("                                //  alert(did);  \n");
      out.write("                                $.ajax({url: \"../Assets/AjaxPages/Ajaxcategory.jsp?subid=\" + subid,\n");
      out.write("                                    success: function(result) {\n");
      out.write("                                        $(\"#ddlsub\").html(result);\n");
      out.write("                                    }\n");
      out.write("                                })\n");
      out.write("                            }\n");
      out.write("                            function booking(id)\n");
      out.write("                            {\n");
      out.write("                               //  alert(did);  \n");
      out.write("                                $.ajax({url: \"../Assets/AjaxPages/AjaxAddCart.jsp?id=\" + id,\n");
      out.write("                                    success: function(result) {\n");
      out.write("                                        $(\"#\").html(result);\n");
      out.write("                                    }\n");
      out.write("                                }) \n");
      out.write("                            }\n");
      out.write("                            \n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("</html>");
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
