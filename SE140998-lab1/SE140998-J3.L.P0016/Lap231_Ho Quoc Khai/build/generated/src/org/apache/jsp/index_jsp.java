package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.apache.jasper.runtime.TagHandlerPool _jspx_tagPool_c_if_test;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspInit() {
    _jspx_tagPool_c_if_test = org.apache.jasper.runtime.TagHandlerPool.getTagHandlerPool(getServletConfig());
  }

  public void _jspDestroy() {
    _jspx_tagPool_c_if_test.release();
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("<!--        <link href=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css\" rel=\"stylesheet\" id=\"bootstrap-css\">\n");
      out.write("        <script src=\"//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js\"></script>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">-->\n");
      out.write("        <title>Assignment 1</title>\n");
      out.write("        <script src='https://www.google.com/recaptcha/api.js?hl=en'></script>\n");
      out.write("        <script src=\"//ajax.googleapis.com/ajax/libs/jquery/2.1.1/jquery.min.js\"></script>\n");
      out.write("        <link href=\"css/indexCss.css\" rel=\"stylesheet\" type=\"text/css\"/>\n");
      out.write("        <meta name=\"google-signin-client_id\" content=\"867484619789-7983ciomcml3l8h5vvm7bdcgtq44aa9m.apps.googleusercontent.com\">\n");
      out.write("        <script src=\"https://apis.google.com/js/platform.js\" async defer></script>\n");
      out.write("        <script>\n");
      out.write("            var clicked = false;//Global Variable\n");
      out.write("            function ClickLogin()\n");
      out.write("            {\n");
      out.write("                clicked = true;\n");
      out.write("            }\n");
      out.write("            function onSignIn(googleUser) {\n");
      out.write("                if (clicked) {\n");
      out.write("                    var profile = googleUser.getBasicProfile();\n");
      out.write("                    console.log('Email: ' + profile.getEmail());\n");
      out.write("                    document.getElementsByName(\"email\").value = profile.getEmail();\n");
      out.write("                    window.location.replace(\"ggLogin.jsp?email=\"+profile.getEmail());\n");
      out.write("                }\n");
      out.write("            }\n");
      out.write("            ;\n");
      out.write("        </script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"wrapper fadeInDown\">\n");
      out.write("            <div id=\"formContent\">\n");
      out.write("\n");
      out.write("                <div class=\"fadeIn first\">\n");
      out.write("                    <img src=\"data:image/png;base64,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\" \n");
      out.write("                         id=\"icon\" alt=\"User Icon\" style=\"width: 100px; height: 100px\"/>\n");
      out.write("                    ");
      if (_jspx_meth_c_if_0(_jspx_page_context))
        return;
      out.write("\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <form action=\"MainController\" method=\"POST\">\n");
      out.write("                    <input type=\"text\" id=\"login\" class=\"fadeIn second\" name=\"txtUserID\" placeholder=\"user id\">\n");
      out.write("                    <input type=\"password\" id=\"password\" class=\"fadeIn third\" name=\"txtPassword\" placeholder=\"password\"><br/>\n");
      out.write("                    <input type=\"submit\" class=\"fadeIn fourth\" value=\"Login\" name=\"btnAction\">\n");
      out.write("                    <a class=\"underlineHover\" href=\"create.jsp\">Create new account</a>\n");
      out.write("                    <div class=\"g-recaptcha\" data-sitekey=\"6LeCic4aAAAAALc8M2VDEdBKmOFMzTa9Ib6O34Qt\" style=\"padding: 15px 80px;\"></div>\n");
      out.write("                </form>\n");
      out.write("                <div id=\"formFooter\">\n");
      out.write("                    <a> <div class=\"g-signin2\" data-onsuccess=\"onSignIn\" onclick=\"ClickLogin()\"></div>\n");
      out.write("                        <input type=\"hidden\" name=\"email\"/></a>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
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

  private boolean _jspx_meth_c_if_0(PageContext _jspx_page_context)
          throws Throwable {
    PageContext pageContext = _jspx_page_context;
    JspWriter out = _jspx_page_context.getOut();
    //  c:if
    org.apache.taglibs.standard.tag.rt.core.IfTag _jspx_th_c_if_0 = (org.apache.taglibs.standard.tag.rt.core.IfTag) _jspx_tagPool_c_if_test.get(org.apache.taglibs.standard.tag.rt.core.IfTag.class);
    _jspx_th_c_if_0.setPageContext(_jspx_page_context);
    _jspx_th_c_if_0.setParent(null);
    _jspx_th_c_if_0.setTest(((java.lang.Boolean) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${not empty ERROR}", java.lang.Boolean.class, (PageContext)_jspx_page_context, null)).booleanValue());
    int _jspx_eval_c_if_0 = _jspx_th_c_if_0.doStartTag();
    if (_jspx_eval_c_if_0 != javax.servlet.jsp.tagext.Tag.SKIP_BODY) {
      do {
        out.write("\n");
        out.write("                        <p style=\"color: red\">");
        out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${ERROR}", java.lang.String.class, (PageContext)_jspx_page_context, null));
        out.write("</p>   \n");
        out.write("                    ");
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
}
