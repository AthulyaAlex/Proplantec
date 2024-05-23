package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class ComplaintReply_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(1);
    _jspx_dependants.add("/Admin/Head.jsp");
  }

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
      out.write('\n');
      out.write('\n');
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("<head>\n");
      out.write("\t<meta charset=\"UTF-8\">\n");
      out.write("\t<meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("\t<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("\t<meta name=\"description\" content=\"Responsive Bootstrap4 Shop Template, Created by Imran Hossain from https://imransdesign.com/\">\n");
      out.write("\n");
      out.write("\t<!-- title -->\n");
      out.write("\t<title>ProPlantec</title>\n");
      out.write("\n");
      out.write("\t<!-- favicon -->\n");
      out.write("\t<link rel=\"shortcut icon\" type=\"image/png\" href=\"../Assets/Templates/Main/assets/img/favicon.png\">\n");
      out.write("\t<!-- google font -->\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css?family=Open+Sans:300,400,700\" rel=\"stylesheet\">\n");
      out.write("\t<link href=\"https://fonts.googleapis.com/css?family=Poppins:400,700&display=swap\" rel=\"stylesheet\">\n");
      out.write("\t<!-- fontawesome -->\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/Templates/Main/assets/css/all.min.css\">\n");
      out.write("\t<!-- bootstrap -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../Assets/Templates/Main/assets/bootstrap/css/bootstrap.min.css\">\n");
      out.write("\t<!-- owl carousel -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../Assets/Templates/Main/assets/css/owl.carousel.css\">\n");
      out.write("\t<!-- magnific popup -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../Assets/Templates/Main/assets/css/magnific-popup.css\">\n");
      out.write("\t<!-- animate css -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../Assets/Templates/Main/assets/css/animate.css\">\n");
      out.write("\t<!-- mean menu css -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../Assets/Templates/Main/assets/css/meanmenu.min.css\">\n");
      out.write("\t<!-- main style -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../Assets/Templates/Main/assets/css/main.css\">\n");
      out.write("\t<!-- responsive -->\n");
      out.write("\t<link rel=\"stylesheet\" href=\"../Assets/Templates/Main/assets/css/responsive.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"../Assets/Templates/form.css\">\n");
      out.write("        \n");
      out.write("        <style>\n");
      out.write("            .top-header-area {\n");
      out.write("                background-color: transparent;\n");
      out.write("            }\n");
      out.write("        </style>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t\n");
      out.write("\t<!--PreLoader-->\n");
      out.write("    <div class=\"loader\">\n");
      out.write("        <div class=\"loader-inner\">\n");
      out.write("            <div class=\"circle\"></div>\n");
      out.write("        </div>\n");
      out.write("    </div>\n");
      out.write("    <!--PreLoader Ends-->\n");
      out.write("\t\n");
      out.write("\t<!-- header -->\n");
      out.write("\t<div class=\"top-header-area\" id=\"sticker\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-lg-12 col-sm-12 text-center\">\n");
      out.write("\t\t\t\t\t<div class=\"main-menu-wrap\">\n");
      out.write("\t\t\t\t\t\t<!-- logo -->\n");
      out.write("\t\t\t\t\t\t<div class=\"site-logo\">\n");
      out.write("\t\t\t\t\t\t\t<a href=\"../index.html\">\n");
      out.write("                                                            <img src=\"../Assets/Templates/Main/assets/img/logo.png\" width=\"800\" alt=\"\">\n");
      out.write("\t\t\t\t\t\t\t</a>\n");
      out.write("\t\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t\t\t<!-- logo -->\n");
      out.write("\n");
      out.write("\t\t\t\t\t\t<!-- menu start -->\n");
      out.write("\t\t\t\t\t\t<nav class=\"main-menu\">\n");
      out.write("\t\t\t\t\t\t\t<ul>\n");
      out.write("                                                            <li class=\"current-list-item\"><a href=\"../index.html\">Home</a></li>\n");
      out.write("                                                            <li><a href=\"\">Verifications</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"sub-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"AgentVerification.jsp\">Agent</a></li>\n");
      out.write("                                                                                <li><a href=\"NurseryVerification.jsp\">Nursery</a></li>\n");
      out.write("                                                                        </ul>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("                                                            <li><a href=\"\">Administrations</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"sub-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"Location.jsp\">Location</a></li>\n");
      out.write("                                                                                <li><a href=\"LocalPlace.jsp\">Local Place</a></li>\n");
      out.write("                                                                                <li><a href=\"Category.jsp\">Category</a></li>\n");
      out.write("                                                                                <li><a href=\"subcategory.jsp\">Sub Category</a></li>\n");
      out.write("                                                                                <li><a href=\"Assign.jsp\">Assigning Agency</a></li>\n");
      out.write("                                                                                <li><a href=\"ChangePassword.jsp\">Change Password</a></li>\n");
      out.write("                                                                        </ul>\n");
      out.write("\t\t\t\t\t\t\t\t</li>   \n");
      out.write("                                                                <li><a href=\"\">Availables</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"sub-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"AgencyList.jsp\">Available Agency</a></li>\n");
      out.write("                                                                                <li><a href=\"NurseryList.jsp\">Available Nursery</a></li>\n");
      out.write("                                                                        </ul>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("                                                                <li><a href=\"\">Complaints</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"sub-menu\">\n");
      out.write("                                                                                <li><a href=\"ViewComplaint.jsp\">View Complaint</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"ComplaintReply.jsp\">Complaint Reply</a></li>\n");
      out.write("                                                                        </ul>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("                                                           \n");
      out.write("\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t\t\t<a class=\"mobile-show search-bar-icon\" href=\"#\"><i class=\"fas fa-search\"></i></a>\n");
      out.write("\t\t\t\t\t\t<div class=\"mobile-menu\"></div>\n");
      out.write("\t\t\t\t\t\t<!-- menu end -->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end header -->");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("        <style>\n");
      out.write("/*            .bg-img {\n");
      out.write("                background-image: url(\"../Assets/Templates/Main/assets/img/hero-bg.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("            }*/\n");
      out.write("                 body {\n");
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
      out.write("        </style>\n");
      out.write("        \n");
      out.write("    </head>\n");
      out.write("    <body>  \n");
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
                    String up= "update tbl_complaint set complaint_status='1' where complaint_id ='"+request.getParameter("cid")+"'"  ;
                     if(con.executeCommand(up)){
                         
                   
                    
      out.write("\n");
      out.write("                <script type=\"text/javascript\" >\n");
      out.write("                    alert(\"Complaint Replied\");\n");
      out.write("                    setTimeout(function() {\n");
      out.write("                    window.location.href = 'HomePage.jsp'\n");
      out.write("                    }, 1000);\n");
      out.write("                </script>\n");
      out.write("            ");

                                           
            }
             else{
                     String up1= "update tbl_complaint set complaint_status='0' where complaint_id ='"+request.getParameter("cid")+"'"  ;
                     con.executeCommand(up1);
                    }
                }     
            }    
            
      out.write("\n");
      out.write("        <form method=\"post\" >\n");
      out.write("        <table border=\"1\" align=\"center\">\n");
      out.write("        <tr>\n");
      out.write("            <td>Complaint Reply</td>\n");
      out.write("            <td>\n");
      out.write("                <textarea name=\"complaint_reply\" rows=\"6\" cols=\"20\"></textarea>\n");
      out.write("            </td>\n");
      out.write("        </tr>\n");
      out.write("        <tr>\n");
      out.write("            <td colspan=\"2\" align=\"center\"><input type=\"submit\" name=\"btn_submit\" value=\"Register\">&nbsp&nbsp<input type=\"reset\" name=\"btn_reset\" value=\"Reset\"</td>\n");
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
