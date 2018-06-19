Feature:  Tests the Enforcement Work Flow.

  @Anet_CEN
  Scenario: Ability to create Enforcement Application
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Ryan Cas" into "Full Name" on "Anetenforcement/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anetenforcement/displayloginaction.do" page
    And the user can see text "Ryan Cast"
    And the user selects "P: ELDDRMGR 600" from "role" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Enforcement" element on "Anetenforcement/displayloginaction.do" page

    And the user clicks the link with text "Associated Case Info"
    And the user clicks on "associated case info lookup" element on "Anetenforcement/displayloginaction.do" page
    And the switch to new tab page
    And user scrolls down the page
    And the user clicks on "Lookup search" element on "Anetenforcement/displayloginaction.do" page
    Then the switch to new tab page
    And the user clicks on "investigation file number" element on "Anetenforcement/displayloginaction.do" page
    And the return to main page
    And the user selects "Criminal" from "primary case type" drop down on "Anetenforcement/displayloginaction.do" page
    And the user selects "Adulterated - Food Safety" from "primary investigation type" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Save associated case info" element on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Enforcement info tab" element on "Anetenforcement/displayloginaction.do" page
    And the user selects "Civil - Injunction" from "Enforcement Case Type" drop down on "Anetenforcement/displayloginaction.do" page
    And the user selects "Adulterated - Food Safety" from "enforcement violation type" drop down on "Anetenforcement/displayloginaction.do" page
    And the user selects "ELD Review" from "Enforcement Status" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Primary Expand" element on "Anetenforcement/displayloginaction.do" page
    And the user enters "10" into "Primary felony" on "Anetenforcement/displayloginaction.do" page
    And the user enters "100" into "Primary Fines" on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Secondary Expand" element on "Anetenforcement/displayloginaction.do" page
    And the user enters "10" into "secondary felony" on "Anetenforcement/displayloginaction.do" page
    And the user enters "1000" into "secondary Fines" on "Anetenforcement/displayloginaction.do" page
    And the user can see "20" text in "total felonies" field on "Anetenforcement/displayloginaction.do" page
    And the user can see "1100" text in "total fines" field on "Anetenforcement/displayloginaction.do" page
    When the user clicks on "eld case notes tab" element on "Anetenforcement/displayloginaction.do" page
    And the user enters "Automation test" into "Eld Notes" text area box on "Anetenforcement/displayloginaction.do" page
    And the user enters "Automation summary" into "Eld Summary" text area box on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Additional comments tab" element on "Anetenforcement/displayloginaction.do" page
    And the user enters "Additional Comments" into "Additional Comments" text area box on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Save Additional Info" element on "Anetenforcement/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetenforcement/displayloginaction.do" page
    And the user selects "Change ELD SPCL" from "Action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetenforcement/displayloginaction.do" page
    And the user selects "ASHBY, SHANNON" from "Eld Specialist" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Eld Specialist Go" element on "Anetenforcement/displayloginaction.do" page
    Then the user can see text "The ELD Specialist has been reassigned."
    And the user selects "Forward to ELD SPCL" from "Action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user can see text "The record has been successfully transferred"
    And the user remembers the value of "Identifier" field on "Anetenforcement/displayloginaction.do" page
    And the user clicks the link with text "Logout"
    And the user closes alert and accepts prompts or confirm pop-ups

#  @ANET_Conenf
#  Scenario: Ability to view/edit Enforcement Application
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "SHANNON ASHBY" into "Full Name" on "Anetenforcement/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anetenforcement/displayloginaction.do" page
    And the user can see text "SHANNON ASHBY"
    And the user selects "P: ELDDRMGR 600" from "role" drop down on "Anetenforcement/displayloginaction.do" page
    Then the user clicks on "View Enforcement" element on "Anetenforcement/displayloginaction.do" page
    And the user split and enters current value of "Identifier" into "identifier searchbox" on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Search" element on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "identifier number" element on "Anetenforcement/displayloginaction.do" page
    And the user selects "Edit" from "Action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Enforcement info tab" element on "Anetenforcement/displayloginaction.do" page
    And the user selects "NOW" from "eld action1" drop down on "Anetenforcement/displayloginaction.do" page
    And the user enters "Todays Date" into "eld date" on "Anetenforcement/displayloginaction.do" page
    And the user selects "At OGC" from "Enforcement Status" drop down on "Anetenforcement/displayloginaction.do" page
    And the user selects "No Action" from "ogc action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user enters "Todays Date" into "ogc action date" on "Anetenforcement/displayloginaction.do" page
    Then the user selects "Submit" from "Action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetenforcement/displayloginaction.do" page
    And the user can see text "Attention: Change History: Change Description - Please enter a value."
    And the user enters "change1" into "additional comments changed" text area box on "Anetenforcement/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetenforcement/displayloginaction.do" page
    And the user can see text "The record has been successfully submitted to the system."
    Then the user selects "Return to RD" from "Action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetenforcement/displayloginaction.do" page
    And the user selects "Western" from "region" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "region go" element on "Anetenforcement/displayloginaction.do" page
    And the user can see text "The record has been successfully transferred."

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Ryan Cas" into "Full Name" on "Anetenforcement/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anetenforcement/displayloginaction.do" page
    And the user can see text "Ryan Cast"


    And the user selects "P: RD 500" from "role" drop down on "Anetenforcement/displayloginaction.do" page
    Then the user clicks on "RD View Enforcement" element on "Anetenforcement/displayloginaction.do" page
    And the user split and enters current value of "Identifier" into "identifier searchbox" on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Search" element on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "identifier number" element on "Anetenforcement/displayloginaction.do" page
    And the user selects "Edit" from "Action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Enforcement info tab" element on "Anetenforcement/displayloginaction.do" page
    And the user selects "Closed" from "Enforcement Status" drop down on "Anetenforcement/displayloginaction.do" page
    Then the user selects "No Action" from "rd action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user enters "Todays Date" into "rd action date" on "Anetenforcement/displayloginaction.do" page

    And the user selects "Submit" from "Action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetenforcement/displayloginaction.do" page

    And the user can see text "Attention: Enforcement Info: Closed Date - Please enter a value"
    And the user enters "Todays Date" into "Closed date" on "Anetenforcement/displayloginaction.do" page

    And the user selects "Submit" from "Action" drop down on "Anetenforcement/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetenforcement/displayloginaction.do" page





