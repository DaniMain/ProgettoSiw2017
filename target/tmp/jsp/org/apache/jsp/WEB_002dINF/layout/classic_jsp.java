package org.apache.jsp.WEB_002dINF.layout;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class classic_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_spring_url_value_nobody;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_spring_url_value_nobody = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_spring_url_value_nobody.release();
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
      response.setContentType("text/html; charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\r\n");
      out.write("\r\n");
      out.write("<!DOCTYPE html>\r\n");
      out.write("<html lang=\"en\">\r\n");
      out.write("<head>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("<!-- Latest compiled and minified CSS -->\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css\"\r\n");
      out.write("\tintegrity=\"sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u\"\r\n");
      out.write("\tcrossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<!-- Optional theme -->\r\n");
      out.write("<link rel=\"stylesheet\"\r\n");
      out.write("\thref=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css\"\r\n");
      out.write("\tintegrity=\"sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp\"\r\n");
      out.write("\tcrossorigin=\"anonymous\">\r\n");
      out.write("\r\n");
      out.write("<!-- Latest compiled and minified JavaScript -->\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js\"\r\n");
      out.write("\tintegrity=\"sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa\"\r\n");
      out.write("\tcrossorigin=\"anonymous\"></script>\r\n");
      out.write("\r\n");
      out.write("<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->\r\n");
      out.write("<link\r\n");
      out.write("\thref=\"http://getbootstrap.com/assets/css/ie10-viewport-bug-workaround.css\"\r\n");
      out.write("\trel=\"stylesheet\">\r\n");
      out.write("\r\n");
      out.write("<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->\r\n");
      out.write("<!--[if lt IE 9]><script src=\"../../assets/js/ie8-responsive-file-warning.js\"></script><![endif]-->\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"http://getbootstrap.com/assets/js/ie-emulation-modes-warning.js\"></script>\r\n");
      out.write("\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<title>");
      if (_jspx_meth_tiles_getAsString_0(_jspx_page_context))
        return;
      out.write("</title>\r\n");
      out.write("<!-- Custom styles for this template -->\r\n");
      out.write("<link href=\"http://getbootstrap.com/examples/cover/cover.css\"\r\n");
      out.write("\trel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("\r\n");
      out.write("<body>\r\n");
      out.write("\r\n");
      out.write("\r\n");
      //  tilesx:useAttribute
      org.apache.tiles.jsp.taglib.UseAttributeTag _jspx_th_tilesx_useAttribute_0 = (_jspx_resourceInjector != null)? _jspx_resourceInjector.createTagHandlerInstance(org.apache.tiles.jsp.taglib.UseAttributeTag.class) : new org.apache.tiles.jsp.taglib.UseAttributeTag();
      _jspx_th_tilesx_useAttribute_0.setJspContext(_jspx_page_context);
      _jspx_th_tilesx_useAttribute_0.setName("current");
      _jspx_th_tilesx_useAttribute_0.doTag();
      if (_jspx_resourceInjector != null) _jspx_resourceInjector.preDestroy(_jspx_th_tilesx_useAttribute_0);
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"navbar-wrapper\">\r\n");
      out.write("\t\t<div class=\"container\">\r\n");
      out.write("\r\n");
      out.write("\t\t\t<nav class=\"navbar navbar-inverse navbar-static-top navbar-default navbar-fixed-top\">\r\n");
      out.write("\t\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\t<div class=\"navbar-header\">\r\n");
      out.write("\t\t\t\t\t\t<button type=\"button\" class=\"navbar-toggle collapsed\"\r\n");
      out.write("\t\t\t\t\t\t\tdata-toggle=\"collapse\" data-target=\"#navbar\"\r\n");
      out.write("\t\t\t\t\t\t\taria-expanded=\"false\" aria-controls=\"navbar\">\r\n");
      out.write("\t\t\t\t\t\t\t<span class=\"sr-only\">Toggle navigation</span> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"icon-bar\"></span> <span class=\"icon-bar\"></span> <span\r\n");
      out.write("\t\t\t\t\t\t\t\tclass=\"icon-bar\"></span>\r\n");
      out.write("\t\t\t\t\t\t</button>\r\n");
      out.write("\t\t\t\t\t\t<div class=\"navbar-brand\">AcmeGallery</div>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t\t<div id=\"navbar\" class=\"navbar-collapse collapse\">\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav navbar-nav\">\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${current == 'index' ? 'active' : ''}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\">\r\n");
      out.write("\t\t\t\t\t\t\t\t<a href='");
      if (_jspx_meth_spring_url_0(_jspx_page_context))
        return;
      out.write("'>Home</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#about\">Users</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#contact\">Il mio account</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li class=\"dropdown\"><a href=\"#\" class=\"dropdown-toggle\"\r\n");
      out.write("\t\t\t\t\t\t\t\tdata-toggle=\"dropdown\" role=\"button\" aria-haspopup=\"true\"\r\n");
      out.write("\t\t\t\t\t\t\t\taria-expanded=\"false\">Naviga per<span class=\"caret\"></span></a>\r\n");
      out.write("\t\t\t\t\t\t\t\t<ul class=\"dropdown-menu\">\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Autore dell'opera</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li ><a href=\"#\">Anno di realizzazione</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t\t<li><a href=\"#\">Tecnica</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t\t</li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t\t<ul class=\"nav navbar-nav navbar-right navbar-default\">\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Registrati</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Login</a></li>\r\n");
      out.write("\t\t\t\t\t\t\t<li><a href=\"#\">Logout</a></li>\r\n");
      out.write("\t\t\t\t\t\t</ul>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</nav>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<br>\r\n");
      out.write("\r\n");
      out.write("\t<div class=\"container\">\r\n");
      out.write("\t<div class=\"inner cover\">\r\n");
      out.write("\t\t");
      if (_jspx_meth_tiles_insertAttribute_0(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\t</div>\r\n");
      out.write("\t</div>\r\n");
      out.write("\r\n");
      out.write("\t<br>\r\n");
      out.write("\t<br>\r\n");
      out.write("\r\n");
      out.write("\t");
      if (_jspx_meth_tiles_insertAttribute_1(_jspx_page_context))
        return;
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- Bootstrap core JavaScript\r\n");
      out.write("    ================================================== -->\r\n");
      out.write("\t<!-- Placed at the end of the document so the pages load faster -->\r\n");
      out.write("\t<script\r\n");
      out.write("\t\tsrc=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\r\n");
      out.write("\t<script>\r\n");
      out.write("\t\twindow.jQuery\r\n");
      out.write("\t\t\t\t|| document\r\n");
      out.write("\t\t\t\t\t\t.write('<script src=\"../../assets/js/vendor/jquery.min.js\"><\\/script>')\r\n");
      out.write("\t</script>\r\n");
      out.write("\t<script src=\"http://getbootstrap.com/dist/js/bootstrap.min.js\"></script>\r\n");
      out.write("\t<!-- Just to make our placeholder images work. Don't actually copy the next line! -->\r\n");
      out.write("\t<script src=\"http://getbootstrap.com/assets/js/vendor/holder.min.js\"></script>\r\n");
      out.write("\t<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->\r\n");
      out.write("\t<script\r\n");
      out.write("\t\tsrc=\"http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js\"></script>\r\n");
      out.write("\t<script\r\n");
      out.write("\t\ttype=\"http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js\"></script>\r\n");
      out.write("\r\n");
      out.write("</body>\r\n");
      out.write("</html>\r\n");
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

  private boolean _jspx_meth_tiles_getAsString_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tiles:getAsString
    org.apache.tiles.jsp.taglib.GetAsStringTag _jspx_th_tiles_getAsString_0 = (_jspx_resourceInjector != null)? _jspx_resourceInjector.createTagHandlerInstance(org.apache.tiles.jsp.taglib.GetAsStringTag.class) : new org.apache.tiles.jsp.taglib.GetAsStringTag();
    _jspx_th_tiles_getAsString_0.setJspContext(_jspx_page_context);
    _jspx_th_tiles_getAsString_0.setName("title");
    _jspx_th_tiles_getAsString_0.doTag();
    if (_jspx_resourceInjector != null) _jspx_resourceInjector.preDestroy(_jspx_th_tiles_getAsString_0);
    return false;
  }

  private boolean _jspx_meth_spring_url_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  spring:url
    org.springframework.web.servlet.tags.UrlTag _jspx_th_spring_url_0 = (org.springframework.web.servlet.tags.UrlTag) _jspx_tagPool_spring_url_value_nobody.get(org.springframework.web.servlet.tags.UrlTag.class);
    _jspx_th_spring_url_0.setPageContext(_jspx_page_context);
    _jspx_th_spring_url_0.setParent(null);
    _jspx_th_spring_url_0.setValue("/");
    int[] _jspx_push_body_count_spring_url_0 = new int[] { 0 };
    try {
      int _jspx_eval_spring_url_0 = _jspx_th_spring_url_0.doStartTag();
      if (_jspx_th_spring_url_0.doEndTag() == javax.servlet.jsp.tagext.Tag.SKIP_PAGE) {
        return true;
      }
    } catch (Throwable _jspx_exception) {
      while (_jspx_push_body_count_spring_url_0[0]-- > 0)
        out = _jspx_page_context.popBody();
      _jspx_th_spring_url_0.doCatch(_jspx_exception);
    } finally {
      _jspx_th_spring_url_0.doFinally();
      _jspx_tagPool_spring_url_value_nobody.reuse(_jspx_th_spring_url_0);
    }
    return false;
  }

  private boolean _jspx_meth_tiles_insertAttribute_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tiles:insertAttribute
    org.apache.tiles.jsp.taglib.InsertAttributeTag _jspx_th_tiles_insertAttribute_0 = (_jspx_resourceInjector != null)? _jspx_resourceInjector.createTagHandlerInstance(org.apache.tiles.jsp.taglib.InsertAttributeTag.class) : new org.apache.tiles.jsp.taglib.InsertAttributeTag();
    _jspx_th_tiles_insertAttribute_0.setJspContext(_jspx_page_context);
    _jspx_th_tiles_insertAttribute_0.setName("body");
    _jspx_th_tiles_insertAttribute_0.doTag();
    if (_jspx_resourceInjector != null) _jspx_resourceInjector.preDestroy(_jspx_th_tiles_insertAttribute_0);
    return false;
  }

  private boolean _jspx_meth_tiles_insertAttribute_1(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  tiles:insertAttribute
    org.apache.tiles.jsp.taglib.InsertAttributeTag _jspx_th_tiles_insertAttribute_1 = (_jspx_resourceInjector != null)? _jspx_resourceInjector.createTagHandlerInstance(org.apache.tiles.jsp.taglib.InsertAttributeTag.class) : new org.apache.tiles.jsp.taglib.InsertAttributeTag();
    _jspx_th_tiles_insertAttribute_1.setJspContext(_jspx_page_context);
    _jspx_th_tiles_insertAttribute_1.setName("footer");
    _jspx_th_tiles_insertAttribute_1.doTag();
    if (_jspx_resourceInjector != null) _jspx_resourceInjector.preDestroy(_jspx_th_tiles_insertAttribute_1);
    return false;
  }
}
