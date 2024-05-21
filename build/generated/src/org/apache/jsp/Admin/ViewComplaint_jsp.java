package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ViewComplaint_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1 align=\"center\">User Complaint </h1>\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("            <tr>\n");
      out.write("                <td>Sl.No</td>\n");
      out.write("                <td>User Name</td> \n");
      out.write("              \n");
      out.write("                <td>Date</td>\n");
      out.write("                <td>Complaint content</td>\n");
      out.write("                <td>Action</td>\n");
      out.write("            </tr>\n");
      out.write("            ");
 int i = 0;
                String seleQry = "select * from tbl_complaint f inner join tbl_user u on f.user_id=u.user_id";
                ResultSet res = con.selectCommand(seleQry);
                while (res.next()) {
                    i++;
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td align=\"center\">");
      out.print(i);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(res.getString("user_name"));
      out.write("</td>\n");
      out.write("               \n");
      out.write("                <td>");
      out.print(res.getString("complaint_date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(res.getString("complaint_content"));
      out.write("</td>\n");
      out.write("                <td><a href=\"ComplaintReply.jsp?cid=");
      out.print(res.getString("Complaint_id"));
      out.write("\">Reply</a><br></td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("        </table>\n");
      out.write("                <h1 align=\"center\">Agent Complaint </h1>\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("            <tr>\n");
      out.write("                <td>Sl.No</td>\n");
      out.write("                <td>Agent Name</td> \n");
      out.write("                <td>Date</td>\n");
      out.write("                <td>Complaint content</td>\n");
      out.write("                <td>Action</td>\n");
      out.write("            </tr>\n");
      out.write("            ");
 int j = 0;
                String selQry = "select * from tbl_complaint f inner join tbl_agenct u on f.agenct_id=u.agent_id";
                ResultSet rs = con.selectCommand(selQry);
                while (rs.next()) {
                    j++;
            
      out.write("\n");
      out.write("            <tr>\n");
      out.write("                <td align=\"center\">");
      out.print(j);
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("agent_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("complaint_date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(rs.getString("complaint_content"));
      out.write("</td>\n");
      out.write("                <td><a href=\"ComplaintReply.jsp?cid=");
      out.print(rs.getString("Complaint_id"));
      out.write("\">Reply</a><br></td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("        </table>\n");
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
