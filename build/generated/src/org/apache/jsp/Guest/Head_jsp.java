package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Head_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

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
      out.write("\t\t\t\t\t\t<!-- menu start -->\n");
      out.write("\t\t\t\t\t\t<nav class=\"main-menu\">\n");
      out.write("\t\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"#\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li><a href=\"about.html\">Profile</a><li>\n");
      out.write("                                                                <li><a href=\"news.html\">Search</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t<li> <a href=\"contact.html\">Login</a></li>\n");
      out.write("                                                        </ul>\n");
      out.write("\t\t\t\t\t\t</nav>\n");
      out.write("\t\t\t\t\t\t<a class=\"mobile-show search-bar-icon\" href=\"#\"><i class=\"fas fa-search\"></i></a>\n");
      out.write("\t\t\t\t\t\t<div class=\"mobile-menu\"></div>\n");
      out.write("\t\t\t\t\t\t<!-- menu end -->\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("        <!-- menu start -->");
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
