package org.apache.jsp.Guest;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class User_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Guest/Head.jsp");
    _jspx_dependants.add("/Guest/Foot.jsp");
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
      DB.ConnectionClass con = null;
      synchronized (_jspx_page_context) {
        con = (DB.ConnectionClass) _jspx_page_context.getAttribute("con", PageContext.PAGE_SCOPE);
        if (con == null){
          con = new DB.ConnectionClass();
          _jspx_page_context.setAttribute("con", con, PageContext.PAGE_SCOPE);
          out.write(' ');
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
      out.write("                                                            <li class=\"current-list-item\"><a href=\"#\">Home</a></li>\n");
      out.write("                                                            <li><a href=\"about.html\">About</a></li> \n");
      out.write("                                                            <li><a href=\"shop.html\">Sign Up</a>\n");
      out.write("\t\t\t\t\t\t\t\t\t<ul class=\"sub-menu\">\n");
      out.write("\t\t\t\t\t\t\t\t\t\t<li><a href=\"Guest/User.jsp\">Customer</a></li>\n");
      out.write("                                                                                <li><a href=\"Guest/NurseryRegistration.jsp\">Seller</a></li>\n");
      out.write("                                                                                <li><a href=\"Guest/AgentRegistration.jsp\">Agent</a></li>\n");
      out.write("\t\t\t\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t\t\t\t</li>\n");
      out.write("                                                            <li><a href=\"Login.jsp\">Login</a></li>\n");
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
      out.write("        <title>UserRegistration</title>\n");
      out.write("        <style>\n");
      out.write("            .bg-img {\n");
      out.write("                background-image: url(\"../Assets/Templates/Main/assets/img/hero-bg.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("            }\n");
      out.write("            .text-box {\n");
      out.write("                background-color: transparent;\n");
      out.write("                width: 215px;\n");
      out.write("                color:gray;\n");
      out.write("            }\n");
      out.write("           \n");
      out.write("        </style>\n");
      out.write("    </head>                                                                 \n");
      out.write("    <body>\n");
      out.write("            <div class=\"bg-img\">\n");
      out.write("                <div style=\"background-color: #000000b8 !important;\">\n");
      out.write("            <form method=\"POST\" enctype=\"multipart/form-data\" action=\"../Assets/Actionpages/UserUploadAction.jsp\">\n");
      out.write("            <br><br><br><br><br><br><br>\n");
      out.write("            <div style=\"color:white;font-size: 15px;\">\n");
      out.write("                 <table align=\"center\" cellpadding=\"10\">\n");
      out.write("                <tr>\n");
      out.write("                    <td>Name</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input required type=\"text\" name=\"txtname\" class=\"text-box\" placeholder=\"Enter Name\" title=\"Name Allows Only Alphabets,Spaces and First Letter Must Be Capital Letter\" pattern=\"^[A-Z]+[a-zA-Z ]*$\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Contact</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input  required type=\"text\" name=\"txtcontact\" class=\"text-box\" placeholder=\"Enter Contact No\" title=\"Phone number with 7-9 and remaining 9 digit with 0-9\" pattern=\"[7-9]{1}[0-9]{9}\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>DOB</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input  required type=\"date\" name=\"txtdob\" placeholder=\"Enter DOB\" class=\"text-box\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Email</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input  required type=\"email\" name=\"txtemail\" placeholder=\"Enter Email-Id\" class=\"text-box\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Gender</td>\n");
      out.write("                    <td>\n");
      out.write("                        Male<input required type=\"radio\" name=\"txtgender\">\n");
      out.write("                        Female<input type=\"radio\" name=\"txtgender\">\n");
      out.write("                        Others<input type=\"radio\" name=\"txtgender\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Photo</td>\n");
      out.write("                    <td align=\"center\">\n");
      out.write("                        <input  required type=\"file\" name=\"txtphoto\" class=\"text-box\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Address</td>\n");
      out.write("                    <td>\n");
      out.write("                        <textarea required name=\"txtadd\" class=\"text-box\"  placeholder=\"Enter Address\" rows=\"3\" cols=\"10\"></textarea>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input  required type=\"password\"class=\"text-box\" name=\"txtpsswd\" placeholder=\"Enter Password\" pattern=\"(?=.*\\d)(?=.*[a-z])(?=.*[A-Z]).{8,}\" title=\"Must contain at least one number and one uppercase and lowercase letter, and at least 8 or more characters\" >\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Confirm Password</td>\n");
      out.write("                    <td>\n");
      out.write("                        <input  required type=\"password\" class=\"text-box\" name=\"txtpsswd1\" placeholder=\"Re-Enter Password\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>  \n");
      out.write("                <tr>\n");
      out.write("                    <td>Location</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select required=\"\"  name=\"selloc\" onchange=\"getPlace(this.value)\" class=\"text-box\">\n");
      out.write("                            <option>--select location--</option>\n");
      out.write("                            ");

                                String selqry = "select * from tbl_location";
                                ResultSet rs = con.selectCommand(selqry);
                                while (rs.next()) {
                            
      out.write("\n");
      out.write("                            <option value=\"");
      out.print(rs.getString("location_id"));
      out.write('"');
      out.write('>');
      out.print(rs.getString("location_name"));
      out.write("</option>\n");
      out.write("                            ");

                                }
                            
      out.write("\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td>Localplace</td>\n");
      out.write("                    <td>\n");
      out.write("                        <select required name=\"ddlloca\"class=\"text-box\" id=\"selplace\" required>\n");
      out.write("                            <option>--select localplace--</option>\n");
      out.write("                        </select>\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("                <tr>\n");
      out.write("                    <td colspan=\"2\" align=\"center\">\n");
      out.write("                        <input type=\"submit\" name=\"txtsave\" value=\"Save\">\n");
      out.write("                        <input type=\"reset\" name=\"txtcancel\" value=\"Cancel\">\n");
      out.write("                    </td>\n");
      out.write("                </tr>\n");
      out.write("            </table>\n");
      out.write("            </div>\n");
      out.write("                        <br><br>\n");
      out.write("        </form>\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("    <script src=\"../Assets/jQuery/jQuery.js\"></script>         \n");
      out.write("    <script>\n");
      out.write("                            function getPlace(did)\n");
      out.write("                            {\n");
      out.write("\n");
      out.write("                                //  alert(did);  \n");
      out.write("                                $.ajax({url: \"../Assets/AjaxPages/Ajaxplaces.jsp?pid=\" + did,\n");
      out.write("                                    success: function(result) {\n");
      out.write("                                        $(\"#selplace\").html(result);\n");
      out.write("                                    }\n");
      out.write("                                })\n");
      out.write("                            }\n");
      out.write("\n");
      out.write("    </script>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write(" ");
      out.write("<!-- footer -->\n");
      out.write("\t<div class=\"footer-area\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-lg-3 col-md-6\">\n");
      out.write("\t\t\t\t\t<div class=\"footer-box about-widget\">\n");
      out.write("\t\t\t\t\t\t<h2 class=\"widget-title\">About us</h2>\n");
      out.write("                                                <p>This platform fosters direct engagement with users through a user-friendly interface.Customers can explore the plant catalog, place orders, and receive timely updates on their purchases.</p>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-lg-3 col-md-6\">\n");
      out.write("\t\t\t\t\t<div class=\"footer-box get-in-touch\">\n");
      out.write("\t\t\t\t\t\t<h2 class=\"widget-title\">Get in Touch</h2>\n");
      out.write("\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t<li>Vazhakulam,Kerala</li>\n");
      out.write("\t\t\t\t\t\t\t<li>proplantec@gmail.com</li>\n");
      out.write("\t\t\t\t\t\t\t<li>9872315562</li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-lg-3 col-md-6\">\n");
      out.write("\t\t\t\t\t<div class=\"footer-box pages\">\n");
      out.write("\t\t\t\t\t\t<h2 class=\"widget-title\">Pages</h2>\n");
      out.write("\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"index.html\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"about.html\">About</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"NurseryList.jsp\">Available Nursery</a></li>\n");
      out.write("                                                        \n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-lg-3 col-md-6\">\n");
      out.write("\t\t\t\t\t<div class=\"footer-box subscribe\">\n");
      out.write("\t\t\t\t\t\t<h2 class=\"widget-title\">Subscribe</h2>\n");
      out.write("\t\t\t\t\t\t<p>Subscribe to our mailing list to get the latest updates.</p>\n");
      out.write("\t\t\t\t\t\t<form action=\"index.html\">\n");
      out.write("\t\t\t\t\t\t\t<input type=\"email\" placeholder=\"Email\">\n");
      out.write("\t\t\t\t\t\t\t<button type=\"submit\"><i class=\"fas fa-paper-plane\"></i></button>\n");
      out.write("\t\t\t\t\t\t</form>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end footer -->\n");
      out.write("\t\n");
      out.write("\t<!-- copyright -->\n");
      out.write("\t<div class=\"copyright\">\n");
      out.write("\t\t<div class=\"container\">\n");
      out.write("\t\t\t<div class=\"row\">\n");
      out.write("\t\t\t\t<div class=\"col-lg-6 col-md-12\">\n");
      out.write("\t\t\t\t\t<p>Copyrights &copy; ProPlantec<a href=\"https://imransdesign.com/\"></a>  All Rights Reserved.</p>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t\t<div class=\"col-lg-6 text-right col-md-12\">\n");
      out.write("\t\t\t\t\t<div class=\"social-icons\">\n");
      out.write("\t\t\t\t\t\t<ul>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" target=\"_blank\"><i class=\"fab fa-facebook-f\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" target=\"_blank\"><i class=\"fab fa-twitter\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" target=\"_blank\"><i class=\"fab fa-instagram\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" target=\"_blank\"><i class=\"fab fa-linkedin\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\" target=\"_blank\"><i class=\"fab fa-dribbble\"></i></a></li>\n");
      out.write("\t\t\t\t\t\t</ul>\n");
      out.write("\t\t\t\t\t</div>\n");
      out.write("\t\t\t\t</div>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t<!-- end copyright -->\n");
      out.write("\t\n");
      out.write("\t<!-- jquery -->\n");
      out.write("\t<script src=\"../Assets/Templates/Main/assets/js/jquery-1.11.3.min.js\"></script>\n");
      out.write("\t<!-- bootstrap -->\n");
      out.write("\t<script src=\"../Assets/Templates/Main/assets/bootstrap/js/bootstrap.min.js\"></script>\n");
      out.write("\t<!-- count down -->\n");
      out.write("\t<script src=\"../Assets/Templates/Main/assets/js/jquery.countdown.js\"></script>\n");
      out.write("\t<!-- isotope -->\n");
      out.write("\t<script src=\"../Assets/Templates/Main/assets/js/jquery.isotope-3.0.6.min.js\"></script>\n");
      out.write("\t<!-- waypoints -->\n");
      out.write("\t<script src=\"../Assets/Templates/Main/assets/js/waypoints.js\"></script>\n");
      out.write("\t<!-- owl carousel -->\n");
      out.write("\t<script src=\"../Assets/Templates/Main/assets/js/owl.carousel.min.js\"></script>\n");
      out.write("\t<!-- magnific popup -->\n");
      out.write("\t<script src=\"../Assets/Templates/Main/assets/js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("\t<!-- mean menu -->\n");
      out.write("\t<script src=\"../Assets/Templates/Main/assets/js/jquery.meanmenu.min.js\"></script>\n");
      out.write("\t<!-- sticker js -->\n");
      out.write("\t<script src=\"../Assets/Templates/Main/assets/js/sticker.js\"></script>\n");
      out.write("\t<!-- main js -->\n");
      out.write("\t<script src=\"../Assets/Templates/Main/assets/js/main.js\"></script>\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("</html>");
      out.write('\n');
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