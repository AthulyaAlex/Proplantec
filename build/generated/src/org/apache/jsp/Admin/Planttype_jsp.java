package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Planttype_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("     \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Planttype</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
 
                if(request.getParameter("btnpla1")!=null)
                {
                    if(request.getParameter("txt_id").equals(""))
                    {
                    String insqry="insert into tbl_planttype(planttype_name)values('"+request.getParameter("txtenterplant")+"')";
                    con.executeCommand(insqry);
                    }
                    else
                    {
                        String upqry="update tbl_planttype set planttype_name='"+request.getParameter("txtenterplant")+"'where planttype_id='"+request.getParameter("txt_id")+"'";
                        con.executeCommand(upqry);
                        response.sendRedirect("Planttype.jsp");
                    }
                }
                if(request.getParameter("did")!=null)
                {
                   String delqry="delete from tbl_planttype where planttype_id='"+request.getParameter("did")+"'";
                   con.executeCommand(delqry);
                   response.sendRedirect("Planttype.jsp");
                }
                String editid="";
                String editname="";
                if(request.getParameter("eid")!=null)
                {
                    String selqry1="select* from tbl_planttype where planttype_id='"+request.getParameter("eid")+"'";
                    ResultSet rs1=con.selectCommand(selqry1);
                    rs1.next();
                    editid=rs1.getString("planttype_id");
                    editname=rs1.getString("planttype_name");
                }
            
      out.write("   \n");
      out.write("        \n");
      out.write("        <form name=\"frmplant\" method=\"post\">\n");
      out.write("            <table border=\"2\" align=\"center\">\n");
      out.write("                <tr>                                                            \n");
      out.write("                    <td>Category</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select name=\"ddlcat\" onchange=\"getPlace(this.value)\">\n");
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
      out.write("                        <select name=\"ddlsub\" id=\"ddlsub\">\n");
      out.write("                            <option>--select subcategory--</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("          <td> planttype name</td>\n");
      out.write("          <td><input type=\"text\" value=\"");
      out.print(editname);
      out.write("\" required pattern=\"[A-Z]||[a-z]{a,}\" name=\"txtenterplant\">\n");
      out.write("                <input type=\"hidden\" value=\"");
      out.print(editid);
      out.write("\" name=\"txt_id\"></td>\n");
      out.write("                </tr>\n");
      out.write("                \n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"btnpla1\" value=\"save\" >     \n");
      out.write("                        <input type=\"submit\" name=\"btndpla2\" value=\"cancel\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                </table>\n");
      out.write("            <table border=\"2\" align=\"center\">\n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Planttype</th>\n");
      out.write("                    <th>Action</th>\n");
      out.write("                </tr>\n");
      out.write("                ");
String selqry="select * from tbl_planttype";      
                ResultSet rs=con.selectCommand(selqry);
                int i=0;
                while(rs.next())
                {
                    i++;
                
      out.write("\n");
      out.write("            \n");
      out.write("                <tr>\n");
      out.write("                    <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                    <td>");
      out.print(rs.getString("planttype_name"));
      out.write("</td>\n");
      out.write("                    <td><a href=\"Planttype.jsp?did=");
      out.print(rs.getString("planttype_id"));
      out.write("\">Delete</a>\n");
      out.write("                        | <a href=\"Planttype.jsp?eid=");
      out.print(rs.getString("planttype_id"));
      out.write("\">Edit</a></td>\n");
      out.write("                </tr>\n");
      out.write("                ");

            }    
                
      out.write("\n");
      out.write("            </table>\n");
      out.write("        </form>        \n");
      out.write("         \n");
      out.write("    </body>\n");
      out.write("    <script src=\"../Assets/jQuery/jQuery.js\"></script>         \n");
      out.write("    <script>\n");
      out.write("                              function getPlace(did)\n");
      out.write("                            {\n");
      out.write("                              \n");
      out.write("                           //  alert(did);  \n");
      out.write("                                $.ajax({url:\"../Assets/AjaxPages/Ajaxcategory.jsp?did=\" + did,\n");
      out.write("                                success: function(result){\n");
      out.write("                                    $(\"#ddlsub\").html(result);\n");
      out.write("                                }\n");
      out.write("                            })\n");
      out.write("                            }\n");
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
