package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class MyProfile_jsp extends org.apache.jasper.runtime.HttpJspBase
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
        }
      }
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>My Profile</title>\n");
      out.write("        <title>Login</title>\n");
      out.write("            <style>\n");
      out.write("/*            .bg-img {\n");
      out.write("                background-image: url(\"../Assets/Templates/Main/assets/img/hero-bg.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                background-image: center;\n");
      out.write("            }*/\n");
      out.write("            body {\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') no-repeat center center/cover;\n");
      out.write("                min-height: 800px\n");
      out.write("            }\n");
      out.write("            .text-box {\n");
      out.write("                background-color: transparent;\n");
      out.write("                width: 215px;\n");
      out.write("                color:gray;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

          String sel1 = "select*from tbl_user where user_id='"+session.getAttribute("uid")+"'";  
          ResultSet rs = con.selectCommand(sel1);
          if(rs.next())
          {
        
      out.write("\n");
      out.write("        <form method=\"post\">\n");
      out.write("        <div class=\"bg-img\">\n");
      out.write("                <div style=\"background-color: #26404387;\">\n");
      out.write("        \n");
      out.write("           \n");
      out.write("            <div style=\"color:white;font-size: 15px;\">\n");
      out.write("                 <table align=\"center\" cellpadding=\"10\">\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\"><img src=\"../Assets/Files/Userphoto/");
      out.print(rs.getString("user_photo"));
      out.write("\" height=\"120\" width=\"120\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("user_name"));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Contact</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("user_contact"));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("user_email"));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("user_address"));
      out.write("</td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                ");

                }
                
      out.write(" \n");
      out.write("        \t       \n");
      out.write("            </table>\n");
      out.write("        </form>\n");
      out.write("                </body><br><br><br><br><br><br>\n");
      out.write("</html></div>\n");
      out.write("                </div>\n");
      out.write("          </div>\n");
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