package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class UpdatedTable_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta charset=\"ISO-8859-1\">\n");
      out.write("<title>CSCI 4370 Term Project</title>\n");
      out.write("<script src=\"js/jquery-1.11.2.min.js\"></script>\n");
      out.write("<script src=\"js/jquery-ui.min.js\"></script>\n");
      out.write("<script src=\"js/app.js\"></script>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/bootstrap.min.css\"></link>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/jquery-ui.min.css\"></link>\n");
      out.write("<link rel=\"stylesheet\" type=\"text/css\" href=\"css/app.css\"></link>\n");
      out.write("</head>\n");
      out.write("<body>\n");
      out.write("\t<!-- TITLE AND NAVIGATION -->\n");
      out.write("\t<div class=\"container-fluid\" id=\"navContainer\">\n");
      out.write("\t\t<div class=\"row-fluid\">\n");
      out.write("\t\t\t<div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\" id=\"titleContainer\"><p>Rental Car Agency</p></div>\n");
      out.write("\t\t\t<div class=\"col-lg-4 col-md-4 col-sm-4 col-xs-4\" id=\"navSpacer\"></div>\n");
      out.write("\t\t\t<div class=\"col-lg-3 col-md-3 col-sm-3 col-xs-3\" id=\"navButtonContainer\">\n");
      out.write("\t\t\t\t<button class=\"btn btn-default\" id=\"homeBtn\">Home</button>\n");
      out.write("\t\t\t\t<button class=\"btn btn-default\" id=\"aboutBtn\">About</button>\n");
      out.write("\t\t\t\t<button class=\"btn btn-default\" id=\"rentBtn\">Rent</button>\n");
      out.write("\t\t\t\t<button class=\"btn btn-default\" id=\"contactBtn\">Contact Us</button>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t\t<div class=\"col-lg-1 col-md-1 col-sm-1 col-xs-1 pull-right\">\n");
      out.write("\t\t\t\t<button class=\"btn btn-default\" id=\"loginBtn\">Login</button>\n");
      out.write("\t\t\t</div>\n");
      out.write("\t\t</div>\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t<!-- MAIN CONTENT -->\n");
      out.write("\t<div class=\"container-fluid\" id=\"contentContainer\" style=\"background-color: black; color: white\">\n");
      out.write("\t\tMAIN CONTENT BEGIN\n");
      out.write("\t\t<div id=\"rentalForm\" style=\"background-color: blue; color: black\">\n");
      out.write("\t\t\t<form action=\"{{javafile name}}\" method=\"GET OR POST --probably a GET for this--\">\n");
      out.write("\t\t\t\t<!-- TODO: Needs to be dynamic because it pulls data from the database -->\n");
      out.write("\t\t\t\t<select style=\"width: 40%; text-align: right\">\n");
      out.write("\t\t\t\t\t<option value=\"car1\">Car1</option>\n");
      out.write("\t\t\t\t\t<option value=\"car2\">Car2</option>\n");
      out.write("\t\t\t\t\t<option value=\"car3\">Car3</option>\n");
      out.write("\t\t\t\t</select>\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t\t<input type=\"checkbox\" name=\"insurance\" value=\"insurance\"/>  Insurance<br>\n");
      out.write("\t\t\t\t<input type=\"checkbox\" name=\"gps\" value=\"gps\"/>  GPS<br>\n");
      out.write("\t\t\t\t<input type=\"checkbox\" name=\"radio\" value=\"radio\"/>  Satellite Radio\n");
      out.write("\t\t\t\t<br>\n");
      out.write("\t\t\t\tStart Date: <input type=\"text\" id=\"startDate\"/>\n");
      out.write("\t\t\t\tEnd Date: <input type=\"text\" id=\"endDate\"/>\n");
      out.write("\t\t\t</form>\n");
      out.write("\t\t</div>\n");
      out.write("\t\tMAIN CONTENT END\n");
      out.write("\t</div>\n");
      out.write("\t\n");
      out.write("\t<!-- FOOTER -->\n");
      out.write("\t<div class=\"navbar navbar-fixed-bottom\" id=\"footerContainer\" style=\"background-color: red\">\n");
      out.write("\t\tFOOTER\n");
      out.write("\t</div>\n");
      out.write("</body>\n");
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
