package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class displaySS_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("        <title>Show Stopper BCT</title>\n");
      out.write("        <script src=\"clipboard.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div>hello</div>\n");
      out.write("    <button class=\"btn\" data-clipboard-action=\"copy\" data-clipboard-target=\"div\">Copy</button>\n");
      out.write("\n");
      out.write("    <script src=\"clipboard.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- 3. Instantiate clipboard -->\n");
      out.write("    <script>\n");
      out.write("    var clipboard = new Clipboard('.btn');\n");
      out.write("    clipboard.on('success', function(e) {\n");
      out.write("        console.log(e);\n");
      out.write("    });\n");
      out.write("    clipboard.on('error', function(e) {\n");
      out.write("        console.log(e);\n");
      out.write("    });\n");
      out.write("    </script>\n");
      out.write("        <input id=\"foo\" value=\"hello123\">\n");
      out.write("\n");
      out.write("<!-- Trigger -->\n");
      out.write("<button class=\"btn\" data-clipboard-target=\"#foo\">\n");
      out.write("    <img src=\"copydata.jpg\" alt=\"Copy to clipboard\">\n");
      out.write("</button>\n");
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
            String severity = request.getParameter("severity");
            String sWPTGImpact = request.getParameter("sWPTGImpact");
            String docImpact = request.getParameter("docImpact");
            String impactHIT = request.getParameter("impactHIT");
            String impactOther = request.getParameter("impactOther");
            String risk = request.getParameter("risk");
            String justification = request.getParameter("justification");
            
                            

        
      out.write("\n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("     Problem Description/Current Behavior:   \n");
      out.write("    <br>\n");
      out.write("     ");
      out.print( desc);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("     Resolution/Behavior after fix (also mention if any change in behavior or\n");
      out.write("        functionality): \n");
      out.write("    <br>\n");
      out.write("     ");
      out.print( resolution);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    -------------------------------------------------------------------\n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("     Additional fix made (if any):  \n");
      out.write("    <br>\n");
      out.write("     ");
      out.print( fixMade);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("     Test Scenarios:  \n");
      out.write("    <br>\n");
      out.write("     ");
      out.print( testScen);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("     Verified the following:   \n");
      out.write("    <br>\n");
      out.write("     ");
      out.print( verifiedTestCases);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("     WPTG Impact:  \n");
      out.write("    <br>\n");
      out.write("     ");
      out.print( wptgImapct);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("     508 Impact:  \n");
      out.write("     <br>\n");
      out.write("    ");
      out.print( fiveZeroEightImpact);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("    Automation Impact:  \n");
      out.write("    <br>\n");
      out.write("     ");
      out.print( automationImpact);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br>\n");
      out.write("     Fix available in Build:  \n");
      out.write("    <br>\n");
      out.write("       \n");
      out.write("     Planning Build #:  \n");
      out.write("     ");
      out.print( planningBuild);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("     EPM Build #:   \n");
      out.write("     ");
      out.print( epmBuild);
      out.write("  \n");
      out.write("    <br> \n");
      out.write("    <br>\n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("    Dev related info & check list:\n");
      out.write("    <br>\n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("     Reviewer:  \n");
      out.write("    <br> \n");
      out.write("    ");
      out.print( reviewer);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     Audit Tool Run (only applicable to .jsff/.jspx files):  \n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( auditToolRun);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     Data Model Impact:  \n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( dataModelImpact);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     LCM Impact:  \n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( lcmImpact);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     File Manifest (complete path and version):  \n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( fileManifest);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     Merge Needed:  \n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( mergeNeeded);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     Merge Details:  \n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( mergeDetails);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("    Show Stopper Template (SSP/SSA)\n");
      out.write("    <br>\n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("     Severity  \n");
      out.write("    <br> \n");
      out.write("    ");
      out.print( severity);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     WPTG Impact:\n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( sWPTGImpact);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     Doc Impact: \n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( docImpact);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     Impact on HIT:\n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( impactHIT);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     Impact on other products:\n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( impactOther);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     Risk:\n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( risk);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("     Justification: \n");
      out.write("    <br> \n");
      out.write("     ");
      out.print( justification);
      out.write("  \n");
      out.write("    <br>\n");
      out.write("    <br> \n");
      out.write("    ===================================================================\n");
      out.write("    <br>\n");
      out.write("    \n");
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
