package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class NurseryVerification_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Nursery Verification</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");

            if (request.getParameter("aid") != null) {
                String up = "update tbl_nursery set nursery_status='1' where nursery_id='" + request.getParameter("aid") + "'";
                if (con.executeCommand(up)) {
                    response.sendRedirect("NurseryVerification.jsp");
                }
            }

            if (request.getParameter("rid") != null) {
                String up = "update tbl_nursery set nursery_status='2' where nursery_id='" + request.getParameter("rid") + "'";
                if (con.executeCommand(up)) {
                    response.sendRedirect("NurseryVerification.jsp");
                }
            }

        
      out.write("\n");
      out.write("        <div align=\"center\">\n");
      out.write("            <h2>New Nursery</h2>\n");
      out.write("            <table border=\"2\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Logo</th>\n");
      out.write("                    <th>Proof</th>\n");
      out.write("                    <th>Location</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>  \n");
      out.write("                ");
                    String selqry = "select * from tbl_nursery n inner join tbl_location l on l.location_id=n.location_id where n.nursery_status='0'";
                    ResultSet rs = con.selectCommand(selqry);
                    int i = 0;
                    while (rs.next()) {
                        i++;
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("nursery_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("nursery_contact"));
      out.write("</td>   \n");
      out.write("                    <td>");
      out.print(rs.getString("nursery_logo"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("nursery_proof"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("location_name"));
      out.write("</td>\n");
      out.write("                    <td><a href=\"NurseryVerification.jsp?aid=");
      out.print(rs.getString("nursery_id"));
      out.write("\">Accept</a>|\n");
      out.write("                        <a href=\"NurseryVerification.jsp?rid=");
      out.print(rs.getString("nursery_id"));
      out.write("\">Reject</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("            <h2>Accepted Nursery</h2>\n");
      out.write("            <table border=\"2\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Logo</th>\n");
      out.write("                    <th>Proof</th>\n");
      out.write("                    <th>Location</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>  \n");
      out.write("                ");
                    String selqry1 = "select * from tbl_nursery n inner join tbl_location l on l.location_id=n.location_id where n.nursery_status='1'";
                    ResultSet rs1 = con.selectCommand(selqry1);
                    int i1 = 0;
                    while (rs1.next()) {
                        i1++;
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i1);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("nursery_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("nursery_contact"));
      out.write("</td>   \n");
      out.write("                    <td>");
      out.print(rs1.getString("nursery_logo"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("nursery_proof"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("location_name"));
      out.write("</td>\n");
      out.write("                    <td><a href=\"NurseryVerification.jsp?rid=");
      out.print(rs1.getString("nursery_id"));
      out.write("\">Reject</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

                    }
                
      out.write("\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("            <h2>Rejected Nursery</h2>\n");
      out.write("            <table border=\"2\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Name</th>\n");
      out.write("                    <th>Contact</th>\n");
      out.write("                    <th>Logo</th>\n");
      out.write("                    <th>Proof</th>\n");
      out.write("                    <th>Location</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>  \n");
      out.write("                ");
                    String selqry2 = "select * from tbl_nursery n inner join tbl_location l on l.location_id=n.location_id where n.nursery_status='2'";
                    ResultSet rs2 = con.selectCommand(selqry2);
                    int i2 = 0;
                    while (rs2.next()) {
                        i2++;
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i2);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("nursery_name"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("nursery_contact"));
      out.write("</td>   \n");
      out.write("                    <td>");
      out.print(rs2.getString("nursery_logo"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("nursery_proof"));
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs2.getString("location_name"));
      out.write("</td>\n");
      out.write("                    <td><a href=\"NurseryVerification.jsp?aid=");
      out.print(rs2.getString("nursery_id"));
      out.write("\">Accept</a>|\n");
      out.write("                    </td>                </tr>\n");
      out.write("                    ");

                        }
                    
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
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
