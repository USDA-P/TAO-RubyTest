Feature:  Tests the IPPS workflow.


  @Anet_CIP
  Scenario:Test the ability to create and edit IPPS
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Jeffrey Eskridge" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Jeffrey Eskridge"
    And the user waits for 2 seconds
    And the user clicks on "Create IPPS" element on "anetipps/displayloginaction.do" page
    And the user selects "Food Inspector - Egg Products" from "occupation type" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Submit" element on "anetipps/displayloginaction.do" page
    And the user selects "Gamez, Maria" from "employee name" drop down on "anetipps/displayloginaction.do" page
    And the user enters "Automation test" into "Prepare for ipps" text area box on "anetipps/displayloginaction.do" page
    And the user enters "Automation test" into "Additional comments" text area box on "anetipps/displayloginaction.do" page
    And the user selects "Yes" from "element satisfactory" drop down on "anetipps/displayloginaction.do" page
    And the user check "followup" checkbox on "anetipps/displayloginaction.do" page
    And the user clicks on "IPPS Submit" element on "anetipps/displayloginaction.do" page
    And the user remembers the value of "assessment number" field on "anetipps/displayloginaction.do" page
    And the user clicks the link with text "Logout"
    And the user closes alert and accepts prompts or confirm pop-ups

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Timothy Morrissey" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Timothy Morrissey"
    And the user waits for 2 seconds
    And the user clicks on "Supv View IPPS" element on "anetipps/displayloginaction.do" page
    And the user selects "2018" from "Fiscal Year" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Search" element on "anetipps/displayloginaction.do" page
    And the user clicks the name with current value of "assessment number" ipps table on "anetipps/displayloginaction.do" page
#   And the user clicks on "Employee Name Search" element on "anetipps/displayloginaction.do" page
    And the user waits for 2 seconds
    And user scrolls down the page
    And the user clicks on "Edit" element on "anetipps/displayloginaction.do" page
    And the user check "supv reviewed" checkbox on "anetipps/displayloginaction.do" page
    And the user enters "Automation test" into "Supv Comments" text area box on "anetipps/displayloginaction.do" page
    And the user clicks on "Supv Submit" element on "anetipps/displayloginaction.do" page
    And the user clicks the link with text "Logout"
    And the user closes alert and accepts prompts or confirm pop-ups

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Paul Wolseley" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Paul Wolseley"
    And the user waits for 2 seconds
    And the user clicks on "ddm view ipps" element on "anetipps/displayloginaction.do" page
    And the user selects "2018" from "Fiscal Year" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Search" element on "anetipps/displayloginaction.do" page
#   And the user clicks on "Employee Name Search" element on "anetipps/displayloginaction.do" page
    And the user clicks the name with current value of "assessment number" ipps table on "anetipps/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks on "DDM Edit" element on "anetipps/displayloginaction.do" page
    And user scrolls down the page
    And the user check "ddm reviewed" checkbox on "anetipps/displayloginaction.do" page
    And the user waits for 2 seconds
    And the user enters "Automation test" into "ddm comments" text area box on "anetipps/displayloginaction.do" page
    And the user clicks on "ddm Submit" element on "anetipps/displayloginaction.do" page
    And the user closes alert and accepts prompts or confirm pop-ups

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Judy Riggins" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Judy Riggins"
    And the user waits for 2 seconds
    And the user clicks on "EARO view IPPS" element on "anetipps/displayloginaction.do" page
    And the user selects "2018" from "Fiscal Year" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Search" element on "anetipps/displayloginaction.do" page
    And the user clicks the name with current value of "assessment number" ipps table on "anetipps/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks on "EARO Edit" element on "anetipps/displayloginaction.do" page
    And the user check "earo reviewed" checkbox on "anetipps/displayloginaction.do" page
    And the user enters "Automation test" into "Earo Comments" text area box on "anetipps/displayloginaction.do" page
    And the user clicks on "Earo Submit" element on "anetipps/displayloginaction.do" page
    And the user clicks the link with text "Logout"


#  @Anet_ICSI
  Scenario: Test the ability of IPPS Workflow

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Atiya Khan" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Atiya Khan"
    And the user waits for 2 seconds
    And user scrolls down the page
    And the user clicks on "Ipps Template" element on "anetipps/displayloginaction.do" page
    And the user clicks on "Open Template Consumer Safety Inspector" element on "anetipps/displayloginaction.do" page
    And the user selects "1. Edited MISSION SUPPORT" from "Header" drop down on "anetipps/displayloginaction.do" page
    And the user selects "HACCP" from "Subheader" drop down on "anetipps/displayloginaction.do" page
    And the user selects "Assess understanding of methodology test:" from "Section" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Add Element" element on "anetipps/displayloginaction.do" page
