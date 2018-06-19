Feature:  Tests the Star workflow.


@Anet_TEST
Scenario: Test the ability of STAR Workflow

  Given the user navigates to /anet on browser
  And the user clicks the link with text "Login"
  And the user enters "Paul Wolseley" into "Full Name" on "Anet Login" page
  And the user press downkey and enter
  And the user clicks on "Submit Login" element on "Anet Login" page
  And the user can see text "Paul Wolseley"
  And the user waits for 2 seconds
  And the user clicks on "ddm view ipps" element on "IPPS" page
  And the user selects "2018" from "Fiscal Year" drop down on "IPPS" page
  And the user clicks on "Search" element on "IPPS" page
#   And the user clicks on "Employee Name Search" element on "IPPS" page
  And the user clicks the name with current value of "assessment number" ipps table on "IPPS" page
  And user scrolls down the page
  And the user clicks on "DDM Edit" element on "IPPS" page
  And user scrolls down the page
  And the user check "ddm reviewed" checkbox on "IPPS" page
  And the user waits for 2 seconds
  And the user enters "Automation test" into "ddm comments" text area box on "IPPS" page
  And the user clicks on "ddm Submit" element on "IPPS" page
  And the user closes alert and accepts prompts or confirm pop-ups