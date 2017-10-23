<%-- 
    Document   : tabJsp
    Created on : Oct 10, 2017, 10:33:16 AM
    Author     : krijhwan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>BCT App</title>

        <style>

            /* tooltip */


            .tool-tip{
                color: black;
                background-color: #e7e7e7;
                text-shadow: none;
                font-size: 1.0em;
                visibility: hidden;
                -webkit-border-radius: 7px; 
                -moz-border-radius: 7px; 
                -o-border-radius: 7px; 
                border-radius: 7px;	
                text-align: center;	
                opacity: 0;
                z-index: 999;
                padding: 3px 8px;	
                position: absolute;
                cursor: default;
                -webkit-transition: all 240ms ease-in-out;
                -moz-transition: all 240ms ease-in-out;
                -ms-transition: all 240ms ease-in-out;
                -o-transition: all 240ms ease-in-out;
                transition: all 240ms ease-in-out;	
            }


            .tool-tip.top:after,
            .tool-tip:after{
                position: absolute;
                bottom: -12px;
                left: 50%;
                margin-left: -7px;
                content: ' ';
                height: 0px;
                width: 0px;
                border: 6px solid transparent;
                border-top-color: #e7e7e7;            }

            /* default heights, width and margin w/o Javscript */

            .tool-tip,
            .tool-tip.top{
                width: 200px;
                height: 150px;
                margin-left: -43px;
            }

            /* tool tip position right */

            .tool-tip.right{
                top: 50%;
                right: auto;
                left: 106%;
                margin-top: -15px;
                margin-right: auto;	
                margin-left: auto;
            }

            .tool-tip.right:after{
                left: -5px;
                top: 50%;	
                margin-top: -6px;
                bottom: auto;
                border-top-color: transparent;	
                border-right-color: #e7e7e7;;	
            }


            /* on hover of element containing tooltip default*/

            /*            *:not(.on-focus):hover > .tool-tip,
                        .on-focus TEXTAREA:focus + .tool-tip{
                            visibility: visible;
                            opacity: 1;
                            -webkit-transition: all 240ms ease-in-out;
                            -moz-transition: all 240ms ease-in-out;
                            -ms-transition: all 240ms ease-in-out;
                            -o-transition: all 240ms ease-in-out;
                            transition: all 240ms ease-in-out;		
                        }*/


            *:not(.on-focus):hover > .tool-tip,
            .on-focus select:focus + .tool-tip{
                visibility: visible;
                opacity: 1;
                -webkit-transition: all 240ms ease-in-out;
                -moz-transition: all 240ms ease-in-out;
                -ms-transition: all 240ms ease-in-out;
                -o-transition: all 240ms ease-in-out;
                transition: all 240ms ease-in-out;		
            }


            /* tool tip slide out */

            *:not(.on-focus) > .tool-tip.slideIn,
            .on-focus > .tool-tip{
                display: block;
            }

            .on-focus > .tool-tip.slideIn{
                z-index: -1;
            }

            /*            .on-focus > TEXTAREA:focus + .tool-tip.slideIn{
                            z-index: 1;
                        }*/

            .on-focus > select:focus + .tool-tip.slideIn{
                z-index: 1;
            }

            /* right slideIn */

            *:not(.on-focus) > .tool-tip.slideIn.right,
            .on-focus > .tool-tip.slideIn.right{
                left: 50%;		
            }

            *:not(.on-focus):hover > .tool-tip.slideIn.right,
            .on-focus > select:focus + .tool-tip.slideIn.right{
                left: 105%;
            }



            div.tab {
                overflow: hidden;
                border: 1px solid #ccc;
                background-color: #f1f1f1;
            }

            div.tab button {
                background-color: inherit;
                float: left;
                border: none;
                outline: none;
                cursor: pointer;
                padding: 14px 16px;
                transition: 0.3s;
            }

            div.tab button:hover {
                background-color: #ddd;
            }

            /* Create an active/current tablink class */
            div.tab button.active {
                background-color: #ccc;
            }

            div.submitTab input:hover {
                background-color: #ddd;
            }

            /* Create an active/current tablink class */
            div.submitTab input.active {
                background-color: #ccc;
            }


            /* Style the tab content */
            .tabcontent {
                display: none;
                padding: 6px 12px;
                border: 1px solid #ccc;
                border-top: none;
            } 

            .button {
                background-color: #e7e7e7; 
                color: black;
                border: none;
                padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
            }

            #submit {
                font-size: 30;
                width: 100px;
                height: 40px;
                border: none;
                margin: 0;
                padding: 0;
                background-color: #e7e7e7; 
                color: black;
            }

            #select, #selectAutomation, #selectLcm, #selectMerge, #selectWptg, #selectAutomationSS, #selectLcmSS, #selectMergeSS, #selectWptgSS
            ,#select508Impact, #select508ImpactSS, #selectDataModel, #selectDataModelSS {
                width : 100%;
            }

            td{
                border: 2px solid black;
                padding: 10px;
            }
            table {
                width:75%;
                border-collapse:collapse;
            }

        textarea{
            width:100%
        }

        #data{
            width:80%
        }

            #popup {
                position: fixed;
                width: 350px;
                height: 200px;
                display: block;
                background: #e7e7e7;
                left: calc(50% - 175px);
                top: 50px;
                padding: 5px;
                z-index: 10;
                box-shadow: 0 0 3px rgba(0, 0, 0, 0.8);
                cursor: default;
                display: none;
            }
            #popUpData h3 {
                border-bottom: 1px solid #999;
            }
            #popup close{
                position: absolute;
                bottom: 10px;
                left: 50%;
                margin-left: -104.5px; /*104.5px is half of the button's width*/
                height: 100px;

            }
            
        </style>
    </head>
    <body>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
        <div id="popup">
            <div id="popUpData">
                <h3>Pop Up Title</h3>
                <p></p>
            </div>
            <a id="close" href=""><b>CLOSE</b></a>
        </div>
        <h1>PSB BCT Generation</h1>
        <div class="tab">
            <button class="tablinks" onclick="openTabs(event, 'Normal')" id="defaultOpen">Normal BCT</button>
            <button class="tablinks" onclick="openTabs(event, 'ShowStopper')">Show Stopper Mode BCT</button>
            <button class="tablinks" onclick="openTabs(event, 'Info')">Information</button>
        </div>

        <div id="Normal" class="tabcontent">
            <form name="myForm" action="displayNormal.jsp" method="POST">
                <table  >
                    <tbody>
                        <tr>
                            <td>
                                <h3>Bug Closing Template</h3>
                            </td>
                            <td align="right" colspan=75%>
                                <input type="submit" value="Submit" name="submit" id="submit"/>
                            </td>
                        </tr>
                        <tr>
                            <td>Problem Description/Current Behavior:</td>
                            <td id="data">
                                    <TEXTAREA NAME="desc" ROWS=3  COLS=70 required></TEXTAREA>
                            </td>
                        </tr>
                        <tr>
                            <td>Resolution/Behavior after fix (also mention if any change in behavior or functionality):</td>
                            <td id="data">    <TEXTAREA NAME="resolution" ROWS=3 COLS=70 required></TEXTAREA>
                            </td>
                        </tr>

                        <tr>
                            <td>Additional fix made (if any):</td>
                            <td id="data">    <TEXTAREA NAME="fixMade" ROWS=3 COLS=70 required></TEXTAREA>
                            </td>
                        </tr>
                        <tr>
                            <td>Test Scenarios(Verified):</td>
                            <td id="data">    <TEXTAREA NAME="testScen" ROWS=3 COLS=70 required></TEXTAREA>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>WPTG Impact:</td>
                            <td id="data" colspan=15%>
                                <div class="on-focus clearfix" style="position: relative; padding: 0px;  margin: 10px auto;">
                                <select name="wptgImapct" id="selectWptg" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                                <div class="tool-tip slideIn right">If yes, please ensure the translation files are checked in and the messages are reviewed by doc team.
                                </div>
                                </div>
                                
                          </td>
                        </tr>
                        <tr>
                            <td>508 Impact:</td>
                            <td id="data">

                                <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                                <select name="508Impact" id="select508Impact" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                    <option value="NA">NA</option>            
                                </select>
                                <div class="tool-tip slideIn right">Have you taken 508 Impact into consideration.
                                </div>
                                </div>
                                    
                          </td>
                        </tr>
                        <tr>
                            <td>Automation Impact:</td>
                            <td id="data">
                                <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                                <select name="automationImpact" id="selectAutomation" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                                <div class="tool-tip slideIn right">Automation may get impacted due to Change in label, Change in position of a component, Introductions of new components (actionable related or layout related etc.)</div>
                                </div>
                                
                          </td>
                        </tr>
                        <tr>
                            <td>Planning Build #:</td>
                            <td id="data"><TEXTAREA NAME="planningBuild" ROWS=1 COLS=70 required></TEXTAREA></td>
                        </tr>
                        <tr>
                            <td>EPM Build #:</td>
                            <td id="data"><TEXTAREA NAME="epmBuild" ROWS=1 COLS=70 required></TEXTAREA></td>
                        </tr>
                        <tr>
                            <td>Reviewer:</td>
                            <td id="data"><TEXTAREA NAME="reviewer" ROWS=1 COLS=70 required></TEXTAREA></td>
                        </tr>
                        <tr>
                            <td>Audit Tool Run (only applicable to .jsff/.jspx files):</td>
                            <td id="data"><TEXTAREA NAME="auditToolRun" ROWS=1 COLS=70 required></TEXTAREA></td>
                        </tr>
                        <tr>
                            <td>Data Model Impact:</td>
                            <td id="data">
                            <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                                <select name="dataModelImpact" id="selectDataModel" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                                </div>
                            </td>                            
                        </tr>
                        <tr>
                            <td>LCM Impact:</td>
                            <td id="data">
                            <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                                <select name="lcmImpact" id="selectLcm" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                            <div class="tool-tip slideIn right">If yes, Please ensure that LCM impact has been taken care off. Mention the bug number through which it will be handled</div>
                                </div>
                                
                                
                          </td>                            

                        </tr>
                        <tr>
                            <td>File Manifest (complete path and version):
                            </td>
                            <td id="data">    <TEXTAREA NAME="fileManifest" ROWS=3 COLS=70 required></TEXTAREA>
                            </td>
                        </tr>
                        <tr>
                            <td>Tests Modified:</td>
                            <td><TEXTAREA NAME="testsm" ROWS=1 COLS=70 required></TEXTAREA></td>
                        </tr>
                                                
                        <tr>
                            <td>Merge Needed:</td>
                            <td id="data">
                                <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                                <select name="mergeNeeded" id="selectMerge" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                                 <div class="tool-tip slideIn right">If merge is needed, Please mention the file versions of merged files.</div>
                                </div>
                                
                                
                          </td>
                        </tr>
                  
                        <tr>
                            <td>Merge Details:</td>
                            <td id="data">
                                    <TEXTAREA NAME="mergeDetails" ROWS=1 COLS=70 required placeholder="--Include Unit Testing Details--"></TEXTAREA></td>
                                

                        </tr>
                        <tr>
                            <td>
                            </td>
                            
                            <td align = "right">
                                <div class="submitTab">
                                   <br><input type="submit" value="Submit" name="submit"  id="submit"/>
                            </td>
                        </tr>
                </tbody>
            </table>
            
            <br><br>  
            </form>
    </div>

    <div id="ShowStopper" class="tabcontent">
        <form name="myForm" action="displaySS.jsp" method="POST">
                <table>
                    <tbody>
                        <tr>
                            <td>
                                <h3>Bug Closing Template</h3>
                            </td>
                            
                            <td align = "right">
                                <input type="submit" value="Submit" name="submit" id="submit"/>
                            </td>
                        </tr>
                        
                        <tr>
                            <td>Problem Description/Current Behavior:</td>
                            <td id="data">
                                <TEXTAREA NAME="desc" ROWS=3  COLS=70 required></TEXTAREA>
                            </td>
                        </tr>

                        <tr>
                            <td>Resolution/Behavior after fix (also mention if any change in behavior or functionality):</td>
                            <td>    <TEXTAREA NAME="resolution" ROWS=3 COLS=70 required></TEXTAREA>
                            </td>
                        </tr>

                        <tr>
                            <td>Additional fix made (if any):</td>
                            <td>    <TEXTAREA NAME="fixMade" ROWS=3 COLS=70 required></TEXTAREA>
                            </td>
                        </tr>
                        <tr>
                            <td>Test Scenarios(Verified):</td>
                            <td>    <TEXTAREA NAME="testScen" ROWS=3 COLS=70 required></TEXTAREA>
                            </td>
                        </tr>
                        <tr>
                            <td>WPTG Impact:</td>
                           <td>
                                <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                                <select name="wptgImapct" id="selectWptgSS" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                                <div class="tool-tip slideIn right">If yes, Please ensure the translation files are checked in and the messages are reviewed by doc team.
                                </div>
                                </div>
                                
                          </td>
                        </tr>
                        <tr>
            
                            <td>508 Impact:</td>
                            <td>
                                <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                                <select name="508Impact" id="select508ImpactSS" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                    <option value="NA">NA</option>            
                                </select>
                                <div class="tool-tip slideIn right">Have you taken 508 Impact into consideration.
                                </div>
                                </div>

                                
                          </td>                            

                        </tr>
                        <tr>
                            <td>Automation Impact:</td>
                            <td>
                                <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                                <select name="automationImpact" id="selectAutomationSS" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                                <div class="tool-tip slideIn right">Automation may get impacted due to Change in label, Change in position of a component, Introductions of new components (actionable related or layout related etc.)</div>
                                </div>
                                
                                
                          </td>
                            
                        </tr>
                        <tr>
                            <td>Planning Build #:</td>
                            <td><TEXTAREA NAME="planningBuild" ROWS=1 COLS=70 required></TEXTAREA></td>
                        </tr>
                        <tr>
                            <td>EPM Build #:</td>
                            <td><TEXTAREA NAME="epmBuild" ROWS=1 COLS=70 required></TEXTAREA></td>
                        </tr>
                        <tr>
                            <td>Reviewer:</td>
                            <td><TEXTAREA NAME="reviewer" ROWS=1 COLS=70 required></TEXTAREA></td>
                        </tr>
                        <tr>
                            <td>Audit Tool Run (only applicable to .jsff/.jspx files):</td>
                            <td><TEXTAREA NAME="auditToolRun" ROWS=1 COLS=70 required></TEXTAREA></td>
                        </tr>
                        <tr>
                            <td>Data Model Impact:</td>
                            <td>
                              <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                              <select name="dataModelImpact" id="selectDataModel" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                                  </div>
                          </td>
                            
                        </tr>
                        <tr>
                            <td>LCM Impact:</td>
                            <td>
                            <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                                <select name="lcmImpact" id="selectLcmSS" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                            <div class="tool-tip slideIn right">If Yes, Please mention that LCM impact has been taken care off. Mention the bug number through which it will be handled</div>
                                </div>
                                
                            </td>
                            
                        </tr>
                        <tr>
                            <td>File Manifest (complete path and version):
                            </td>
                            <td>    <TEXTAREA NAME="fileManifest" ROWS=3 COLS=70 required></TEXTAREA>
                            </td>
                        </tr>
                        <tr>
                            <td>Merge Needed:</td>
                            <td>
                                <div class="on-focus clearfix" style="position: relative; padding: 0px; margin: 10px auto; ">
                                    <select name="mergeNeeded" id="selectMergeSS" required>
                                        <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                        <option value="Yes">Yes</option>
                                        <option value="No">No</option>            
                                    </select>
                                    <div class="tool-tip slideIn right">If Merge is needed, Please mention the file versions of merged files.</div>
                                </div>
                                
                                
                          </td>
              
                        </tr>
                        <tr>
                            <td>Merge Details:</td>
                            <td><TEXTAREA NAME="mergeDetails" ROWS=1 COLS=70 required placeholder="--Include Unit Testing Details--"></TEXTAREA></td>
                        </tr>
                        <tr>
                            <td><b>Information about Development Process during SSA Period</b></td>
                            <td><a href = "https://stbeehive.oracle.com/teamcollab/wiki/PBCSDev:Development+Process+during+SSA+Period" target="_blank">Click Here</td>
                        </tr>
                        <tr>
                            <td>Severity:</td>
                            <td>
                                <select name="severity" id="select" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Low">Low</option>
                                    <option value="Medium">Medium</option>            
                                    <option value="High">High</option>            
                                </select>
                            </td>                            

                        </tr>
                        <tr>
                            <td>WPTG Impact:</td>
                            <td>
                                <select name="sWPTGImpact" id="select" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                          </td>
                          
                        </tr>
                        <tr>
                            <td>Doc Impact:</td>
                            <td>
                                <select name="docImpact" id="select" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                          </td>
                          
                        </tr>
                        <tr>
                            <td>Impact on HIT:</td>
                            <td>
                                <select name="impactHIT" id="select" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                          </td>
                          
                        </tr>
                        <tr>
                            <td>Impact on other products:</td>
                            <td>
                                <select name="impactOther" id="select" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                </select>
                          </td>
                          
                        </tr>
                        <tr>
                            <td>Risk:</td>
                            <td>
                                <select name="risk" id="select" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Low">Low</option>
                                    <option value="Medium">Medium</option>            
                                    <option value="High">High</option>            
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Tests Modified:</td>
                            <td><TEXTAREA NAME="stestsm" ROWS=1 COLS=70 required></TEXTAREA></td>
                        </tr>
                        <tr>
                            <td>508 Testing:</td>
                            <td>
                                <select name="508t" id="select" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>BiDi Testing:</td>
                            <td>
                                <select name="bidit" id="select" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Localization Testing:</td>
                            <td>
                                <select name="localizationt" id="select" required>
                                    <option selected="true" disabled="disabled"> -- Select an Option -- </option>
                                    <option value="Yes">Yes</option>
                                    <option value="No">No</option>            
                                
                                </select>
                            </td>
                        </tr>
                        <tr>
                            <td>Justification:</td>
                            <td><TEXTAREA NAME="justification" ROWS=1 COLS=70 required ></TEXTAREA></td>
                        </tr>

                        <tr>
                            <td></td>
                            <td align = "right">
                                <br><input type="submit" value="Submit" name="submit" id="submit"/></td></tr>
                            </tbody>
                    </table>
                </form>
        </div>

    <div id="Info" class="tabcontent">
        <h3>Important Points</h1>
        <ul>
            <li><b>Preferred to be used in Firefox browser.</b></li>
        <br>
        <li><b>FIREFOX :</b></li>
            <ul style="list-style-type:disc">
            <li>Reloading the page will result in loss of data. Refreshing the page will not.</i></li>
            </ul>
        <br>
        <li><b>CHROME : </b></li>
        <ul style="list-style-type: disc">
        <li>Reloading and Reloading the page will result in loss of data.</b></li>
        </ul>
        </ul>
        
        <br>
        <br>
        
        <h3>Developer Details :</h3>
        
        Name : Kapil Rijhwani
        <br>
        E-Mail Id : 
        <a href="mailto:kapil.rijhwani@oracle.com?subject=BCT Application Response">kapil.rijhwani@oracle.com</a>
        
        <br>
        <br>
        <br>
        
    </div>

        <script>
            function openTabs(evt, tabName) {
                var i, tabcontent, tablinks;
                tabcontent = document.getElementsByClassName("tabcontent");
                for (i = 0; i < tabcontent.length; i++) {
                    tabcontent[i].style.display = "none";
                }
                tablinks = document.getElementsByClassName("tablinks");
                for (i = 0; i < tablinks.length; i++) {
                    tablinks[i].className = tablinks[i].className.replace(" active", "");
                }
                document.getElementById(tabName).style.display = "block";
                evt.currentTarget.className += " active";
            }

            document.getElementById("defaultOpen").click();



            //            var popup = $('#popup'),
            //                    popupData = $('#popUpData'),
            //                    selectWptg = $('#selectWptg'),
            //                    selectAutomation = $('#selectAutomation'),
            //                    selectLcm = $('#selectLcm'),
            //                    selectMerge = $('#selectMerge')
            //
            //            selectWptgSS = $('#selectWptgSS'),
            //                    selectAutomationSS = $('#selectAutomationSS'),
            //                    selectLcmSS = $('#selectLcmSS'),
            //                    selectMergeSS = $('#selectMergeSS')
            //
            //                    ;
            //
            //            $('#popup #close').on('click', function (evt) {
            //                evt.preventDefault();
            //                popup.hide();
            //            });
            //
            //            selectWptg.change(function () {
            //                if (selectWptg.val() == "Yes") {
            //                    popupData.html("<h3> Information </h3> <p>Please ensure the translation files are checked in and the messages are reviewed by doc team.</p>");
            //                    popup.show();
            //
            //                } else {
            //                    popup.hide();
            //                }
            //
            //            });
            //
            //            selectAutomation.change(function () {
            //                if (selectAutomation.val() == "Yes") {
            //                    popupData.html("<h3> Information </h3> <p>Automation may get impacted due to change in Label, change of position of a component, introductions of new components (actionable related, layout related, etc.)</p>");
            //                    popup.show();
            //
            //                } else {
            //                    popup.hide();
            //                }
            //
            //            });
            //            selectLcm.change(function () {
            //                if (selectLcm.val() == "Yes") {
            //                    popupData.html("<h3> Information </h3> <p>Please mention that LCM impact has been taken care off. Or mention the bug number through which it will be handled</p>");
            //                    popup.show();
            //
            //                } else {
            //                    popup.hide();
            //                }
            //
            //            });
            //            selectMerge.change(function () {
            //                if (selectMerge.val() == "Yes") {
            //                    popupData.html("<h3> Information </h3> <p>Please mention the file versions of merged files.</p>");
            //                    popup.show();
            //
            //                } else {
            //                    popup.hide();
            //                }
            //
            //            });
            //            selectWptgSS.change(function () {
            //                if (selectWptgSS.val() == "Yes") {
            //                    popupData.html("<h3> Information </h3> <p>Please ensure the translation files are checked in and the messages are reviewed by doc team.</p>");
            //                    popup.show();
            //
            //                } else {
            //                    popup.hide();
            //                }
            //
            //            });
            //
            //            selectAutomationSS.change(function () {
            //                if (selectAutomationSS.val() == "Yes") {
            //                    popupData.html("<h3> Information </h3> <p>Automation may get impacted due to change in Label, change of position of a component, introductions of new components (actionable related, layout related, etc.)</p>");
            //                    popup.show();
            //
            //                } else {
            //                    popup.hide();
            //                }
            //
            //            });
            //            selectLcmSS.change(function () {
            //                if (selectLcmSS.val() == "Yes") {
            //                    popupData.html("<h3> Information </h3> <p>Please mention that LCM impact has been taken care off. Or mention the bug number through which it will be handled</p>");
            //                    popup.show();
            //
            //                } else {
            //                    popup.hide();
            //                }
            //
            //            });
            //            selectMergeSS.change(function () {
            //                if (selectMergeSS.val() == "Yes") {
            //                    popupData.html("<h3> Information </h3> <p>Please mention the file versions of merged files.</p>");
            //                    popup.show();
            //
            //                } else {
            //                    popup.hide();
            //                }
            //
            //            });
                        </script>

    </body>
</html>
