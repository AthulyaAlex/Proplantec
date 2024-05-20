package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ComplaintReply_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        ");

            String seleQry = "select * from tbl_complaint f inner join tbl_user u on f.user_id=u.user_id where f.complaint_id ='" + request.getParameter("cid") + "'";
            ResultSet ress = con.selectCommand(seleQry);
            if (ress.next()) 
            {
        
      out.write("\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("            <tr>\n");
      out.write("                <td>User Name</td> \n");
      out.write("               \n");
      out.write("                <td>Date</td>\n");
      out.write("                <td>Complaint content</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(ress.getString("user_name"));
      out.write("</td>\n");
      out.write("               \n");
      out.write("                <td>");
      out.print(ress.getString("complaint_date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(ress.getString("complaint_content"));
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("        </table>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("            \n");
      out.write("            ");

            String seQry = "select * from tbl_complaint f inner join tbl_agent u on f.agent_id=u.agent_id where f.complaint_id ='" + request.getParameter("cid") + "'";
            ResultSet r = con.selectCommand(seQry);
            if (r.next()) 
            {
                    
      out.write("                \n");
      out.write("            <table border=\"1\" align=\"center\">\n");
      out.write("            <tr>\n");
      out.write("                <td>Agency Name</td> \n");
      out.write("                <td>Date</td>\n");
      out.write("                <td>Complaint content</td>\n");
      out.write("            </tr>\n");
      out.write("            <tr>\n");
      out.write("                <td>");
      out.print(r.getString("agent_name"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(r.getString("complaint_date"));
      out.write("</td>\n");
      out.write("                <td>");
      out.print(r.getString("complaint_content"));
      out.write("</td>\n");
      out.write("            </tr>\n");
      out.write("            ");

                }
            
      out.write("\n");
      out.write("            </table>\n");
      out.write("            ");

            if(request.getParameter("btn_submit")!=null)
            {
                String uq = "update tbl_complaint set complaint_reply='"+request.getParameter("complaint_reply")+"' where complaint_id = '"+request.getParameter("cid")+"'";
                if(con.executeCommand(uq)){ 
      out.write("\n");
      out.write("                <script type=\"text/javascript\" >\n");
      out.write("                    alert(\"Complaint Submitted\");\n");
      out.write("                    setTimeout(function() {\n");
      out.write("                    window.location.href = 'HomePage.jsp'\n");
      out.write("                    }, 1000);\n");
      out.write("                </script>\n");
      out.write("            ");

                                           }
            }   
            
      out.write("\n");
      out.write("        <form method=\"post\" >\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("        <tr>\n");
      out.write("        <td>Complaint Reply</td>\n");
      out.write("        <td>\n");
      out.write("        <textarea name=\"reply_content\" rows=\"6\" cols=\"20\"></textarea>\n");
      out.write("        </td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("        <td colspan=\"2\" align=\"center\"><input type=\"submit\" name=\"btn_submit\" value=\"Register\">&nbsp&nbsp<input type=\"reset\" name=\"btn_reset\" value=\"Reset\"</td>\n");
      out.write("        </tr>\n");
      out.write("        </table>\n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("        ");
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
