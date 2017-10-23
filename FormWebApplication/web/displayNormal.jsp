<%-- 
    Document   : display
    Created on : Oct 9, 2017, 4:36:56 PM
    Author     : krijhwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BCT App</title>
        <style>

            #content {
                position: relative;
            }
            #content img {
                position: fixed;
                top: 10px;
                right: 10px;
                height: 30px;
                width: 30px;
            }
            #content button {
                position: fixed;
                top: 10px;
                right: 10px;
                height: 30px;
                width: 30px;
            }

        </style>

    </head>
    <body>
        <div id = "content">
            <h1>Normal BCT</h1>
            <button class="btn" data-clipboard-action="copy" data-clipboard-target="#bctData"> 
                <img src="copydata.jpg" height=30 width=30 alt="Copy to clipboard" id="image">
            </button>
            <script src="clipboard.min.js"></script>

            <script>
                var clipboard = new Clipboard('.btn');
                clipboard.on('success', function (e) {
                    console.log(e);
                });
                clipboard.on('error', function (e) {
                    console.log(e);
                });
            </script>
        </div>
        
        <div id = "bctData">       
            <%
                String desc = request.getParameter("desc");
                String resolution = request.getParameter("resolution");
                String fixMade = request.getParameter("fixMade");
                String testScen = request.getParameter("testScen");
                String verifiedTestCases = request.getParameter("verifiedTestCases");
                String wptgImapct = request.getParameter("wptgImapct");
                String fiveZeroEightImpact = request.getParameter("508Impact");
                String automationImpact = request.getParameter("automationImpact");
                String planningBuild = request.getParameter("planningBuild");
                String epmBuild = request.getParameter("epmBuild");
                String reviewer = request.getParameter("reviewer");
                String auditToolRun = request.getParameter("auditToolRun");
                String dataModelImpact = request.getParameter("dataModelImpact");
                String lcmImpact = request.getParameter("lcmImpact");
                String fileManifest = request.getParameter("fileManifest");
                String testsm = request.getParameter("testsm");
                String mergeNeeded = request.getParameter("mergeNeeded");
                String mergeDetails = request.getParameter("mergeDetails");

            %>
            ===================================================================
            <br>
            Problem Description/Current Behavior:   
            <br>
            <%= desc%>  
            <br>
            <br>
            Resolution/Behavior after fix (also mention if any change in behavior or
            functionality): 
            <br>
            <%= resolution%>  
            <br>
            <br>
            ---------------------------------------------------------------------------------------------------------------- 
            <br>
            <br>
            Additional fix made (if any):  
            <br>
            <%= fixMade%>  
            <br>
            <br>
            Test Scenarios(Verified):  
            <br>
            <%= testScen%>  
            <br>
            <br>
            WPTG Impact:  
            <br>
            <%= wptgImapct%>  
            <br>
            <br>
            508 Impact:  
            <br>
            <%= fiveZeroEightImpact%>  
            <br>
            <br>
            Automation Impact:  
            <br>
            <%= automationImpact%>  
            <br>
            <br>
            Fix available in Build:  
            <br>

            Planning Build #:  
            <%= planningBuild%>  
            <br>
            EPM Build #:   
            <%= epmBuild%>  
            <br>
            ===================================================================
            <br>
            Dev related info & check list:
            <br>
            ===================================================================
            <br>
            Reviewer:  
            <br> 
            <%= reviewer%>  
            <br>
            <br> 
            Audit Tool Run (only applicable to .jsff/.jspx files):  
            <br> 
            <%= auditToolRun%>  
            <br>
            <br> 
            Data Model Impact:  
            <br> 
            <%= dataModelImpact%>  
            <br>
            <br> 
            LCM Impact:  
            <br> 
            <%= lcmImpact%>  
            <br>
            <br> 
            File Manifest (complete path and version):  
            <br> 
            <%= fileManifest%>  
            <br>
            <br> 
            Tests Modified:  
            <br> 
            <%= testsm%>  
            <br>
            <br> 
            Merge Needed:  
            <br> 
            <%= mergeNeeded%>  
            <br>
            <br> 
            Merge Details:  
            <br> 
            <%= mergeDetails%>  
            <br>
            <br> 
            ===================================================================
            <br>
        </div>   
    </body>
</html>
