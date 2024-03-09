package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Login</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if (request.getParameter("btnlogin") != null) {
                String email=request.getParameter("txtemail");
                String password=request.getParameter("txtpsswd");
                
                String seluser="select * from tbl_user where user_email='"+email+"' and user_password='"+password+"' ";
                ResultSet rs = con.selectCommand(seluser);
                String selnursery="select * from tbl_nursery where nursery_email='"+email+"' and nursery_password='"+password+"' ";
                ResultSet rs1 = con.selectCommand(selnursery);
                String seladmin="select * from tbl_admin where admin_email='"+email+"' and admin_password='"+password+"' ";
                ResultSet rs2 = con.selectCommand(seladmin);
                String selagent="select * from tbl_agent where agent_email='"+email+"' and agent_password='"+password+"' ";
                ResultSet rs3 = con.selectCommand(selagent);
                if(rs.next())
                {
                    session.setAttribute("uid",rs.getString("user_id"));
                    session.setAttribute("uname",rs.getString("user_name"));
                    response.sendRedirect("../User/HomePage.jsp");
                    
                }
                else if(rs1.next())
                {
                    session.setAttribute("nid",rs1.getString("nursery_id"));
                    session.setAttribute("nname",rs1.getString("nursery_name"));
                    response.sendRedirect("../Nursery/HomePage.jsp");
                    
                }  
                else if(rs2.next())
                {
                    session.setAttribute("aid",rs2.getString("admin_id"));
                    session.setAttribute("aname",rs2.getString("admin_name"));
                    response.sendRedirect("../Admin/HomePage.jsp");
                    
                } 
                else if(rs3.next())
                {
                   session.setAttribute("gid",rs3.getString("agent_id"));
                   session.setAttribute("gname",rs3.getString("agent_name"));
                   response.sendRedirect("../DeliveryAgency/HomePage.jsp"); 
                }
                else
                {
                   
      out.write("\n");
      out.write("                   <script>\n");
      out.write("                       alert(\"Invalid Credentilas\")\n");
      out.write("                       window.Location=\"Login.jsp\"\n");
      out.write("                   </script>\n");
      out.write("                   ");

                }
            }
        
      out.write("\n");
      out.write("        <form method=\"POST\">\n");
      out.write("            <table border=\"2\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input  required type=\"email\" name=\"txtemail\" placeholder=\"Enter Email-Id\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input  required type=\"password\" name=\"txtpsswd\" placeholder=\"Enter Password\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}\" title=\"Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"btnlogin\" value=\"Login\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("        </form>  \n");
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
