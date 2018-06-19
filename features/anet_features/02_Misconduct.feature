Feature:  Tests the Misconduct Work Flow.

  @Anet_CMIS
  Scenario: Ability to create Misconduct Application

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Natalie Marti" into "Full Name" on "Anetmisconduct/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anetmisconduct/displayloginaction.do" page
    And the user can see text "Natalie Martin"
    And the user selects "P: MIS SUPV" from "Role" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Misconduct Investigation" element on "Anetmisconduct/displayloginaction.do" page
    And the user selects "OIG Hotline" from "Type" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user selects "LERD" from "Source" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user enters "Todays Date" into "complaint notification date" on "Anetmisconduct/displayloginaction.do" page
    And the user enters "Automation test" into "Subject Name" on "Anetmisconduct/displayloginaction.do" page
    And the user selects "Yes" from "investigation warranted" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user enters "Todays Date" into "authorization letter sent date" on "Anetmisconduct/displayloginaction.do" page
    And the user enters "test" into "investigation comment" text area box on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "save genearl info" element on "Anetmisconduct/displayloginaction.do" page

    Then  the user clicks on "Evidence Collected tab" element on "Anetmisconduct/displayloginaction.do" page
    And the user can see "Johnson, Natalie" text in "Evidence officer" field on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Add Evidence" element on "Anetmisconduct/displayloginaction.do" page
    And the user enters "Todays Date" into "evidence date" on "Anetmisconduct/displayloginaction.do" page
    And the user enters "Automation test" into "evidence record name" on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Save Evidence" element on "Anetmisconduct/displayloginaction.do" page
    When the user can see "Automation test" text in "Evidence name" field on "Anetmisconduct/displayloginaction.do" page

    Then the user clicks on "Forensic Evidence Collected Tab" element on "Anetmisconduct/displayloginaction.do" page
    And the user can see "Johnson, Natalie" text in "Evidence officer" field on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Add Evidence" element on "Anetmisconduct/displayloginaction.do" page
    And the user enters "Todays Date" into "evidence date" on "Anetmisconduct/displayloginaction.do" page
    And the user enters "Automation test"" into "evidence record name" on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Save Forensic Evidence" element on "Anetmisconduct/displayloginaction.do" page
    When the user can see "Automation test" text in "Evidence name" field on "Anetmisconduct/displayloginaction.do" page

    Then the user selects "Submit" from "Actions" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetmisconduct/displayloginaction.do" page

    Then the user selects "Change Investigator" from "Actions" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "investigator go" element on "Anetmisconduct/displayloginaction.do" page
    Then the user can see text "The case agent has been reassigned."
    And the user selects "Forward to Investigator" from "Actions" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetmisconduct/displayloginaction.do" page
    Then the user can see text "The record has been successfully transferred."
    And the user can see text "AkINOLA, JUDY"
    And the user remembers the value of "Misconduct Case Id" field on "Anetmisconduct/displayloginaction.do" page
    And the user clicks the link with text "Logout"
    And the user closes alert and accepts prompts or confirm pop-ups

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "JUDY AKINOL" into "Full Name" on "Anetmisconduct/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anetmisconduct/displayloginaction.do" page
    And the user selects "P: MIS INV" from "role" drop down on "Anetmisconduct/displayloginaction.do" page
    When the user clicks on "View Misconduct" element on "Anetmisconduct/displayloginaction.do" page
#    And user scrolls down the page
    And the user split and enters current value of "Misconduct Case Id" into "Misconduct case number" on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Search" element on "Anetmisconduct/displayloginaction.do" page

#   And the user clicks on "Last Page" element on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Case Number" element on "Anetmisconduct/displayloginaction.do" page

    And the user selects "Edit" from "Actions" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetmisconduct/displayloginaction.do" page

#    Then the user clicks on "Evidence Collected tab" element on "Anetmisconduct/displayloginaction.do" page
#    And the user clicks on "Delete" element on "Anetmisconduct/displayloginaction.do" page
#    And the user clicks on "Delete Tab" element on "Anetmisconduct/displayloginaction.do" page

    And the user enters "Automation test2" into "Subject Name" on "Anetmisconduct/displayloginaction.do" page
    Then the user selects "Submit" from "Actions" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetmisconduct/displayloginaction.do" page
    And the user waits for 3 seconds

    And the user can see text "Attention: Change History: Change Description - Please enter a value."
    And the user enters "change1" into "additional comments changed" text area box on "Anetmisconduct/displayloginaction.do" page
    And the user selects "Submit" from "Actions" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetmisconduct/displayloginaction.do" page
    And the user can see text "The record has been successfully submitted to the system."

    And the user selects "Forward to Supervisor" from "Actions" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetmisconduct/displayloginaction.do" page
    And the user can see text "The record has been successfully transferred."
    And the user clicks the link with text "Logout"


    And the user closes alert and accepts prompts or confirm pop-ups
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"



    And the user enters "Natalie Marti" into "Full Name" on "Anetmisconduct/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anetmisconduct/displayloginaction.do" page
    And the user can see text "Natalie Martin"
    And the user selects "P: MIS SUPV" from "role" drop down on "Anetmisconduct/displayloginaction.do" page

    When the user clicks on "supv view misconduct" element on "Anetmisconduct/displayloginaction.do" page
    And the user split and enters current value of "Misconduct Case Id" into "Misconduct case number" on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Search" element on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Case Number" element on "Anetmisconduct/displayloginaction.do" page
    And the user selects "Close" from "Actions" drop down on "Anetmisconduct/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetmisconduct/displayloginaction.do" page
    And the user can see text "The case has been closed."













