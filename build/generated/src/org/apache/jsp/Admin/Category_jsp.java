package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Category_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("    \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Category</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
               if(request.getParameter("btncat1")!=null)
                {
                    if(request.getParameter("txt_id").equals(""))
                    {
                    String insqry="insert into tbl_category(category_name)values('"+request.getParameter("txtentercat")+"')";
                    con.executeCommand(insqry);
                    }
                    else
                    {
                        String upqry="update tbl_category set category_name='"+request.getParameter("txtentercat")+"'where category_id='"+request.getParameter("txt_id")+"'";
                        con.executeCommand(upqry);
                        response.sendRedirect("Category.jsp");
                    }
                }
                if(request.getParameter("did")!=null)
                {
                   String delqry="delete from tbl_category where category_id='"+request.getParameter("did")+"'";
                   con.executeCommand(delqry);
                   response.sendRedirect("Category.jsp");
                }
                String editid="";
                String editname="";
                if(request.getParameter("eid")!=null)
                {
                    String selqry1="select* from tbl_category where category_id='"+request.getParameter("eid")+"'";
                    ResultSet rs1=con.selectCommand(selqry1);
                    rs1.next();
                    editid=rs1.getString("category_id");
                    editname=rs1.getString("category_name");
                }
                      
        
      out.write("   \n");
      out.write("        \n");
      out.write("        <form name=\"frmcat\" method=\"post\">\n");
      out.write("            <table border=\"2\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td><input type=\"text\" value=\"");
      out.print(editname);
      out.write("\" required pattern=\"[A-Z]||[a-z]{a,}\" name=\"txtentercat\">\n");
      out.write("                        <input type=\"hidden\" value=\"");
      out.print(editid);
      out.write("\" name=\"txt_id\"></td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"btncat1\" value=\"save\" >     \n");
      out.write("                        <input type=\"submit\" name=\"btncat2\" value=\"cancel\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            <table border=\"2\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Category</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

            String selqry="select * from tbl_category";      
            ResultSet rs=con.selectCommand(selqry);
            int i=0;
            while(rs.next())
            {
                i++;
                
      out.write("\n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("category_name"));
      out.write("</td>\n");
      out.write("                    <td><a href=\"Category.jsp?did=");
      out.print(rs.getString("category_id"));
      out.write("\">Delete</a>\n");
      out.write("                        |<a href=\"Category.jsp?eid=");
      out.print(rs.getString("category_id"));
      out.write("\">Edit</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

            }    
                
      out.write("\n");
      out.write("            </table>    \n");
      out.write("                \n");
      out.write("        </form>        \n");
      out.write("         \n");
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
