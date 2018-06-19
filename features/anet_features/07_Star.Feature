Feature:  Tests the Star workflow.

  @Anet_CST
  Scenario: Test the ability of STAR Workflow
#
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Atiya Khan" into "Full Name" on "anetstar/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetstar/displayloginaction.do" page
    And the user can see text "Atiya Khan"
    And the user waits for 2 seconds
    And the user clicks on "Star Template" element on "anetstar/displayloginaction.do" page
    And the user selects "MISSION RESULTS" from "Header" drop down on "anetstar/displayloginaction.do" page
    And the user selects "Handling/Good Commercial Practices (GCP)" from "Subheader" drop down on "anetstar/displayloginaction.do" page
    And the user selects "Assess understanding of sampling methodology:" from "Section" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Add Element" element on "anetstar/displayloginaction.do" page
    And the user can see "2" text in "sequence" field on "anetstar/displayloginaction.do" page
    And the user enters "Automation test TEST" into "Element" text area box on "anetstar/displayloginaction.do" page
    And the user clicks on "Save Element" element on "anetstar/displayloginaction.do" page
    And the user clicks on "Preview Star Template" element on "anetstar/displayloginaction.do" page
    And the switch to new tab page
    And the user can see text "Automation test"
    And the return to main page
    And the user clicks the link with text "Logout"
    And the user closes alert and accepts prompts or confirm pop-ups
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Jason Schewe" into "Full Name" on "anetstar/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetstar/displayloginaction.do" page
    And the user can see text "Jason Schewe"
    And the user waits for 2 seconds
    And the user clicks on "create star" element on "anetstar/displayloginaction.do" page
    And the user selects "Adams, Charles" from "employee name" drop down on "anetstar/displayloginaction.do" page
    And the user selects "Yes" from "emloyee compliance" drop down on "anetstar/displayloginaction.do" page
    And the user check "compliance followup" checkbox on "anetstar/displayloginaction.do" page
    And the user waits for 3 seconds
    And the user enters "Automation test" into "Compliance Comments" text area box on "anetstar/displayloginaction.do" page
    Then the user selects "Submit" from "Action" drop down on "anetstar/displayloginaction.do" page

    And the user clicks on "Go" element on "anetstar/displayloginaction.do" page
    And the user remembers the value of "Assessment number" field on "anetstar/displayloginaction.do" page
    And the user waits for 3 seconds
    And the user clicks the link with text "Logout"
    And the user closes alert and accepts prompts or confirm pop-ups
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "TODD GERWIG" into "Full Name" on "anetstar/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetstar/displayloginaction.do" page
    And the user can see text "TODD GERWIG"
    And the user waits for 2 seconds
    And the user selects "P: DDM-25" from "role" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "DM View Star" element on "anetstar/displayloginaction.do" page
    And the user selects "2018" from "Fiscal Year" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Search" element on "anetstar/displayloginaction.do" page
#    And the user clicks the name with current value of "assessment number" on"Star" of "Star" page
    And the user clicks the name with current value of "Assessment number" star table on "anetstar/displayloginaction.do" page
#    And the user clicks on "Employee Name Search" element on "anetstar/displayloginaction.do" page
    And the user selects "Edit" from "Action" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Go" element on "anetstar/displayloginaction.do" page
    And the user check "Reviewed by DM" checkbox on "anetstar/displayloginaction.do" page
    And the user enters "Automation test" into "DM Comments" text area box on "anetstar/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "anetstar/displayloginaction.do" page

    And the user clicks the link with text "Logout"
    And the user closes alert and accepts prompts or confirm pop-ups
    Given the user navigates to /anet on browser

    And the user clicks the link with text "Login"
    And the user enters "TODD GERWIG" into "Full Name" on "anetstar/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetstar/displayloginaction.do" page
    And the user can see text "TODD GERWIG"
    And the user waits for 2 seconds
    And the user selects "P: DDM-25" from "role" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "DM View Star" element on "anetstar/displayloginaction.do" page
    And the user selects "2018" from "Fiscal Year" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Search" element on "anetstar/displayloginaction.do" page
    And the user clicks the name with current value of "Assessment number" star table on "anetstar/displayloginaction.do" page
#    And the user clicks on "Employee Name Search" element on "anetstar/displayloginaction.do" page
    And the user selects "Unlock" from "Action" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Go" element on "anetstar/displayloginaction.do" page

    And the user clicks the link with text "Logout"
    And the user closes alert and accepts prompts or confirm pop-ups
    Given the user navigates to /anet on browser

    And the user clicks the link with text "Login"
    And the user enters "Tristan Colonius" into "Full Name" on "anetstar/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetstar/displayloginaction.do" page
    And the user can see text "Tristan Colonius"
    And the user waits for 2 seconds

    And the user clicks on "FLS View Star" element on "anetstar/displayloginaction.do" page
    And the user selects "2018" from "Fiscal Year" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Search" element on "anetstar/displayloginaction.do" page
    And the user clicks the name with current value of "Assessment number" star table on "anetstar/displayloginaction.do" page
#    And the user clicks on "Employee Name Search" element on "anetstar/displayloginaction.do" page
    And the user selects "Edit" from "Action" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Go" element on "anetstar/displayloginaction.do" page
    And the user check "Reviewed by fls" checkbox on "anetstar/displayloginaction.do" page
    And the user enters "Automation test" into "fls Comments" text area box on "anetstar/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Go" element on "anetstar/displayloginaction.do" page


    And the user clicks the link with text "Logout"
    And the user closes alert and accepts prompts or confirm pop-ups
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "KEITH GILMORE" into "Full Name" on "anetstar/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetstar/displayloginaction.do" page
    And the user can see text "KEITH GILMORE"
    And the user waits for 2 seconds

    And the user clicks on "EARO View Star" element on "anetstar/displayloginaction.do" page
    And the user selects "2018" from "Fiscal Year" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Search" element on "anetstar/displayloginaction.do" page
    And the user clicks the name with current value of "Assessment number" star table on "anetstar/displayloginaction.do" page
#    And the user clicks on "Employee Name Search" element on "anetstar/displayloginaction.do" page
    And the user selects "Edit" from "Action" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Go" element on "anetstar/displayloginaction.do" page
    And the user check "Reviewed by earo" checkbox on "anetstar/displayloginaction.do" page
    And the user enters "Automation test" into "earo Comments" text area box on "anetstar/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "anetstar/displayloginaction.do" page
    And the user clicks on "Go" element on "anetstar/displayloginaction.do" page






