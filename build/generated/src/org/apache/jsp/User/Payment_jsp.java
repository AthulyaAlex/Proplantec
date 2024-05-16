package org.apache.jsp.User;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class Payment_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("       <!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("  <link rel=\"stylesheet\" href=\"styles.css\">\n");
      out.write("  <script type=\"text/javascript\" src=\"scripts.js\"></script>\n");
      out.write("  <script src=\"https://cdn.jsdelivr.net/gh/alpinejs/alpine@v2.x.x/dist/alpine.min.js\" defer></script>\n");
      out.write("  <style>\n");
      out.write("    @import url('https://fonts.googleapis.com/css2?family=DM+Sans:wght@500&family=Montserrat:wght@600&display=swap');\n");
      out.write("\n");
      out.write("*,\n");
      out.write("*::before,\n");
      out.write("*::after {\n");
      out.write("  margin: 0;\n");
      out.write("  padding: 0;\n");
      out.write("  box-sizing: border-box;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("body {\n");
      out.write("  background-color: #686868;\n");
      out.write("  display: flex;\n");
      out.write("justify-content: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".credit-card-form {\n");
      out.write("  margin-top: 4%;\n");
      out.write("  max-width: 400px;\n");
      out.write("  padding: 1em;\n");
      out.write("  border-radius: 10px;\n");
      out.write("  box-shadow: 0px 6px 10px rgba(255, 255, 255, 0.1);\n");
      out.write("  font-family: 'Montserrat', sans-serif;\n");
      out.write("  background-color: #dbdbdb;\n");
      out.write("  text-align: center;\n");
      out.write("  color: #424242;\n");
      out.write("  align-content: center;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".credit-card-form h2 {\n");
      out.write("  margin-bottom: 10%;\n");
      out.write("  font-size: 24px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".credit-card-form .form-group {\n");
      out.write("  margin-bottom: 15px;\n");
      out.write("\n");
      out.write("}\n");
      out.write("\n");
      out.write(".credit-card-form label {\n");
      out.write("  font-weight: bold;\n");
      out.write("  display: block;\n");
      out.write("  margin-bottom: 5px;\n");
      out.write("  color: #777;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".credit-card-form input[type=\"text\"],\n");
      out.write(".credit-card-form select {\n");
      out.write("  width: 100%;\n");
      out.write("  padding: 12px;\n");
      out.write("  border: 1px solid #ddd;\n");
      out.write("  border-radius: 1rem;\n");
      out.write("  font-size: 16px;\n");
      out.write("    font-family: 'Montserrat', sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".credit-card-form .form-row {\n");
      out.write("  display: flex;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".credit-card-form button[type=\"submit\"] {\n");
      out.write("  width: 100%;\n");
      out.write("  padding: 14px;\n");
      out.write("  background-color: #585858;\n");
      out.write("  color: #fff;\n");
      out.write("  border: none;\n");
      out.write("  border-radius: 1rem;\n");
      out.write("  cursor: pointer;\n");
      out.write("  font-size: 16px;\n");
      out.write("  transition: background-color 0.3s ease;\n");
      out.write("  font-family: 'Montserrat', sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".credit-card-form button[type=\"submit\"]:hover {\n");
      out.write("  background-color: #808080;\n");
      out.write("  color: #424242;\n");
      out.write("  font-family: 'Montserrat', sans-serif;\n");
      out.write("  box-shadow: 0px 6px 10px rgba(255, 255, 255, 0.1);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".credit-card-form button[type=\"submit\"]:focus {\n");
      out.write("  outline: none;\n");
      out.write("  font-family: 'Montserrat', sans-serif;\n");
      out.write("}\n");
      out.write("\n");
      out.write("p {\n");
      out.write("  color: white;\n");
      out.write("  margin-top: 6%;\n");
      out.write("  font-family: 'Montserrat', sans-serif;\n");
      out.write("  text-align: center;\n");
      out.write("  margin-bottom: 45px;\n");
      out.write("  font-size: 70%;\n");
      out.write("  text-shadow: 0 0 5px #cacaca; \n");
      out.write("}\n");
      out.write("\n");
      out.write(".Image1 {\n");
      out.write("  margin-top: 0;\n");
      out.write("  width: 220px;\n");
      out.write("}\n");
      out.write(".h2 {\n");
      out.write("  margin: 0px;\n");
      out.write("}\n");
      out.write("  </style>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("    <div class=\"credit-card-form\" x-data=\"{\n");
      out.write("        fields: {\n");
      out.write("          cardnumber: '',\n");
      out.write("          cardholder: '',\n");
      out.write("          exp: '',\n");
      out.write("          cvc: ''\n");
      out.write("        },\n");
      out.write("        valid: false,\n");
      out.write("        formatCardNumber(number) {\n");
      out.write("          return number.replace(/[^0-9]/gi, '').slice(0, 16).replace(/(.{4})/g, '$1 ').trim();\n");
      out.write("        },\n");
      out.write("        formatExp(number) {\n");
      out.write("          return number.replace(/[^0-9]/gi, '').slice(0, 4).replace(/(.{2})/, '$1\\/').trim();\n");
      out.write("        },\n");
      out.write("        validate() {\n");
      out.write("          const validCardNumber = this.fields.cardnumber.length === 16;\n");
      out.write("          const validCardholder = this.fields.cardholder.trim() !== '';\n");
      out.write("          const validExp = this.fields.exp.length === 4;\n");
      out.write("          const validCVC = this.fields.cvc.length === 3; // Assuming CVV is 3 characters long\n");
      out.write("    \n");
      out.write("          this.valid = validCardNumber && validCardholder && validExp && validCVC;\n");
      out.write("        }\n");
      out.write("      }\">\n");
      out.write("\n");
      out.write("      <h2>PAYMENT PORTAL</h2>\n");
      out.write("      <img class=\"Image1\" src=\"https://i.ibb.co/hgJ7z3J/6375aad33dbabc9c424b5713-card-mockup-01.png\" alt=\"6375aad33dbabc9c424b5713-card-mockup-01\" border=\"0\"></a>\n");
      out.write("      <form @submit.prevent=\"showLoading($event, this)\">\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <label for=\"card-number\">Card Number</label>\n");
      out.write("          <input type=\"text\" id=\"card-number\" placeholder=\"Card number\" x-model=\"fields.cardnumber\" @keydown=\"if (fields.cardnumber.length > 18 && $event.keyCode != 8 && $event.keyCode != 9 && $event.keyCode != 46) { $event.preventDefault(); }\" @input=\"fields.cardnumber = formatCardNumber(fields.cardnumber)\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("          <label for=\"card-holder\">Card Holder</label>\n");
      out.write("          <input type=\"text\" id=\"card-holder\" placeholder=\"Card holder's name\" x-model=\"fields.cardholder\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-row\">\n");
      out.write("          <div class=\"form-group form-column\">\n");
      out.write("            <label for=\"expiry-date\">Expiry Date</label>\n");
      out.write("            <input type=\"text\" id=\"expiry-date\" placeholder=\"MM/YY\" x-model=\"fields.exp\" @keydown=\"if (fields.exp.length > 4 && $event.keyCode != 8 && $event.keyCode != 9 && $event.keyCode != 46) { $event.preventDefault(); }\" @input=\"fields.exp = formatExp(fields.exp)\">\n");
      out.write("          </div>\n");
      out.write("          <div class=\"form-group form-column\">\n");
      out.write("            <label for=\"cvv\">CVV</label>\n");
      out.write("            <input type=\"text\" id=\"cvv\" placeholder=\"CVV\" maxlength=\"3\" pattern=\"[0-9]*\" title=\"Please enter only numeric digits\" x-model=\"fields.cvc\" @keydown=\"if (!/^\\d$/.test(event.key) && event.keyCode !== 8 && event.keyCode !== 9) { event.preventDefault(); }\">\n");
      out.write("        </div>\n");
      out.write("        </div>\n");
      out.write("        <button type=\"submit\" class=\"click-button\" x-bind:disabled=\"!valid\">PAY NOW - $(TOTAL)</button>\n");
      out.write("      </form>\n");
      out.write("    </div>\n");
      out.write("  </body>\n");
      out.write("<script>\n");
      out.write("    function showLoading(event, button) {\n");
      out.write("  event.preventDefault(); // Prevent form submission\n");
      out.write("\n");
      out.write("  button.innerHTML = \"Processing Payment...\";\n");
      out.write("\n");
      out.write("  setTimeout(function() {\n");
      out.write("    button.innerHTML = \"Payment completed.\";\n");
      out.write("  }, 3000); // Change to the desired duration in milliseconds\n");
      out.write("}\n");
      out.write("</script>\n");
      out.write("</html>\n");
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
