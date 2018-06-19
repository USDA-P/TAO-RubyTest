Feature:  Tests the AER workflow.

  @Anet_AER
  Scenario: Test the ability of AER Workflow

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "LUCY ANTHENILL" into "Full Name" on "anetaer/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetaer/displayloginaction.do" page
    And the user can see text "LUCY ANTHENILL"
    And the user clicks on "Create AER" element on "anetaer/displayloginaction.do" page
    And the user enters "Automation Test" into "Reason for Aer" text area box on "anetaer/displayloginaction.do" page
    And the user selects "All Case Files" from "Type of AER" drop down on "anetaer/displayloginaction.do" page
    And the user selects "Yes" from "Trigger" drop down on "anetaer/displayloginaction.do" page
    And the user clicks on "Save General Information" element on "anetaer/displayloginaction.do" page
    And the user clicks on "Evidence Collected" element on "anetaer/displayloginaction.do" page
    And the user enters "Todays Date" into "Date of Evidence Destruction" on "anetaer/displayloginaction.do" page
    And the user clicks on "Save Evidence Summary" element on "anetaer/displayloginaction.do" page
    And the user clicks on "AER Form 5400-9" element on "anetaer/displayloginaction.do" page
    And the user selects "G1606" from "Establishment number" drop down on "anetaer/displayloginaction.do" page
    And the user clicks on "Type of Inspected Buiseness" element on "anetaer/displayloginaction.do" page
    And the user clicks on "Plant size" element on "anetaer/displayloginaction.do" page
    And the user check "NonCompliance Type" checkbox on "anetaer/displayloginaction.do" page
    And the user check "Laboratory Findings" checkbox on "anetaer/displayloginaction.do" page
    And the user check "Product Type" checkbox on "anetaer/displayloginaction.do" page
    And the user enters "Todays Date" into "Custom Date" on "anetaer/displayloginaction.do" page
    And the user enters "Todays Date" into "AA DAA Date" on "anetaer/displayloginaction.do" page
    And the user check "Processing Categories" checkbox on "anetaer/displayloginaction.do" page
    And the user clicks on "Save AER Form 5400-9" element on "anetaer/displayloginaction.do" page
    Then the user clicks on "Past Related AERs" element on "anetaer/displayloginaction.do" page
    And the user clicks on "Add AER Link" element on "anetaer/displayloginaction.do" page
    And the switch to new tab page
    And the user selects "All Case Files" from "AER Type" drop down on "anetaer/displayloginaction.do" page
    And the user clicks on "Search" element on "anetaer/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks on "Report Number" element on "anetaer/displayloginaction.do" page
    And the return to main page
    And the user clicks on "Closing Information" element on "anetaer/displayloginaction.do" page
    And the user selects "Yes" from "Did Appeal Occur" drop down on "anetaer/displayloginaction.do" page
    And the user enters "Todays Date" into "Appeal Date" on "anetaer/displayloginaction.do" page
    And the user selects "Yes" from "was Appeal reviewed" drop down on "anetaer/displayloginaction.do" page
    And the user selects "Granted" from "Appeal Decision" drop down on "anetaer/displayloginaction.do" page
    And the user enters "Todays Date" into "Decision Date" on "anetaer/displayloginaction.do" page
    And the user enters "Automation test" into "Additional Comments" text area box on "anetaer/displayloginaction.do" page
    And the user clicks on "Save Closing Information" element on "anetaer/displayloginaction.do" page
    Then the user clicks on "AER Review" element on "anetaer/displayloginaction.do" page
    And the user selects "Yes" from "DCS Question1" drop down on "anetaer/displayloginaction.do" page
    And the user enters "Automation test" into "DCS Question1 Text" text area box on "anetaer/displayloginaction.do" page
    And the user enters "DCS Comments" into "DCS Comments" text area box on "anetaer/displayloginaction.do" page
    And the user clicks on "Save AER Review Information" element on "anetaer/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "anetaer/displayloginaction.do" page
    And the user clicks on "Go" element on "anetaer/displayloginaction.do" page
    And the user can see text "The record has been successfully submitted to the system."
    And the user remembers the value of "Report Id" field on "anetaer/displayloginaction.do" page
    And the user selects "Forward to DDM/DM" from "Action" drop down on "anetaer/displayloginaction.do" page
    And the user clicks on "Go" element on "anetaer/displayloginaction.do" page
    And the user can see text "The record has been successfully transferred."
    Then the user selects "P: DM-05" from "Role" drop down on "anetaer/displayloginaction.do" page
    And the user clicks on "View AER" element on "anetaer/displayloginaction.do" page
    And the user split and enters current value of "Report Id" into "Search Report Number" on "anetaer/displayloginaction.do" page
    And the user clicks on "Search" element on "anetaer/displayloginaction.do" page
    And the user clicks on "Report Number" element on "anetaer/displayloginaction.do" page
    And the user selects "Edit" from "Action" drop down on "anetaer/displayloginaction.do" page
    And the user clicks on "Go" element on "anetaer/displayloginaction.do" page
    Then the user clicks on "AER Review" element on "anetaer/displayloginaction.do" page
    And the user enters "DDM Comments" into "DDM Comments" text area box on "anetaer/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "anetaer/displayloginaction.do" page
    And the user clicks on "Go" element on "anetaer/displayloginaction.do" page
    And the user can see text "Attention: Change History: Change Description - Please enter a value."
    And the user enters "change1" into "additional comments changed" text area box on "product control" page
    And the user selects "Submit" from "Action" drop down on "product control" page
    And the user clicks on "Go" element on "product control" page
    And the user can see text "The record has been successfully submitted to the system."
    And the user clicks the link with text "Logout"
    And the user closes alert and accepts prompts or confirm pop-ups
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "KEITH GILMORE" into "Full Name" on "anetaer/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetaer/displayloginaction.do" page
    And the user can see text "KEITH GILMORE"
    And the user waits for 2 seconds
    And the user clicks on "EARO View AER" element on "anetaer/displayloginaction.do" page
    And the user split and enters current value of "Report Id" into "Search Report Number" on "anetaer/displayloginaction.do" page
    And the user clicks on "Search" element on "anetaer/displayloginaction.do" page
    And the user clicks on "Report Number" element on "anetaer/displayloginaction.do" page
    And the user selects "Edit" from "Action" drop down on "anetaer/displayloginaction.do" page
    And the user clicks on "Go" element on "anetaer/displayloginaction.do" page
    Then the user clicks on "AER Review" element on "anetaer/displayloginaction.do" page
    And the user check "EARO checkbox" checkbox on "anetaer/displayloginaction.do" page
    And the user enters "EARO Comments" into "EARO Comments" text area box on "anetaer/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "anetaer/displayloginaction.do" page
    And the user clicks on "Go" element on "anetaer/displayloginaction.do" page
    And the user can see text "Attention: Change History: Change Description - Please enter a value."
    And the user enters "change1" into "additional comments changed" text area box on "product control" page
    And the user selects "Submit" from "Action" drop down on "product control" page
    And the user clicks on "Go" element on "product control" page
    And the user can see text "The record has been successfully submitted to the system."