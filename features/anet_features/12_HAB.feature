Feature:  Tests the HAB workflow.

  @Anet_HAB
  Scenario: Test the ability of HAB Workflow with western region

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Valerie Neris" into "Full Name" on "Anet Login" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anet Login" page
    And the user can see text "Valerie Neris"
    And the user waits for 2 seconds
    And the user selects "P: HAB" from "role" drop down on "HAB" page
    And the user clicks on "Create Hearing And Appeals" element on "HAB" page
#    And the user enters "<string>" into "<string>" on "<string>" page
    And the user generates and enters unique value into "case number" on "HAB" page
    And the user waits for 3 seconds
#    And the user remembers the value of "case number" field on "HAB" page
    And the user selects "Arbitration" from "Case Type" drop down on "HAB" page
    And the user enters "Todays Date" into "case assigned date" on "HAB" page
    And the user selects "ASHBY, SHANNON" from "litigator name" drop down on "HAB" page
    And the user enters "Todays Date" into "complaint invocation date" on "HAB" page
    And the user enters "Automation Test" into "Complainant" on "HAB" page
    And the user selects "Chief Financial Officer" from "fsis program area" drop down on "HAB" page
#    And the user selects "Article 1 Recognition And Coverage" from "Basis" drop down on "HAB" page
    And the user clicks on "Basis" element on "HAB" page
    And the user clicks on "Issues" element on "HAB" page
#    And the user selects "Start/End Times" from "Issues" drop down on "HAB" page
    And the user enters "Todays Date" into "litigation hold date" on "HAB" page
    And the user enters "Todays Date" into "Case assessment date" on "HAB" page
    And the user selects "Settlement Agreement - Monetary" from "Disposition" drop down on "HAB" page
    And the user enters "Todays Date" into "Disposition Date" on "HAB" page
#    And the user enters "5000" into "Judgement Amount" on "HAB" page
    And the user selects "Submit" from "Action" drop down on "HAB" page
    And the user clicks on "Go" element on "HAB" page

    And the user clicks on "View HAB" element on "HAB" page
    And the user enters "" into "From Date" on "HAB" page
    And the user enters "" into "To Date" on "HAB" page
    And the user enters current value of "case number" into "case number search" on "HAB" page
#   And the user waits for 2 minutes
    And the user clicks on "Search" element on "HAB" page
#    And the user remembers the value of "<string>" field on "<string>" page
    And the user clicks on "Case Number created" element on "HAB" page
    And the return to main page
    And the user selects "Edit" from "Action" drop down on "HAB" page
    And the user clicks on "Go" element on "HAB" page
    And the user clicks on "Add HAB Link" element on "HAB" page
    And the switch to new tab page
    And the user clicks on "Search Button" element on "HAB" page
    And the switch to new tab page
    And the user clicks on "hab case number" element on "HAB" page
    And the return to main page
    And the user selects "Submit" from "Action" drop down on "HAB" page
    And the user clicks on "Go" element on "AER" page
    And the user can see text "The record has been successfully submitted to the system."
