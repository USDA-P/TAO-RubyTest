Feature:  Tests the ability of investigation module.

  @Anet_CINV

  #--Create New Investigation--
  Scenario: Test the ability of Anet Application to create new Investigation
    Given the user navigates to /anet on browser
    Then the user clicks the link with text "Login"
    And the user enters "TERESA YENOVKIA" into "Full Name" on "Anetinvestigation/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anetinvestigation/displayloginaction.do" page
#    And the user can see text "TERESA YENOVKIAN"
    And the user selects "P: INV 410" from "role" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user clicks on "Investigation" element on "Anetinvestigation/displayloginaction.do" page
    And the user enters "Todays date" into "Violation Date" on "Anetinvestigation/displayloginaction.do" page
    #--Primary Violator - chey update
    And the user clicks on "Primary Lookup" element on "Anetinvestigation/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks on "Firm Identifier" element on "Anetinvestigation/displayloginaction.do" page
    And the user enters "20124" into "Firm Identifier" on "Anetinvestigation/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks on "Submit" element on "Anetinvestigation/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks the link with text "#1 Chinese Restaurant (20124)"
    And the switch to new tab page
    And user scrolls down the page
    #--second Violator - chey update
    And the user clicks on "Secondary Lookup" element on "Anetinvestigation/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks on "Firm Identifier" element on "Anetinvestigation/displayloginaction.do" page
    And the user enters "278313" into "Firm Identifier" on "Anetinvestigation/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks on "Submit" element on "Anetinvestigation/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks the link with text "108 Food Mart Inc. (278313)"
    And the switch to new tab page
    And user scrolls down the page
    #--Tertiary Violator - chey update
    And the user clicks on "Tertiary Lookup" element on "Anetinvestigation/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks on "Firm Identifier" element on "Anetinvestigation/displayloginaction.do" page
    And the user enters "27" into "Firm Identifier" on "Anetinvestigation/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks on "Submit" element on "Anetinvestigation/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks the link with text "WINGHING MARKET INC (27)"
    And the switch to new tab page
    And user scrolls down the page
     #--Fourth Violator - chey update
    And the user clicks on "Fourth Lookup" element on "Anetinvestigation/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks on "Firm Identifier" element on "Anetinvestigation/displayloginaction.do" page
    And the user enters "38" into "Firm Identifier" on "Anetinvestigation/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks on "Submit" element on "Anetinvestigation/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks the link with text "NORTHEAST BUSINESS LLC (38)"
    And the switch to new tab page
    And user scrolls down the page
     #--Fifth Violator - chey update
    And the user clicks on "FIfth Lookup" element on "Anetinvestigation/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks on "Firm Identifier" element on "Anetinvestigation/displayloginaction.do" page
    And the user enters "47" into "Firm Identifier" on "Anetinvestigation/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks on "Submit" element on "Anetinvestigation/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks the link with text "Smucker's Meats LLC (47)"
    And the switch to new tab page
    And user scrolls down the page
    And the user selects "Yes" from "Investigative Plan" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user selects "PPIA" from "Statute" list box on "Anetinvestigation/displayloginaction.do" page
    And the user selects "Criminal" from "Primary Investigation Case Type" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user selects "Admin - Civil Penalties" from "Secondary Investigation Case Type" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user selects "Adulterated - Food Safety" from "primary Violation Type" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user selects "Inedible" from "Secondary Violation Type" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user selects "Consumer Complaint" from "Predication Code" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user selects "Yes" from "Food Safety Related" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user enters "Investigation Created by Automation script" into "Keywords" text area box on "Anetinvestigation/displayloginaction.do" page
    And the user clicks the link with text "Save General Info"
    And the user clicks the link with text "Associated Product Control Links"
  #- chey update
    And the user selects "Submit" from "Actions" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetinvestigation/displayloginaction.do" page
    And the user can see text "The record has been successfully submitted to the system."
    And the user remembers the value of "case" field on "Anetinvestigation/displayloginaction.do" page
    Then the user clicks on "Investigation tab" element on "Anetinvestigation/displayloginaction.do" page
    And the user split and enters current value of "case" into "investigation file number" on "Anetinvestigation/displayloginaction.do" page
    And the user clicks the link with text "Search"
#    And the user clicks on "search" element on "Anetinvestigation/displayloginaction.do" page
    And the user clicks on "investigation number" element on "Anetinvestigation/displayloginaction.do" page
    And the user selects "Edit" from "Actions" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetinvestigation/displayloginaction.do" page
    And the user enters "Automation test" into "keywords" text area box on "Anetinvestigation/displayloginaction.do" page
    And the user selects "Submit" from "Actions" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetinvestigation/displayloginaction.do" page
    And the user can see "Attention: Change History: Change Description - Please enter a value." text on "Anetinvestigation/displayloginaction.do" page
    And the user enters "Investigation created by Automation, Updated Change History" into "additional comments" text area box on "Anetinvestigation/displayloginaction.do" page
    And the user selects "Submit" from "Actions" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetinvestigation/displayloginaction.do" page
#    And the user can see "The record has been successfully submitted to the system." text on "Anetinvestigation/displayloginaction.do" page
    And the user selects "Forward to SUPV" from "Actions" drop down on "Anetinvestigation/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetinvestigation/displayloginaction.do" page
    And the user enters "Investigation forward to SUPV" into "Inv comments" on "Anetinvestigation/displayloginaction.do" page
    And the user clicks on "Comment Go" element on "Anetinvestigation/displayloginaction.do" page
    And the user can see text "The record has been successfully transferred."

