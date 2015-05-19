package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.io.*;
import java.util.*;
import java.sql.*;
import javax.servlet.http.*;
import javax.servlet.*;

public final class ShoppingCart_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_forEach_var_items;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_set_var_value_scope_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_out_value_nobody;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_query_var_dataSource;
  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_forEach_var_items = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_set_var_value_scope_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_out_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_query_var_dataSource = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_forEach_var_items.release();
    _jspx_tagPool_c_set_var_value_scope_nobody.release();
    _jspx_tagPool_c_out_value_nobody.release();
    _jspx_tagPool_c_if_test.release();
    _jspx_tagPool_sql_query_var_dataSource.release();
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.release();
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Shopping Cart</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        ");
      if (_jspx_meth_sql_setDataSource_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        ");
      //  sql:query
      org.apache.taglibs.standard.tag.rt.sql.QueryTag _jspx_th_sql_query_0 = (org.apache.taglibs.standard.tag.rt.sql.QueryTag) _jspx_tagPool_sql_query_var_dataSource.get(org.apache.taglibs.standard.tag.rt.sql.QueryTag.class);
      _jspx_th_sql_query_0.setPageContext(_jspx_page_context);
      _jspx_th_sql_query_0.setParent(null);
      _jspx_th_sql_query_0.setDataSource((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${snapshot}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
      _jspx_th_sql_query_0.setVar("result");
      int[] _jspx_push_body_count_sql_query_0 = new int[] { 0 };
      try {
        int _jspx_eval_sql_query_0 = _jspx_th_sql_query_0.doStartTag();
        if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
          if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE) {
            out = _jspx_page_context.pushBody();
            _jspx_push_body_count_sql_query_0[0]++;
            _jspx_th_sql_query_0.setBodyContent((javax.servlet.jsp.tagext.BodyContent) out);
            _jspx_th_sql_query_0.doInitBody();
          }
          do {
            out.write("\n");
            out.write("            select * from ShoppingCart where username = \"");
            out.print(session.getAttribute("userid"));
            out.write("\"\n");
            out.write("        ");
            int evalDoAfterBody = _jspx_th_sql_query_0.doAfterBody();
            if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
              break;
          } while (true);
          if (_jspx_eval_sql_query_0 != javax.servlet.jsp.tagext.Tag.EVAL_BODY_INCLUDE)
            out = _jspx_page_context.popBody();
            _jspx_push_body_count_sql_query_0[0]--;
        }
        if (_jspx_th_sql_query_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
          return;
        }
      } catch (Throwable _jspx_exception) {
        while (_jspx_push_body_count_sql_query_0[0]-- > 0)
          out = _jspx_page_context.popBody();
        _jspx_th_sql_query_0.doCatch(_jspx_exception);
      } finally {
        _jspx_th_sql_query_0.doFinally();
        _jspx_tagPool_sql_query_var_dataSource.reuse(_jspx_th_sql_query_0);
      }
      out.write("\n");
      out.write("            \n");
      out.write("        <script type=\"text/javascript\">            \n");
      out.write("            function deleteRecord(id)\n");
      out.write("            {\n");
      out.write("                url = \"DeleteRecord\";\n");
      out.write("                window.location.href = \"http://localhost:8080/DBMP5/\"+url+\"?id=\"+id;\n");
      out.write("            }\n");
      out.write("            \n");
      out.write("        </script>\n");
      out.write("         \n");
      out.write("        <ul class=\"menu\">\n");
      out.write("  <li><a href=\"/home\" class=\"active\"><span>Home</span></a></li>\n");
      out.write("  <li><a href=\"ShoppingCart.jsp\"><span>Shopping Cart</span></a></li>\n");
      out.write("  ");

                if(session.getAttribute("userid") == null)
                {
      out.write("\n");
      out.write("  \n");
      out.write("                  <li>\n");
      out.write("                      <form method=\"post\" action=\"login.jsp\"> <span>\n");
      out.write("                              <input type=\"text\" name=\"uname\" class=\"inputs\" placeholder=\"Username\" /> \n");
      out.write("                              <input type=\"password\" name=\"pass\" class=\"inputs\" placeholder=\"Password\" /></span>\n");
      out.write("                              <input type=\"hidden\" value=\"WomenShirts.jsp\" name=\"redirect\">\n");
      out.write("                      <input type=\"submit\" value=\"Login\" style=\"border-width: 1px; border-style: groove; border-color: #4095ff; font-family: Trebuchet MS; color: #ffffff; background-color: #4095ff;\">\n");
      out.write("                      </form>\n");
      out.write("                  </li>  \n");
      out.write("                ");
}
                else {
                
      out.write("\n");
      out.write("                   <li><a href=\"logout.jsp\"><span>Logout</span></a></li>\n");
      out.write("                ");
}
      out.write("\n");
      out.write("  \n");
      out.write("                    \n");
      out.write("</ul>  \n");
      out.write("            \n");
      out.write("  \n");
      out.write("            <BR><BR>\n");
      out.write("            \n");
      out.write("        <table border=\"1\" style=\"background-color:#FFFFFF;border-collapse:collapse;border:1px solid #C6C4C4;             \n");
      out.write("        color:#000000;width:60%\" cellpadding=\"12\" cellspacing=\"10\" align=\"center\" >\n");
      out.write("\t<!-- <thead><tr><th>header</th><th>header</th><th>header</th><th>header</th></tr></thead> -->\n");
      out.write("        ");
      if (_jspx_meth_c_set_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        ");
      if (_jspx_meth_c_forEach_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        ");
      if (_jspx_meth_c_if_2(_jspx_page_context))
        return;
      out.write("\n");
      out.write("        </tbody>\n");
      out.write("</table>\n");
      out.write("        \n");
      out.write("<form method=\"post\" action=\"UpdateShoppingCart.jsp\">\n");
      out.write("<input type=\"hidden\" value=\"my hidden value\" name=\"secret\">\n");
      out.write("<input type=\"hidden\" value=\"chicken\" name=\"id\">\n");
      out.write("<input type=\"submit\" value=\"Add this product to your cart\">\n");
      out.write("</form> \n");
      out.write("        \n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("<style type=\"text/css\">\n");
      out.write("hr {\n");
      out.write("height: 1px;\n");
      out.write("color: #C6C4C4;\n");
      out.write("background-color: #C6C4C4;\n");
      out.write("border: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("input[type=button], input[type=submit].class, input[type=reset], button, .button {\n");
      out.write("\tpadding: 5px 20px;\n");
      out.write("\tmargin: 3px 4px;\n");
      out.write("\tdisplay: inline-block;\n");
      out.write("\tcolor: #ffffff;\n");
      out.write("\tfont-size: 20px;\n");
      out.write("\tcursor: pointer;\n");
      out.write("\tbackground: #4095ff;\n");
      out.write("\tbackground: linear-gradient(top, #4095ff 0%, #277ce6 100%);\n");
      out.write("\tbackground: -moz-linear-gradient(top, #4095ff 0%, #277ce6 100%);\n");
      out.write("\tbackground: -webkit-linear-gradient(top, #4095ff 0%, #277ce6 100%);\n");
      out.write("\tbackground: -o-linear-gradient(top, #4095ff 0%, #277ce6 100%);\n");
      out.write("\tborder: 0px solid #338bf6;\n");
      out.write("\tborder-radius: 5px;\n");
      out.write("\t-moz-border-radius: 5px;\n");
      out.write("\t-webkit-border-radius: 5px;\n");
      out.write("\t-o-border-radius: 5px;\n");
      out.write("\tbox-shadow:0px 0px 0px 0px rgba(0, 0, 0, 0.25), inset 1px 1px 0px 0px rgba(255, 255, 255, 0.25);\n");
      out.write("\t-moz-box-shadow:0px 0px 0px 0px rgba(0, 0, 0, 0.25), inset 1px 1px 0px 0px rgba(255, 255, 255, 0.25);\n");
      out.write("\t-webkit-box-shadow:0px 0px 0px 0px rgba(0, 0, 0, 0.25), inset 1px 1px 0px 0px rgba(255, 255, 255, 0.25);\n");
      out.write("\t-o-box-shadow:0px 0px 0px 0px rgba(0, 0, 0, 0.25), inset 1px 1px 0px 0px rgba(255, 255, 255, 0.25);\n");
      out.write("\ttext-shadow: 1px 1px 0px rgba(0, 0, 0, 0.50);\n");
      out.write("        vertical-align: bottom;\n");
      out.write("}\n");
      out.write("input[type=button]:hover, input[type=submit].class:hover, input[type=reset]:hover, button:hover, .button:hover {\n");
      out.write("\tbackground: linear-gradient(top, #5aafff 0%, #4095ff 100%);\n");
      out.write("\tbackground: -moz-linear-gradient(top, #5aafff 0%, #4095ff 100%);\n");
      out.write("\tbackground: -webkit-linear-gradient(top, #5aafff 0%, #4095ff 100%);\n");
      out.write("\tbackground: -o-linear-gradient(top, #5aafff 0%, #4095ff 100%);\n");
      out.write("}\n");
      out.write("input[type=button]:active, input[type=submit]:active, input[type=reset]:active, button:active, .button:active{\n");
      out.write("\topacity:0.8;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("input[type=submit].hello{\n");
      out.write("\tpadding: 3px 10px;\n");
      out.write("\tmargin: 3px 4px;\n");
      out.write("\tdisplay: inline-block;\n");
      out.write("\tcolor: #ffffff;\n");
      out.write("\tfont-size: 12px;\n");
      out.write("\tcursor: pointer;\n");
      out.write("\tbackground: #4095ff;\n");
      out.write("\tbackground: linear-gradient(top, #4095ff 0%, #277ce6 100%);\n");
      out.write("\tbackground: -moz-linear-gradient(top, #4095ff 0%, #277ce6 100%);\n");
      out.write("\tbackground: -webkit-linear-gradient(top, #4095ff 0%, #277ce6 100%);\n");
      out.write("\tbackground: -o-linear-gradient(top, #4095ff 0%, #277ce6 100%);\n");
      out.write("\tborder: 0px solid #338bf6;\n");
      out.write("\tborder-radius: 5px;\n");
      out.write("\t-moz-border-radius: 5px;\n");
      out.write("\t-webkit-border-radius: 5px;\n");
      out.write("\t-o-border-radius: 5px;\n");
      out.write("\tbox-shadow:0px 0px 0px 0px rgba(0, 0, 0, 0.25), inset 1px 1px 0px 0px rgba(255, 255, 255, 0.25);\n");
      out.write("\t-moz-box-shadow:0px 0px 0px 0px rgba(0, 0, 0, 0.25), inset 1px 1px 0px 0px rgba(255, 255, 255, 0.25);\n");
      out.write("\t-webkit-box-shadow:0px 0px 0px 0px rgba(0, 0, 0, 0.25), inset 1px 1px 0px 0px rgba(255, 255, 255, 0.25);\n");
      out.write("\t-o-box-shadow:0px 0px 0px 0px rgba(0, 0, 0, 0.25), inset 1px 1px 0px 0px rgba(255, 255, 255, 0.25);\n");
      out.write("\ttext-shadow: 1px 1px 0px rgba(0, 0, 0, 0.50);\n");
      out.write("        vertical-align: bottom;\n");
      out.write("}\n");
      out.write("input[type=submit].hello:hover{\n");
      out.write("\tbackground: linear-gradient(top, #5aafff 0%, #4095ff 100%);\n");
      out.write("\tbackground: -moz-linear-gradient(top, #5aafff 0%, #4095ff 100%);\n");
      out.write("\tbackground: -webkit-linear-gradient(top, #5aafff 0%, #4095ff 100%);\n");
      out.write("\tbackground: -o-linear-gradient(top, #5aafff 0%, #4095ff 100%);\n");
      out.write("}\n");
      out.write("input[type=submit].hello:active{\n");
      out.write("\topacity:0.8;\n");
      out.write("}\n");
      out.write("\n");
      out.write("a:link,a:visited {\n");
      out.write("   color: Black;\n");
      out.write("   background-color: White;\n");
      out.write("   text-decoration: none;\n");
      out.write("   target-new: none;\n");
      out.write("  }\n");
      out.write("  a:hover {\n");
      out.write("   color: #4095ff;\n");
      out.write("   background-color: #FFFFFF;\n");
      out.write("   text-decoration: none;\n");
      out.write("   target-new: none;\n");
      out.write("  }\n");
      out.write("\n");
      out.write(".menu{margin:0 auto; padding:0; height:30px; width:100%; display:block; background:url('images/topMenuImages.png') repeat-x;}\n");
      out.write(".menu li{padding:0; margin:0; list-style:none; display:inline;}\n");
      out.write(".menu li a{float:left; padding-left:15px; display:block; color:rgb(255,255,255); text-decoration:none; font:12px Verdana, Arial, Helvetica, sans-serif; cursor:pointer; background:url('images/topMenuImages.png') 0px -30px no-repeat;}\n");
      out.write(".menu li a span{line-height:30px; float:left; display:block; padding-right:15px; background:url('images/topMenuImages.png') 100% -30px no-repeat;}\n");
      out.write(".menu li a:hover{background-position:0px -60px; color:rgb(255,255,255);}\n");
      out.write(".menu li a:hover span{background-position:100% -60px;}\n");
      out.write(".menu li a.active, .menu li a.active:hover{line-height:30px; font:12px Verdana, Arial, Helvetica, sans-serif; background:url('images/topMenuImages.png') 0px -90px no-repeat; color:rgb(255,255,255);}\n");
      out.write(".menu li a.active span, .menu li a.active:hover span{background:url('images/topMenuImages.png') 100% -90px no-repeat;}\n");
      out.write("\n");
      out.write("html,\n");
      out.write("body {\n");
      out.write("   margin:0;\n");
      out.write("   padding:0;\n");
      out.write("   height:100%;\n");
      out.write("}\n");
      out.write("\n");
      out.write("             \n");
      out.write("           \n");
      out.write("\n");
      out.write("inputs:-webkit-input-placeholder {\n");
      out.write("    color: #b5b5b5;\n");
      out.write("}\n");
      out.write("\n");
      out.write("inputs-moz-placeholder {\n");
      out.write("    color: #b5b5b5;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".inputs {\n");
      out.write("    background: #f5f5f5;\n");
      out.write("    font-size: 0.8rem;\n");
      out.write("    -moz-border-radius: 1px;\n");
      out.write("    -webkit-border-radius: 1px;\n");
      out.write("    border-radius: 1px;\n");
      out.write("    border: none;\n");
      out.write("    padding: 3px 3px;\n");
      out.write("    width: 100px;\n");
      out.write("    margin-bottom: 0px;\n");
      out.write("    box-shadow: inset 0 2px 3px rgba( 0, 0, 0, 0.1 );\n");
      out.write("    clear: both;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".inputs:focus {\n");
      out.write("    background: #fff;\n");
      out.write("    box-shadow: 0 0 0 3px #4095ff, inset 0 2px 3px rgba( 0, 0, 0, 0.2 ), 0px 5px 5px rgba( 0, 0, 0, 0.15 );\n");
      out.write("    outline: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("</style>");
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

  private boolean _jspx_meth_sql_setDataSource_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  sql:setDataSource
    org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag _jspx_th_sql_setDataSource_0 = (org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag) _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.get(org.apache.taglibs.standard.tag.rt.sql.SetDataSourceTag.class);
    _jspx_th_sql_setDataSource_0.setPageContext(_jspx_page_context);
    _jspx_th_sql_setDataSource_0.setParent(null);
    _jspx_th_sql_setDataSource_0.setVar("snapshot");
    _jspx_th_sql_setDataSource_0.setDriver("com.mysql.jdbc.Driver");
    _jspx_th_sql_setDataSource_0.setUrl("jdbc:mysql://localhost/sampledb");
    _jspx_th_sql_setDataSource_0.setUser("root");
    _jspx_th_sql_setDataSource_0.setPassword("falcons#1");
    int _jspx_eval_sql_setDataSource_0 = _jspx_th_sql_setDataSource_0.doStartTag();
    if (_jspx_th_sql_setDataSource_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
      return true;
    }
    _jspx_tagPool_sql_setDataSource_var_user_url_password_driver_nobody.reuse(_jspx_th_sql_setDataSource_0);
    return false;
  }

  private boolean _jspx_meth_c_set_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_0 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_scope_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_0.setPageContext(_jspx_page_context);
    _jspx_th_c_set_0.setParent(null);
    _jspx_th_c_set_0.setVar("count");
    _jspx_th_c_set_0.setValue(new String("0"));
    _jspx_th_c_set_0.setScope("page");
    int _jspx_eval_c_set_0 = _jspx_th_c_set_0.doStartTag();
    if (_jspx_th_c_set_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_scope_nobody.reuse(_jspx_th_c_set_0);
      return true;
    }
    _jspx_tagPool_c_set_var_value_scope_nobody.reuse(_jspx_th_c_set_0);
    return false;
  }

  private boolean _jspx_meth_c_forEach_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:forEach
    org.apache.taglibs.standard.tag.rt.core.ForEachTag _jspx_th_c_forEach_0 = (org.apache.taglibs.standard.tag.rt.core.ForEachTag) _jspx_tagPool_c_forEach_var_items.get(org.apache.taglibs.standard.tag.rt.core.ForEachTag.class);
    _jspx_th_c_forEach_0.setPageContext(_jspx_page_context);
    _jspx_th_c_forEach_0.setParent(null);
    _jspx_th_c_forEach_0.setVar("row");
    _jspx_th_c_forEach_0.setItems((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${result.rows}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int[] _jspx_push_body_count_c_forEach_0 = new int[] { 0 };
    try {
      int _jspx_eval_c_forEach_0 = _jspx_th_c_forEach_0.doStartTag();
      if (_jspx_eval_c_forEach_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
        do {
          out.write("\n");
          out.write("            ");
          if (_jspx_meth_c_if_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("                    <td align=\"center\" valign=\"bottom\"><i class=\"line\"></i>\n");
          out.write("                        \n");
          out.write("                        <img src=\"");
          if (_jspx_meth_c_out_0((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\" style=\"height:200px;width:175px;\" align=\"middle\"> \n");
          out.write("                        <BR>\n");
          out.write("                        <font face=\"Trebuchet MS, Helvetica, sans-serif\">\n");
          out.write("                        <hr width=\"100%\">\n");
          out.write("                        <b>");
          if (_jspx_meth_c_out_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</b> <BR>\n");
          out.write("                        <font size=\"5\" color=\"red\"><b>$");
          if (_jspx_meth_c_out_2((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("</b></font>\n");
          out.write("                        </font><BR>\n");
          out.write("                        \n");
          out.write("                            <input type =\"submit\" value =\"Delete\" name =\"delete\" class=\"button\"\n");
          out.write("                                       onclick =\"deleteRecord(");
          out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row.id}", java.lang.String.class, (PageContext)_jspx_page_context, null));
          out.write(");\"\n");
          out.write("                    </td>               \n");
          out.write("                \n");
          out.write("            ");
          if (_jspx_meth_c_set_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("            ");
          if (_jspx_meth_c_if_1((javax.servlet.jsp.tagext.JspTag) _jspx_th_c_forEach_0, _jspx_page_context, _jspx_push_body_count_c_forEach_0))
            return true;
          out.write("\n");
          out.write("            \n");
          out.write("        ");
          int evalDoAfterBody = _jspx_th_c_forEach_0.doAfterBody();
          if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
            break;
        } while (true);
      }
      if (_jspx_th_c_forEach_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_c_forEach_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_c_forEach_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_c_forEach_0.doFinally();
      _jspx_tagPool_c_forEach_var_items.reuse(_jspx_th_c_forEach_0);
    }
    return false;
  }

  private boolean _jspx_meth_c_if_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${count % 4 == 0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                <tr>\n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_if_0.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_0);
    return false;
  }

  private boolean _jspx_meth_c_out_0(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_0 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_0.setPageContext(_jspx_page_context);
    _jspx_th_c_out_0.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_0.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row.imagePath}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_0 = _jspx_th_c_out_0.doStartTag();
    if (_jspx_th_c_out_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_0);
    return false;
  }

  private boolean _jspx_meth_c_out_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_1 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_1.setPageContext(_jspx_page_context);
    _jspx_th_c_out_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row.productName}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_1 = _jspx_th_c_out_1.doStartTag();
    if (_jspx_th_c_out_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_1);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_1);
    return false;
  }

  private boolean _jspx_meth_c_out_2(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:out
    org.apache.taglibs.standard.tag.rt.core.OutTag _jspx_th_c_out_2 = (org.apache.taglibs.standard.tag.rt.core.OutTag) _jspx_tagPool_c_out_value_nobody.get(org.apache.taglibs.standard.tag.rt.core.OutTag.class);
    _jspx_th_c_out_2.setPageContext(_jspx_page_context);
    _jspx_th_c_out_2.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_out_2.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${row.price}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    int _jspx_eval_c_out_2 = _jspx_th_c_out_2.doStartTag();
    if (_jspx_th_c_out_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_2);
      return true;
    }
    _jspx_tagPool_c_out_value_nobody.reuse(_jspx_th_c_out_2);
    return false;
  }

  private boolean _jspx_meth_c_set_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:set
    org.apache.taglibs.standard.tag.rt.core.SetTag _jspx_th_c_set_1 = (org.apache.taglibs.standard.tag.rt.core.SetTag) _jspx_tagPool_c_set_var_value_scope_nobody.get(org.apache.taglibs.standard.tag.rt.core.SetTag.class);
    _jspx_th_c_set_1.setPageContext(_jspx_page_context);
    _jspx_th_c_set_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_set_1.setVar("count");
    _jspx_th_c_set_1.setValue((java.lang.Object) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${count + 1}", java.lang.Object.class, (PageContext)_jspx_page_context, null));
    _jspx_th_c_set_1.setScope("page");
    int _jspx_eval_c_set_1 = _jspx_th_c_set_1.doStartTag();
    if (_jspx_th_c_set_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_set_var_value_scope_nobody.reuse(_jspx_th_c_set_1);
      return true;
    }
    _jspx_tagPool_c_set_var_value_scope_nobody.reuse(_jspx_th_c_set_1);
    return false;
  }

  private boolean _jspx_meth_c_if_1(javax.servlet.jsp.tagext.JspTag _jspx_th_c_forEach_0, PageContext _jspx_page_context, int[] _jspx_push_body_count_c_forEach_0)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_1 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_1.setPageContext(_jspx_page_context);
    _jspx_th_c_if_1.setParent((javax.servlet.jsp.tagext.Tag) _jspx_th_c_forEach_0);
    _jspx_th_c_if_1.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${count % 4 == 0}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_1 = _jspx_th_c_if_1.doStartTag();
    if (_jspx_eval_c_if_1 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                </tr> \n");
        out.write("            ");
        int evalDoAfterBody = _jspx_th_c_if_1.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_1.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_1);
    return false;
  }

  private boolean _jspx_meth_c_if_2(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_2 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_2.setPageContext(_jspx_page_context);
    _jspx_th_c_if_2.setParent(null);
    _jspx_th_c_if_2.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${count % 4 != 0 || count == 1}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_2 = _jspx_th_c_if_2.doStartTag();
    if (_jspx_eval_c_if_2 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                </tr> \n");
        out.write("        ");
        int evalDoAfterBody = _jspx_th_c_if_2.doAfterBody();
        if (evalDoAfterBody != javax.servlet.jsp.tagext.BodyTag.EVAL_BODY_AGAIN)
          break;
      } while (true);
    }
    if (_jspx_th_c_if_2.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
      _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
      return true;
    }
    _jspx_tagPool_c_if_test.reuse(_jspx_th_c_if_2);
    return false;
  }
}