#    And the user generates and enters unique value into "Element" on "anetipps/displayloginaction.do" page
   And the user enters "Automation test7" into "Element" text area box on "anetipps/displayloginaction.do" page
   And the user remembers the value of "Element" field on "anetipps/displayloginaction.do" page
#    And the user remembers the value of "Element" text box on "anetipps/displayloginaction.do" page
    And the user clicks on "Save Element" element on "anetipps/displayloginaction.do" page
    And the user clicks on "Preview Ipps Template" element on "anetipps/displayloginaction.do" page
    And the switch to new tab page
#    And the user sees the saved value "Element"
    And the user can see text "Automation test7"
    And the return to main page
    And the user clicks on "Publish IPPS Template" element on "anetipps/displayloginaction.do" page
    And the user can see text "Template published successfully."
    And the user clicks the link with text "Logout"

#  @Anet_ICIH
  Scenario: Test the ability of IPPS Workflow

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Atiya Khan" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Atiya Khan"
    And the user waits for 2 seconds
    And user scrolls down the page
    And the user clicks on "Ipps Template" element on "anetipps/displayloginaction.do" page
    And the user clicks on "open template consumer safety inspector himp" element on "anetipps/displayloginaction.do" page
    And the user selects "MISSION SUPPORT" from "Header" drop down on "anetipps/displayloginaction.do" page
    And the user selects "HACCP" from "Subheader" drop down on "anetipps/displayloginaction.do" page
    And the user selects "Assess understanding of methodology:" from "Section" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Add Element" element on "anetipps/displayloginaction.do" page
#    And the user generates and enters unique value into "Element" on "anetipps/displayloginaction.do" page
    And the user enters "Automation test7" into "Element" text area box on "anetipps/displayloginaction.do" page
    And the user remembers the value of "Element" field on "anetipps/displayloginaction.do" page
#    And the user remembers the value of "Element" text box on "anetipps/displayloginaction.do" page
    And the user clicks on "Save Element" element on "anetipps/displayloginaction.do" page
    And the user clicks on "Preview Ipps Template" element on "anetipps/displayloginaction.do" page
    And the switch to new tab page
#    And the user sees the saved value "Element"
    And the user can see text "Automation test7"
    And the return to main page
    And the user clicks on "Publish IPPS Template" element on "anetipps/displayloginaction.do" page
    And the user can see text "Template published successfully."
    And the user clicks the link with text "Logout"


#  @Anet_FIE
    Scenario: Test the ability of IPPS Workflow

      Given the user navigates to /anet on browser
      And the user clicks the link with text "Login"
      And the user enters "Atiya Khan" into "Full Name" on "anetipps/displayloginaction.do" page
      And the user press downkey and enter
      And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
      And the user can see text "Atiya Khan"
      And the user waits for 2 seconds
      And user scrolls down the page
      And the user clicks on "Ipps Template" element on "anetipps/displayloginaction.do" page
      And the user clicks on "open template food inspector eggproducts" element on "anetipps/displayloginaction.do" page
      And the user selects "MISSION SUPPORT" from "Header" drop down on "anetipps/displayloginaction.do" page
      And the user selects "HACCP" from "Subheader" drop down on "anetipps/displayloginaction.do" page
      And the user selects "Assess understanding of methodology:" from "Section" drop down on "anetipps/displayloginaction.do" page
      And the user clicks on "Add Element" element on "anetipps/displayloginaction.do" page
#    And the user generates and enters unique value into "Element" on "anetipps/displayloginaction.do" page
      And the user enters "Automation test7" into "Element" text area box on "anetipps/displayloginaction.do" page
      And the user remembers the value of "Element" field on "anetipps/displayloginaction.do" page
#    And the user remembers the value of "Element" text box on "anetipps/displayloginaction.do" page
      And the user clicks on "Save Element" element on "anetipps/displayloginaction.do" page
      And the user clicks on "Preview Ipps Template" element on "anetipps/displayloginaction.do" page
      And the switch to new tab page
#    And the user sees the saved value "Element"
      And the user can see text "Automation test7"
      And the return to main page
      And the user clicks on "Publish IPPS Template" element on "anetipps/displayloginaction.do" page
      And the user can see text "Template published successfully."
      And the user clicks the link with text "Logout"

