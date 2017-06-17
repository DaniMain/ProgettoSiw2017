package org.apache.jsp.WEB_002dINF.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">\r\n");
      out.write("<html>\r\n");
      out.write("<head>\r\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\r\n");
      out.write("<!-- Just for debugging purposes. Don't actually copy these 2 lines! -->\r\n");
      out.write("<!--[if lt IE 9]><script src=\"../../assets/js/ie8-responsive-file-warning.js\"></script><![endif]-->\r\n");
      out.write("<script\r\n");
      out.write("\tsrc=\"http://getbootstrap.com/assets/js/ie-emulation-modes-warning.js\"></script>\r\n");
      out.write("<!-- Custom styles for this template -->\r\n");
      out.write("<link href=\"http://getbootstrap.com/examples/carousel/carousel.css\"\r\n");
      out.write("\trel=\"stylesheet\">\r\n");
      out.write("</head>\r\n");
      out.write("<body style=\"background-color:grey\">\r\n");
      out.write("\r\n");
      out.write("\t<!-- <center>\r\n");
      out.write("\t\t<h1 style=\"color:white\">La migliore galleria di arte moderna</h1>\r\n");
      out.write("\t</center> -->\r\n");
      out.write("\t<!-- Carousel\r\n");
      out.write("    ================================================== -->\r\n");
      out.write("\t<div id=\"myCarousel\" class=\"carousel slide\" data-ride=\"carousel\">\r\n");
      out.write("\t\t<!-- Indicators -->\r\n");
      out.write("\t\t<ol class=\"carousel-indicators\">\r\n");
      out.write("\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"0\" class=\"active\"></li>\r\n");
      out.write("\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"1\"></li>\r\n");
      out.write("\t\t\t<li data-target=\"#myCarousel\" data-slide-to=\"2\"></li>\r\n");
      out.write("\t\t</ol>\r\n");
      out.write("\t\t<div class=\"carousel-inner\" role=\"listbox\">\r\n");
      out.write("\t\t\t<div class=\"item active\">\r\n");
      out.write("\t\t\t\t<img class=\"first-slide\" alt=\"l'ultima cena\"\r\n");
      out.write("\t\t\t\t\tsrc=\"http://www.scudit.net/mdleonardo_file/cenacolo100.jpg\">\r\n");
      out.write("\t\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\t<div class=\"carousel-caption\">\r\n");
      out.write("\t\t\t\t\t\t<h1>Le opere più belle</h1>\r\n");
      out.write("\t\t\t\t\t\t<p>Vieni a visitare il nostro sito per vedere le migliori\r\n");
      out.write("\t\t\t\t\t\t\topere di arte moderna e non solo</p>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"item\">\r\n");
      out.write("\t\t\t\t<img class=\"second-slide\"\r\n");
      out.write("\t\t\t\t\tsrc=\"http://aforismi.meglio.it/img/frasi/quadri.jpg\"\r\n");
      out.write("\t\t\t\t\talt=\"notte stellata\">\r\n");
      out.write("\t\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\t<div class=\"carousel-caption\">\r\n");
      out.write("\t\t\t\t\t\t<h1>Gli artisti più famosi</h1>\r\n");
      out.write("\t\t\t\t\t\t<p>Le opere inserite sono dei migliori maestri che hanno fatto\r\n");
      out.write("\t\t\t\t\t\t\tla storia</p>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t\t<div class=\"item\">\r\n");
      out.write("\t\t\t\t<img class=\"third-slide\"\r\n");
      out.write("\t\t\t\t\tsrc=\"http://www.theartpostblog.com/wp-content/uploads/2016/05/monet-impressione-levar-del-sole.jpg\"\r\n");
      out.write("\t\t\t\t\talt=\"Impressione al levar del sole\">\r\n");
      out.write("\t\t\t\t<div class=\"container\">\r\n");
      out.write("\t\t\t\t\t<div class=\"carousel-caption\">\r\n");
      out.write("\t\t\t\t\t\t<h1>Iscriviti gratis</h1>\r\n");
      out.write("\t\t\t\t\t\t<p>Il nostro sito è completamente gratuito! Cosa aspetti?</p>\r\n");
      out.write("\t\t\t\t\t</div>\r\n");
      out.write("\t\t\t\t</div>\r\n");
      out.write("\t\t\t</div>\r\n");
      out.write("\t\t</div>\r\n");
      out.write("\t\t<a class=\"left carousel-control\" href=\"#myCarousel\" role=\"button\"\r\n");
      out.write("\t\t\tdata-slide=\"prev\"> <span class=\"glyphicon glyphicon-chevron-left\"\r\n");
      out.write("\t\t\taria-hidden=\"true\"></span> <span class=\"sr-only\">Previous</span>\r\n");
      out.write("\t\t</a> <a class=\"right carousel-control\" href=\"#myCarousel\" role=\"button\"\r\n");
      out.write("\t\t\tdata-slide=\"next\"> <span\r\n");
      out.write("\t\t\tclass=\"glyphicon glyphicon-chevron-right\" aria-hidden=\"true\"></span>\r\n");
      out.write("\t\t\t<span class=\"sr-only\">Next</span>\r\n");
      out.write("\t\t</a>\r\n");
      out.write("\t</div>\r\n");
      out.write("\t<!-- /.carousel -->\r\n");
      out.write("\r\n");
      out.write("\r\n");
      out.write("\t<!-- Bootstrap core JavaScript\r\n");
      out.write("    ================================================== -->\r\n");
      out.write("\t<!-- Placed at the end of the document so the pages load faster -->\r\n");
      out.write("\t<script\r\n");
      out.write("\t\tsrc=\"https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js\"></script>\r\n");
      out.write("\t<script>window.jQuery || document.write('<script src=\"../../assets/js/vendor/jquery.min.js\"><\\/script>')</script>\r\n");
      out.write("\t<!-- <script src=\"http://getbootstrap.com/dist/js/bootstrap.min.js\"></script> -->\r\n");
      out.write("\t<!-- Just to make our placeholder images work. Don't actually copy the next line! -->\r\n");
      out.write("\t<script src=\"http://getbootstrap.com/assets/js/vendor/holder.min.js\"></script>\r\n");
      out.write("\t<!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->\r\n");
      out.write("\t<script\r\n");
      out.write("\t\tsrc=\"http://getbootstrap.com/assets/js/ie10-viewport-bug-workaround.js\"></script>\r\n");
      out.write("</body>\r\n");
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
