/*
 * Generated by the Jasper component of Apache Tomcat
 * Version: Apache Tomcat/8.5.57
 * Generated at: 2020-10-21 04:32:15 UTC
 * Note: The last modified time of this file was set to
 *       the last modified time of the source file after
 *       generation to assist with modification tracking.
 */
package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class success_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent,
                 org.apache.jasper.runtime.JspSourceImports {

  private static final javax.servlet.jsp.JspFactory _jspxFactory =
          javax.servlet.jsp.JspFactory.getDefaultFactory();

  private static java.util.Map<java.lang.String,java.lang.Long> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.HashMap<java.lang.String,java.lang.Long>(4);
    _jspx_dependants.put("/bootstrap.jsp", Long.valueOf(1603251344845L));
    _jspx_dependants.put("/footer.jsp", Long.valueOf(1603251927717L));
    _jspx_dependants.put("/carousel.jsp", Long.valueOf(1603251770695L));
    _jspx_dependants.put("/nav.jsp", Long.valueOf(1603251350302L));
  }

  private static final java.util.Set<java.lang.String> _jspx_imports_packages;

  private static final java.util.Set<java.lang.String> _jspx_imports_classes;

  static {
    _jspx_imports_packages = new java.util.HashSet<>();
    _jspx_imports_packages.add("javax.servlet");
    _jspx_imports_packages.add("javax.servlet.http");
    _jspx_imports_packages.add("javax.servlet.jsp");
    _jspx_imports_classes = null;
  }

  private volatile javax.el.ExpressionFactory _el_expressionfactory;
  private volatile org.apache.tomcat.InstanceManager _jsp_instancemanager;

  public java.util.Map<java.lang.String,java.lang.Long> getDependants() {
    return _jspx_dependants;
  }

  public java.util.Set<java.lang.String> getPackageImports() {
    return _jspx_imports_packages;
  }

  public java.util.Set<java.lang.String> getClassImports() {
    return _jspx_imports_classes;
  }

  public javax.el.ExpressionFactory _jsp_getExpressionFactory() {
    if (_el_expressionfactory == null) {
      synchronized (this) {
        if (_el_expressionfactory == null) {
          _el_expressionfactory = _jspxFactory.getJspApplicationContext(getServletConfig().getServletContext()).getExpressionFactory();
        }
      }
    }
    return _el_expressionfactory;
  }

  public org.apache.tomcat.InstanceManager _jsp_getInstanceManager() {
    if (_jsp_instancemanager == null) {
      synchronized (this) {
        if (_jsp_instancemanager == null) {
          _jsp_instancemanager = org.apache.jasper.runtime.InstanceManagerFactory.getInstanceManager(getServletConfig());
        }
      }
    }
    return _jsp_instancemanager;
  }

  public void _jspInit() {
  }

  public void _jspDestroy() {
  }

  public void _jspService(final javax.servlet.http.HttpServletRequest request, final javax.servlet.http.HttpServletResponse response)
      throws java.io.IOException, javax.servlet.ServletException {

    final java.lang.String _jspx_method = request.getMethod();
    if (!"GET".equals(_jspx_method) && !"POST".equals(_jspx_method) && !"HEAD".equals(_jspx_method) && !javax.servlet.DispatcherType.ERROR.equals(request.getDispatcherType())) {
      response.sendError(HttpServletResponse.SC_METHOD_NOT_ALLOWED, "JSP 只允许 GET、POST 或 HEAD。Jasper 还允许 OPTIONS");
      return;
    }

    final javax.servlet.jsp.PageContext pageContext;
    javax.servlet.http.HttpSession session = null;
    final javax.servlet.ServletContext application;
    final javax.servlet.ServletConfig config;
    javax.servlet.jsp.JspWriter out = null;
    final java.lang.Object page = this;
    javax.servlet.jsp.JspWriter _jspx_out = null;
    javax.servlet.jsp.PageContext _jspx_page_context = null;


    try {
      response.setContentType("text/html; charset=utf-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;

      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html>\r\n");
      out.write("\r\n");
      out.write("<head>\r\n");
      out.write("<meta charset=\"UTF-8\">\r\n");
      out.write("<title>Hello,PsyDuck~</title>\r\n");
      out.write("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<link rel=\"stylesheet\" href=\"https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css\">\r\n");
      out.write("<script src=\"https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js\"></script>\r\n");
      out.write("<script src=\"https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<style>\r\n");
      out.write(".carousel-inner img {\r\n");
      out.write("\twidth: 100%;\r\n");
      out.write("\theight: 100%;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".bd-placeholder-img {\r\n");
      out.write("\tfont-size: 1.125rem;\r\n");
      out.write("\ttext-anchor: middle;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("@media ( min-width : 768px) {\r\n");
      out.write("\t.bd-placeholder-img-lg {\r\n");
      out.write("\t\tfont-size: 3.5rem;\r\n");
      out.write("\t}\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write(".logincard {\r\n");
      out.write("\tposition: absolute;\r\n");
      out.write("\tright: 20px;\r\n");
      out.write("\twidth: 300px;\r\n");
      out.write("\tbottom: 400px;\r\n");
      out.write("}\r\n");
      out.write("\r\n");
      out.write("#footer {\r\n");
      out.write("\ttext-align: center;\r\n");
      out.write("}\r\n");
      out.write("</style>\r\n");
      out.write("\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body class=\"text-center\">\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"container-fluid\">\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- 导航栏 -->\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("    \r\n");
      out.write("<nav class=\"navbar navbar-expand-lg navbar-light bg-light\">\r\n");
      out.write("\t<a class=\"navbar-brand\" href=\"index.jsp\"><img src=\"img/psyduck.png\"\r\n");
      out.write("\t\talt=\"\" width=\"20%\" height=\"20%\"> PsyDuck</a>\r\n");
      out.write("\t<button class=\"navbar-toggler\" type=\"button\" data-toggle=\"collapse\"\r\n");
      out.write("\t\tdata-target=\"#navbarSupportedContent\"\r\n");
      out.write("\t\taria-controls=\"navbarSupportedContent\" aria-expanded=\"false\"\r\n");
      out.write("\t\taria-label=\"Toggle navigation\">\r\n");
      out.write("\t\t<span class=\"navbar-toggler-icon\"></span>\r\n");
      out.write("\t</button>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"collapse navbar-collapse\" id=\"navbarSupportedContent\">\r\n");
      out.write("\t\t<ul class=\"navbar-nav mr-auto\">\r\n");
      out.write("\t\t\t<li class=\"nav-item active\"><a class=\"nav-link\"\r\n");
      out.write("\t\t\t\thref=\"success.jsp\">Home <span class=\"sr-only\">(current)</span></a></li>\r\n");
      out.write("\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"qrCode.jsp\">QrCode</a>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t\t<li class=\"nav-item dropdown\"><a\r\n");
      out.write("\t\t\t\tclass=\"nav-link dropdown-toggle\" href=\"#\" id=\"navbarDropdown\"\r\n");
      out.write("\t\t\t\trole=\"button\" data-toggle=\"dropdown\" aria-haspopup=\"true\"\r\n");
      out.write("\t\t\t\taria-expanded=\"false\"> Dropdown </a>\r\n");
      out.write("\t\t\t\t<div class=\"dropdown-menu\" aria-labelledby=\"navbarDropdown\">\r\n");
      out.write("\t\t\t\t\t<a class=\"dropdown-item\" href=\"#\">Action</a> <a\r\n");
      out.write("\t\t\t\t\t\tclass=\"dropdown-item\" href=\"#\">Another action</a>\r\n");
      out.write("\t\t\t\t\t<div class=\"dropdown-divider\"></div>\r\n");
      out.write("\t\t\t\t\t<a class=\"dropdown-item\" href=\"#\">Something else here</a>\r\n");
      out.write("\t\t\t\t</div></li>\r\n");
      out.write("\t\t\t<li class=\"nav-item\"><a class=\"nav-link disabled\" href=\"#\">Disabled</a>\r\n");
      out.write("\t\t\t</li>\r\n");
      out.write("\t\t</ul>\r\n");
      out.write("\t\t<form class=\"form-inline my-2 my-lg-0\">\r\n");
      out.write("\t\t\t<input class=\"form-control mr-sm-2\" type=\"search\"\r\n");
      out.write("\t\t\t\tplaceholder=\"Search\" aria-label=\"Search\">\r\n");
      out.write("\t\t\t<button class=\"btn btn-outline-success my-2 my-sm-0\" type=\"submit\">Search</button>\r\n");
      out.write("\t\t</form>\r\n");
      out.write("\t</div>\r\n");
      out.write("</nav>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t\t<div class=\"row\">\r\n");
      out.write("\t\t\t<nav class=\"col-md-3 d-none d-md-block bg-light sidebar\">\r\n");
      out.write("\t\t\t\t<div class=\"sidebar-sticky\">\r\n");
      out.write("\t\t\t\t\t<ul class=\"nav flex-column\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link active\" href=\"#\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<span data-feather=\"home\"></span> 用户登入 <span\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"sr-only\">(current)</span>\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-feather=\"file\"></span> Orders\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-feather=\"shopping-cart\"></span> Products\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-feather=\"users\"></span> Customers\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-feather=\"bar-chart-2\"></span> Reports\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-feather=\"layers\"></span> Integrations\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t\t\t\t\t<h6\r\n");
      out.write("\t\t\t\t\t\tclass=\"sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted\">\r\n");
      out.write("\t\t\t\t\t\t<span>Saved reports</span> <a\r\n");
      out.write("\t\t\t\t\t\t\tclass=\"d-flex align-items-center text-muted\" href=\"#\"> <span\r\n");
      out.write("\t\t\t\t\t\t\tdata-feather=\"plus-circle\"></span>\r\n");
      out.write("\t\t\t\t\t\t</a>\r\n");
      out.write("\t\t\t\t\t</h6>\r\n");
      out.write("\t\t\t\t\t<ul class=\"nav flex-column mb-2\">\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-feather=\"file-text\"></span> Current month\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-feather=\"file-text\"></span> Last quarter\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-feather=\"file-text\"></span> Social engagement\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t\t<li class=\"nav-item\"><a class=\"nav-link\" href=\"#\"> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-feather=\"file-text\"></span> Year-end sale\r\n");
      out.write("\t\t\t\t\t\t</a></li>\r\n");
      out.write("\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</nav>\r\n");
      out.write("\t\t\t\r\n");
      out.write("\t\t\t<div class=\"col-sm\">\r\n");
      out.write("\t\t\t\t<!-- 轮播图 -->\r\n");
      out.write("\t\t\t\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div id=\"carousel\" class=\"carousel slide\" data-ride=\"carousel\"\r\n");
      out.write("\tdata-interval=\"3000\">\r\n");
      out.write("\r\n");
      out.write("\t<!-- 指示符 -->\r\n");
      out.write("\t<ul class=\"carousel-indicators\">\r\n");
      out.write("\t\t<li data-target=\"#demo\" data-slide-to=\"0\" class=\"active\"></li>\r\n");
      out.write("\t\t<li data-target=\"#demo\" data-slide-to=\"1\"></li>\r\n");
      out.write("\t\t<li data-target=\"#demo\" data-slide-to=\"2\"></li>\r\n");
      out.write("\t</ul>\r\n");
      out.write("\r\n");
      out.write("\t<!-- 轮播图图片 -->\r\n");
      out.write("\t<div class=\"carousel-inner\">\r\n");
      out.write("\t\t<div class=\"carousel-item active\">\r\n");
      out.write("\t\t\t<img src=\"img/8.jpg\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"carousel-item\">\r\n");
      out.write("\t\t\t<img src=\"img/7.jpg\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<div class=\"carousel-item\">\r\n");
      out.write("\t\t\t<img src=\"img/11.jpg\">\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<!-- 左右切换按钮 -->\r\n");
      out.write("\t<a class=\"carousel-control-prev\" href=\"#demo\" data-slide=\"prev\"> <span\r\n");
      out.write("\t\tclass=\"carousel-control-prev-icon\"></span>\r\n");
      out.write("\t</a> <a class=\"carousel-control-next\" href=\"#demo\" data-slide=\"next\"> <span\r\n");
      out.write("\t\tclass=\"carousel-control-next-icon\"></span>\r\n");
      out.write("\t</a>\r\n");
      out.write("\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\r\n");
      out.write("\t\t<!-- Begin page content -->\r\n");
      out.write("\t\t");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<div class=\"container\" id=\"footer\">\r\n");
      out.write("\t<hr>\r\n");
      out.write("\t<p class=\"lead\">学号：180110910603.\r\n");
      out.write("\t\t&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp桌号：19.</p>\r\n");
      out.write("\t<p class=\"lead\">姓名：陈彬捷. &nbsp&nbsp&nbsp&nbsp&nbsp班级：18软工2班.</p>\r\n");
      out.write("\t<p class=\"lead\">If you have any questions, please contact my QQ\r\n");
      out.write("\t\t879115657.</p>\r\n");
      out.write("\t<span class=\"text-muted\"><a href=\"https://github.com/ZUFEcsc\">GitHub</a>\r\n");
      out.write("\t\t| <a href=\"https://blog.csdn.net/qq_44702847\">CSDN</a></span>\r\n");
      out.write("</div>");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("\r\n");
      out.write("</html>");
    } catch (java.lang.Throwable t) {
      if (!(t instanceof javax.servlet.jsp.SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          try {
            if (response.isCommitted()) {
              out.flush();
            } else {
              out.clearBuffer();
            }
          } catch (java.io.IOException e) {}
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