#  @Anet_FIX
  Scenario: Test the ability of IPPS Workflow

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Atiya Khan" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Atiya Khan"
    And the user waits for 2 seconds
    And user scrolls down the page
    And the user clicks on "Ipps Template" element on "anetipps/displayloginaction.do" page
    And the user clicks on "open template food inspector exports" element on "anetipps/displayloginaction.do" page
    And the user selects "MISSION SUPPORT" from "Header" drop down on "anetipps/displayloginaction.do" page
    And the user selects "HACCP" from "Subheader" drop down on "anetipps/displayloginaction.do" page
    And the user selects "Assess understanding of methodology:" from "Section" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Add Element" element on "anetipps/displayloginaction.do" page
#    And the user generates and enters unique value into "Element" on "anetipps/displayloginaction.do" page
    And the user enters "Automation test7" into "Element" text area box on "anetipps/displayloginaction.do" page
    And the user remembers the value of "Element" field on "anetipps/displayloginaction.do" page
#    And the user remembers the value of "Element" text box on "anetipps/displayloginaction.do" page
    And the user clicks on "Save Element" element on "anetipps/displayloginaction.do" page
    And the user clicks on "Preview Ipps Template" element on "anetipps/displayloginaction.do" page
    And the switch to new tab page
#    And the user sees the saved value "Element"
    And the user can see text "Automation test7"
    And the return to main page
    And the user clicks on "Publish IPPS Template" element on "anetipps/displayloginaction.do" page
    And the user can see text "Template published successfully."
    And the user clicks the link with text "Logout"



#  @Anet_FIS
  Scenario: Test the ability of IPPS Workflow

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Atiya Khan" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Atiya Khan"
    And the user waits for 2 seconds
    And user scrolls down the page
    And the user clicks on "Ipps Template" element on "anetipps/displayloginaction.do" page
    And the user clicks on "open template food inspector slaughter" element on "anetipps/displayloginaction.do" page
    And the user selects "MISSION SUPPORT" from "Header" drop down on "anetipps/displayloginaction.do" page
    And the user selects "HACCP" from "Subheader" drop down on "anetipps/displayloginaction.do" page
    And the user selects "Assess understanding of methodology:" from "Section" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Add Element" element on "anetipps/displayloginaction.do" page
#    And the user generates and enters unique value into "Element" on "anetipps/displayloginaction.do" page
    And the user enters "Automation test7" into "Element" text area box on "anetipps/displayloginaction.do" page
    And the user remembers the value of "Element" field on "anetipps/displayloginaction.do" page
#    And the user remembers the value of "Element" text box on "anetipps/displayloginaction.do" page
    And the user clicks on "Save Element" element on "anetipps/displayloginaction.do" page
    And the user clicks on "Preview Ipps Template" element on "anetipps/displayloginaction.do" page
    And the switch to new tab page
#    And the user sees the saved value "Element"
    And the user can see text "Automation test7"
    And the return to main page
    And the user clicks on "Publish IPPS Template" element on "anetipps/displayloginaction.do" page
    And the user can see text "Template published successfully."
    And the user clicks the link with text "Logout"



#  @Anet_LCH
  Scenario: Test the ability of IPPS Workflow

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Atiya Khan" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Atiya Khan"
    And the user waits for 2 seconds
    And user scrolls down the page
    And the user clicks on "Ipps Template" element on "anetipps/displayloginaction.do" page
    And the user clicks on "open template lead consumer safety inspector himp" element on "anetipps/displayloginaction.do" page
    And the user selects "MISSION SUPPORT" from "Header" drop down on "anetipps/displayloginaction.do" page
    And the user selects "HACCP" from "Subheader" drop down on "anetipps/displayloginaction.do" page
    And the user selects "Assess understanding of methodology:" from "Section" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Add Element" element on "anetipps/displayloginaction.do" page
#    And the user generates and enters unique value into "Element" on "anetipps/displayloginaction.do" page
    And the user enters "Automation test7" into "Element" text area box on "anetipps/displayloginaction.do" page
    And the user remembers the value of "Element" field on "anetipps/displayloginaction.do" page
#    And the user remembers the value of "Element" text box on "anetipps/displayloginaction.do" page
    And the user clicks on "Save Element" element on "anetipps/displayloginaction.do" page
    And the user clicks on "Preview Ipps Template" element on "anetipps/displayloginaction.do" page
    And the switch to new tab page
#    And the user sees the saved value "Element"
    And the user can see text "Automation test7"
    And the return to main page
    And the user clicks on "Publish IPPS Template" element on "anetipps/displayloginaction.do" page
    And the user can see text "Template published successfully."
    And the user clicks the link with text "Logout"




