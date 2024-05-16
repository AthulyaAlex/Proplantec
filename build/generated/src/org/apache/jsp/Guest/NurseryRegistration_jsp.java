package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class NurseryRegistration_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>NurseryRegistration</title>\n");
      out.write("    </head>\n");
      out.write("        <body>\n");
      out.write("            <form method=\"post\" enctype=\"multipart/form-data\" action=\"../Assets/Actionpages/NurseryUploadAction.jsp\">\n");
      out.write("            <table border=\"3\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"text\" name=\"txtname\" placeholder=\"Enter Name\" title=\"Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter\" pattern=\"^[A-Z]+[a-zA-Z ]*$\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Contact</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"text\" name=\"txtcontact\" placeholder=\"Enter Contact No\"  pattern=\"[7-9]{1}[0-9]{9}\" \n");
      out.write("                title=\"Phone number with 7-9 and remaining 9 digit with 0-9\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"email\" name=\"txtemail\" placeholder=\"Enter Email-Id\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td>Logo</td>\n");
      out.write("                    <td align=\"center\">\n");
      out.write("                        <input required type=\"file\" name=\"txtlogo\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td>\n");
      out.write("                        <textarea required name=\"txtadd\" placeholder=\"Enter Address\" ></textarea>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Location</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select required=\"\"  name=\"selloc\">\n");
      out.write("                            <option>--select location--</option>\n");
      out.write("                            ");

                                String selqry = "select * from tbl_location";
                                ResultSet rs = con.selectCommand(selqry);
                                while (rs.next()) {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString("location_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("location_name"));
      out.write("</option>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Proof</td>\n");
      out.write("                    <td align=\"center\">\n");
      out.write("                        <input required type=\"file\" name=\"txtpro\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"password\" name=\"txtpsswd\" placeholder=\"Enter Password\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}\" title=\"Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Confirm Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"password\" name=\"txtcpsswd\" placeholder=\"ReEnter Password\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>         \n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"txtsave\" value=\"Save\">\n");
      out.write("                        <input type=\"reset\" name=\"txtcancel\" value=\"Cancel\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"../Assets/jQuery/jQuery.js\"></script>         \n");
      out.write("    <script>\n");
      out.write("                            function getPlace(did)\n");
      out.write("                            {\n");
      out.write("\n");
      out.write("                                //  alert(did);  \n");
      out.write("                                $.ajax({url: \"../Assets/AjaxPages/Ajaxplaces.jsp?pid=\" + did,\n");
      out.write("                                    success: function(result) {\n");
      out.write("                                        $(\"#selplace\").html(result);\n");
      out.write("                                    }\n");
      out.write("                                })\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("    </script>\n");
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
