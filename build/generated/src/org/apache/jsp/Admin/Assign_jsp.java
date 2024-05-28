package org.apache.jsp.Admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;

public final class Assign_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(2);
    _jspx_dependants.add("/Admin/Head.jsp");
    _jspx_dependants.add("/Admin/Foot.jsp");
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
      out.write("                                                            <li class=\"current-list-item\"><a href=\"HomePage.jsp\">Home</a></li>\n");
      out.write("                                                           \n");
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
      out.write("                                                                                <li><a href=\"Subcategory.jsp\">Sub Category</a></li>\n");
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
      out.write("                                                                <li><a href=\"../index.html\">Logout</a></li>\n");
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
      out.write("        <title>Bookings Display</title>\n");
      out.write("           <style>\n");
      out.write("/*            .bg-img {\n");
      out.write("                background-image: url(\"../Assets/Templates/Main/assets/img/hero-bg.jpg\");\n");
      out.write("                background-repeat: no-repeat;\n");
      out.write("                background-size: cover;\n");
      out.write("                background-image: center;\n");
      out.write("            }*/\n");
      out.write("             body {\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                background: linear-gradient(rgba(0, 0, 0, 0.5), rgba(0, 0, 0, 0.5)), url('../Assets/Templates/Main/assets/img/hero-bg.jpg') no-repeat center center/cover;\n");
      out.write("                min-height: 800px\n");
      out.write("            }\n");
      out.write("            .text-box {\n");
      out.write("                background-color: transparent;\n");
      out.write("                width: 215px;\n");
      out.write("                color:white;\n");
      out.write("            }\n");
      out.write("            </style>\n");
      out.write("            ");

        if (request.getParameter("id") != null) {
            String up = "update tbl_cart set cart_status='"+request.getParameter("status")+"' where cart_id='" + request.getParameter("id") + "'";

            if (con.executeCommand(up)) {
                response.sendRedirect("BookingsDisplay.jsp");
            }
        }


    
      out.write("\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("       <div class=\"bg-img\">\n");
      out.write("                <div style=\"background-color:  #26404387;min-height: 700px\">\n");
      out.write("                 <form method=\"post\">\n");
      out.write("                     <br><br><br><br><br><br><br>\n");
      out.write("            <div style=\"color:white;font-size: 15px;\">\n");
      out.write("                 <table align=\"center\" cellpadding=\"10\">       \n");
      out.write("        <div align=\"center\">\n");
      out.write("            <h2 style=\"color: white\">Bookings</h2><br>\n");
      out.write("         \n");
      out.write("        \n");
      out.write("                <tr>\n");
      out.write("                    <th>Sl.no</th>\n");
      out.write("                    <th>Product Name</th>\n");
      out.write("                    \n");
      out.write("                    <th>Quantity</th>\n");
      out.write("                    \n");
      out.write("                    <th>Action</th>\n");
      out.write("                    <th>Review</th>\n");
      out.write("                    \n");
      out.write("                </tr>\n");
      out.write("                    ");

                    String selbook="select * from tbl_booking b inner join tbl_cart c on c.booking_id=b.booking_id inner join tbl_product u on u.product_id=c.product_id inner join tbl_nursery n on n.nursery_id=u.nursery_id  where n.nursery_id='" + session.getAttribute("nid") + "' and b.booking_status>0 and b.payment_status='1'";
                    //out.println(selbook);
                    ResultSet rs = con.selectCommand(selbook);
                    int i = 0;
                    while (rs.next()) {
                         i++;
                           
                
      out.write("\n");
      out.write("                \n");
      out.write("                     <tr>\n");
      out.write("                       \n");
      out.write("                        <td>");
      out.print(i);
      out.write("</td>\n");
      out.write("                         <td>");
      out.print(rs.getString("product_name"));
      out.write("</td>\n");
      out.write("                        \n");
      out.write("                         <td>");
      out.print(rs.getString("cart_quantity"));
      out.write("</td>\n");
      out.write("                         <td>\n");
      out.write("                             ");

                             if(rs.getInt("cart_status")== 6)
                                {
                                   
      out.write("\n");
      out.write("                                   <a href=\"PaymentAgent.jsp?bid=");
      out.print(rs.getString("booking_id"));
      out.write("\">Payment</a>\n");
      out.write("\n");
      out.write("                                ");

                                }
                             //else if(rs.getInt("assign_status")== 1){
                                // out.println("Assigned");
                             //}
                             else
                             {
                                 String selQry= "select * from tbl_assignbooking where booking_id='"+rs.getString("booking_id")+"' ";
                                 ResultSet rs1 = con.selectCommand(selQry);
                                if(rs1.next())
                                {
                                out.println("Assigned");
                                }
                                else
                                {
                                
      out.write("\n");
      out.write("                                        <a href=\"AgencyList.jsp?bid=");
      out.print(rs.getString("booking_id"));
      out.write("\">ASSIGN</a>\n");
      out.write("                                       ");

                                      
                                }
                                                         
                             }
                             
      out.write("\n");
      out.write("                            \n");
      out.write("                     \n");
      out.write("                  ");
   
                 }
                     
      out.write("      \n");
      out.write("                     </tr>  </table><br><br><br>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
      out.write("\t\t\t\t\t\t\t<li><a href=\"../index.html\">Home</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"../about.html\">About</a></li>\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"NurseryList.jsp\">Available Nursery</a></li>\n");
      out.write("                                                        <li><a href=\"AgencyList.jsp\">Available Agency</a></li>\n");
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