#  @Anet_PHV
  Scenario: Test the ability of IPPS Workflow

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Atiya Khan" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Atiya Khan"
    And the user waits for 2 seconds
    And user scrolls down the page
    And the user clicks on "Ipps Template" element on "anetipps/displayloginaction.do" page
    And the user clicks on "open template public health veterinariana" element on "anetipps/displayloginaction.do" page
    And the user selects "MISSION SUPPORT" from "Header" drop down on "anetipps/displayloginaction.do" page
    And the user selects "HACCP" from "Subheader" drop down on "anetipps/displayloginaction.do" page
    And the user selects "Assess understanding of methodology:" from "Section" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Add Element" element on "anetipps/displayloginaction.do" page
#    And the user generates and enters unique value into "Element" on "anetipps/displayloginaction.do" page
    And the user enters "Automation test7" into "Element" text area box on "anetipps/displayloginaction.do" page
    And the user remembers the value of "Element" field on "anetipps/displayloginaction.do" page
#    And the user remembers the value of "Element" text box on "anetipps/displayloginaction.do" page
    And the user clicks on "Save Element" element on "anetipps/displayloginaction.do" page
    And the user clicks on "Preview Ipps Template" element on "anetipps/displayloginaction.do" page
    And the switch to new tab page
#    And the user sees the saved value "Element"
    And the user can see text "Automation test7"
    And the return to main page
    And the user clicks on "Publish IPPS Template" element on "anetipps/displayloginaction.do" page
    And the user can see text "Template published successfully."
    And the user clicks the link with text "Logout"



#  @Anet_PH
  Scenario: Test the ability of IPPS Workflow

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Atiya Khan" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Atiya Khan"
    And the user waits for 2 seconds
    And user scrolls down the page
    And the user clicks on "Ipps Template" element on "anetipps/displayloginaction.do" page
    And the user clicks on "open template public health" element on "anetipps/displayloginaction.do" page
    And the user selects "MISSION SUPPORT" from "Header" drop down on "anetipps/displayloginaction.do" page
    And the user selects "HACCP" from "Subheader" drop down on "anetipps/displayloginaction.do" page
    And the user selects "Assess understanding of methodology:" from "Section" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Add Element" element on "anetipps/displayloginaction.do" page
#    And the user generates and enters unique value into "Element" on "anetipps/displayloginaction.do" page
    And the user enters "Automation test7" into "Element" text area box on "anetipps/displayloginaction.do" page
    And the user remembers the value of "Element" field on "anetipps/displayloginaction.do" page
#    And the user remembers the value of "Element" text box on "anetipps/displayloginaction.do" page
    And the user clicks on "Save Element" element on "anetipps/displayloginaction.do" page
    And the user clicks on "Preview Ipps Template" element on "anetipps/displayloginaction.do" page
    And the switch to new tab page
#    And the user sees the saved value "Element"
    And the user can see text "Automation test7"
    And the return to main page
    And the user clicks on "Publish IPPS Template" element on "anetipps/displayloginaction.do" page
    And the user can see text "Template published successfully."
    And the user clicks the link with text "Logout"



#  @Anet_ISP
  Scenario: Test the ability of IPPS Workflow

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Atiya Khan" into "Full Name" on "anetipps/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "anetipps/displayloginaction.do" page
    And the user can see text "Atiya Khan"
    And the user waits for 2 seconds
    And user scrolls down the page
    And the user clicks on "Ipps Template" element on "anetipps/displayloginaction.do" page
    And the user clicks on "open template new ipps sample template" element on "anetipps/displayloginaction.do" page
    And the user selects "MISSION SUPPORT" from "Header" drop down on "anetipps/displayloginaction.do" page
    And the user selects "HACCP" from "Subheader" drop down on "anetipps/displayloginaction.do" page
    And the user selects "Assess understanding of methodology:" from "Section" drop down on "anetipps/displayloginaction.do" page
    And the user clicks on "Add Element" element on "anetipps/displayloginaction.do" page
#    And the user generates and enters unique value into "Element" on "anetipps/displayloginaction.do" page
    And the user enters "Automation test7" into "Element" text area box on "anetipps/displayloginaction.do" page
    And the user remembers the value of "Element" field on "anetipps/displayloginaction.do" page
#    And the user remembers the value of "Element" text box on "anetipps/displayloginaction.do" page
    And the user clicks on "Save Element" element on "anetipps/displayloginaction.do" page
    And the user clicks on "Preview Ipps Template" element on "anetipps/displayloginaction.do" page
    And the switch to new tab page
#    And the user sees the saved value "Element"
    And the user can see text "Automation test7"
    And the return to main page
    And the user clicks on "Publish IPPS Template" element on "anetipps/displayloginaction.do" page
    And the user can see text "Template published successfully."
    And the user clicks the link with text "Logout"








