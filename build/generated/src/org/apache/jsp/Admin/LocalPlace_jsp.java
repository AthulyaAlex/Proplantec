package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class LocalPlace_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>LocalPlace</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
                if(request.getParameter("txtsave")!=null)
                {
                   if(request.getParameter("txtid").equals(""))
                   {
                    String insqry="insert into tbl_localplace(localplace_name,location_id)values('"+request.getParameter("txtname")+"','"+request.getParameter("ddlloc")+"')";
                    con.executeCommand(insqry);
                   }
                   else{
                       String upQry="update tbl_localplace set localplace_name='"+request.getParameter("txtname")+"', location_id='"+request.getParameter("ddlloc")+"' where localplace_id='"+request.getParameter("txtid")+"'";
                       con.executeCommand(upQry);
                       response.sendRedirect("LocalPlace.jsp");
                   }
                    
                }  
                if(request.getParameter("did")!=null)
                {
                   String delqry="delete from tbl_localplace where localplace_id='"+request.getParameter("did")+"'";
                   con.executeCommand(delqry);
                   response.sendRedirect("LocalPlace.jsp");
                }
                String editid="";
                String editname="";
                   String editlid="";
                if(request.getParameter("eid")!=null)
                {
                   String selQ="select * from tbl_localplace where localplace_id='"+request.getParameter("eid")+"'";
                   ResultSet rs2=con.selectCommand(selQ);
                   rs2.next();
                   editid=rs2.getString("localplace_id");
                   editname=rs2.getString("localplace_name");
                   editlid=rs2.getString("location_id");
                }
        
      out.write("\n");
      out.write("        <form method=\"post\">\n");
      out.write("            <table border=\"3\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Location</td>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddlloc\">\n");
      out.write("                            <option>--select location--</option>\n");
      out.write("                            \n");
      out.write("                            ");

                                String selqry="select * from tbl_location";      
                                ResultSet rs=con.selectCommand(selqry);
                                while(rs.next())
                                {
                                  
      out.write("\n");
      out.write("                                  <option value=\"");
      out.print(rs.getString("location_id"));
      out.write('"');
      out.write(' ');
 if(rs.getString("location_id").equals(editlid)){ out.print("Selected") ; } 
      out.write('>');
      out.print(rs.getString("location_name"));
      out.write("</option>\n");
      out.write("                                  \n");
      out.write("                                  \n");
      out.write("                                  ");

                                    
                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </td>    \n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>LocalPlace</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input type=\"text\" name=\"txtname\" placeholder=\"Enter localplace name\"value=\"");
      out.print(editname);
      out.write("\">\n");
      out.write("                        <input type=\"hidden\" name=\"txtid\" value=\"");
      out.print(editid);
      out.write("\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"txtsave\" value=\"Save\">\n");
      out.write("                        <input type=\"reset\" name=\"txtcancel\" value=\"Cancel\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("             <table border=\"2\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>location</th>\n");
      out.write("                    <th>localplace</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("                ");

                 String selqr="select * from tbl_localplace lp inner join tbl_location l on l.location_id=lp.location_id";      
                ResultSet rs1=con.selectCommand(selqr);
                int i=0;
                while(rs1.next())
                {
                    i++;
                
      out.write("\n");
      out.write("            \n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs1.getString("location_name"));
      out.write("</td>\n");
      out.write("                     <td>");
      out.print(rs1.getString("localplace_name"));
      out.write("</td>\n");
      out.write("                     <td><a href=\"LocalPlace.jsp?did=");
      out.print(rs1.getString("localplace_id"));
      out.write("\">Delete</a>\n");
      out.write("                         | <a href=\"LocalPlace.jsp?eid=");
      out.print(rs1.getString("localplace_id"));
      out.write("\">Edit</a></td>\n");
      out.write("                </tr>\n");
      out.write("               \n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("             </table>\n");
      out.write("            \n");
      out.write("        </form>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("  \n");
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
