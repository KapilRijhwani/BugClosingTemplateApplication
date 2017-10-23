package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class display2_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>BCT</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <h1>Bug Closing Template</h1>\n");
      out.write("        ");

            String desc = request.getParameter("desc");
            String resolution = request.getParameter("resolution");
            String fixMade = request.getParameter("fixMade");
            String testScen = request.getParameter("testScen");
            String verifiedTestCases = request.getParameter("verifiedTestCases");
            String wptgImapct = request.getParameter("wptgImapct");
            String fiveZeroEightImpact = request.getParameter("508Impact");
            String automationImpact = request.getParameter("automaticImpact");
            String planningBuild = request.getParameter("planningBuild");
            String epmBuild = request.getParameter("epmBuild");
            String reviewer = request.getParameter("reviewer");
            String auditToolRun = request.getParameter("auditToolRun");
            String dataModelImpact = request.getParameter("dataModelImpact");
            String lcmImpact = request.getParameter("lcmImpact");
            String fileManifest = request.getParameter("fileManifest");
            String mergeNeeded = request.getParameter("mergeNeeded");
            String mergeDetails = request.getParameter("mergeDetails");

        
      out.write("\n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("    <td>Problem Description/Current Behavior: </td>\n");
      out.write("    <td>");
      out.print( desc);
      out.write("</td>\n");
      out.write("    <td>Resolution/Behavior after fix (also mention if any change in behavior or\n");
      out.write("        functionality): \n");
      out.write("    </td>\n");
      out.write("    <td>");
      out.print( resolution);
      out.write("</td>\n");
      out.write("    <td>Additional fix made (if any):</td>\n");
      out.write("    <td>");
      out.print( fixMade);
      out.write("</td>\n");
      out.write("    <td>Test Scenarios:</td>\n");
      out.write("    <td>");
      out.print( testScen);
      out.write("</td>\n");
      out.write("    <td>Verified the following: </td>\n");
      out.write("    <td>");
      out.print( verifiedTestCases);
      out.write("</td>\n");
      out.write("    <td>WPTG Impact:</td>\n");
      out.write("    <td>");
      out.print( wptgImapct);
      out.write("</td>\n");
      out.write("\n");
      out.write("    <td>508 Impact:</td>\n");
      out.write("    <td>");
      out.print( fiveZeroEightImpact);
      out.write("</td>\n");
      out.write("\n");
      out.write("    <td>Automation Impact:</td>\n");
      out.write("    <td>");
      out.print( automationImpact);
      out.write("</td>\n");
      out.write("    <td>Fix available in Build:</td>\n");
      out.write("    <td></td>\n");
      out.write("    <td>Planning Build #:</td>\n");
      out.write("    <td>");
      out.print( planningBuild);
      out.write("</td>\n");
      out.write("    <td>EPM Build #: </td>\n");
      out.write("    <td>");
      out.print( epmBuild);
      out.write("</td>\n");
      out.write("    <br>\n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("    <td>Reviewer:</td>\n");
      out.write("    <td>");
      out.print( reviewer);
      out.write("</td>\n");
      out.write("    <td>Audit Tool Run (only applicable to .jsff/.jspx files):</td>\n");
      out.write("    <td>");
      out.print( auditToolRun);
      out.write("</td>\n");
      out.write("    <td>Data Model Impact:</td>\n");
      out.write("    <td>");
      out.print( dataModelImpact);
      out.write("</td>\n");
      out.write("    <td>LCM Impact:</td>\n");
      out.write("    <td>");
      out.print( lcmImpact);
      out.write("</td>\n");
      out.write("    <td>File Manifest (complete path and version):</td>\n");
      out.write("    <td>");
      out.print( fileManifest);
      out.write("</td>\n");
      out.write("    <td>Merge Needed:</td>\n");
      out.write("    <td>");
      out.print( mergeNeeded);
      out.write("</td>\n");
      out.write("    <td>Merge Details:</td>\n");
      out.write("    <td>");
      out.print( mergeDetails);
      out.write("</td>\n");
      out.write("    <br>\n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("\n");
      out.write("</body>\n");
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
