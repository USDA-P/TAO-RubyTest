Feature:  Test the Surveillance workflow

  @Anet_CSU
  Scenario:Ability to create surveillance

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Ryan Cas" into "Full Name" on "Anetsurveillance/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anetsurveillance/displayloginaction.do" page
    And the user can see text "Ryan Cast"
    And the user selects "P: ELDDRMGR 600" from "role" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user clicks on "Surveillance:Navigation" element on "Anetsurveillance/displayloginaction.do" page

#    General Info Tab
    And the user clicks on "Retail Project" element on "Anetsurveillance/displayloginaction.do" page
    Then the user clicks on "Firm lookup" element on "Anetsurveillance/displayloginaction.do" page
    And the switch to new tab page
    And the user enters "245113" into "Firm Identifier" on "Anetsurveillance/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks on "lookup submit" element on "Anetsurveillance/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks the link with text ""Sausage By Dale Schapansky" (245113)"
    And the return to main page
    And the user selects "Sampling" from "Reason" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Special Project" from "Retail Project List" list box on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation_test" into "Retail Project Name" on "Anetsurveillance/displayloginaction.do" page
    And the user clicks the link with text "Save General Info"

#  Food Defense Tab
    And the user clicks the link with text "Food Defense"
    And the switch to new tab page
    And the user check "meat" checkbox on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "written defence plan" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "outside surveillance system" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user check "Coordination Activity" checkbox on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Entry Homeland Security Committees" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Sample Auto_Test" into "Any Activities" on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Products been held or Restricted by CBP" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Auto_Sample" into "situation and tests conducted" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation_test" into "Food Defense Exit Notes" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user check "certify checkbox" checkbox on "Anetsurveillance/displayloginaction.do" page
    And the user clicks the link with text "Save Food Defense"

#    Food Safety Tab
    And the user clicks the link with text "Food Safety"
    And the user selects "Yes" from "products wholesome" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "sanitary condition ok" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "hazard controls adequate" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "nonhuman food properly denatured" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "records maintained ok" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation Test" into "FST Additional comments" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user clicks on "save food safety" element on "Anetsurveillance/displayloginaction.do" page

#  Imported Products Tab
    Then the user clicks the link with text "Imported Products"
    And the user selects "No" from "handles imported products" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation Test" into "Imported Products Additional comments" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Algeria" from "Country of Origin" list box on "Anetsurveillance/displayloginaction.do" page
    And the user enters "123456" into "Invoice Number" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "123456" into "Bill of Landing Number" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "123456" into "APHIS Permit Number" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "123456" into "HTS Code" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "123456" into "Custom Entry Number" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "12" into "Total Cases" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Bottles" into "Unit Type" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "245113" into "Foreign Producer Foreign Establishment Number" on "Anetsurveillance/displayloginaction.do" page
    Then the user clicks on "Firm lookup" element on "Anetsurveillance/displayloginaction.do" page
    And the switch to new tab page
    And the user enters "245113" into "Firm Identifier" on "Anetsurveillance/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks on "lookup submit" element on "Anetsurveillance/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks the link with text ""Sausage By Dale Schapansky" (245113)"
    And the return to main page
    And the user enters "123456" into "Sample Lab Form Number" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Re-Entered" into "Detained Disposition" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Sample Automation" into "Detained Disposition Details" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Yes" into "Recall Disposition" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Sample Automation" into "Recall Disposition details" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Todays date" into "FTP Date Initiated" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Sample Auto" into "FTP Disposition" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Sample Automation" into "FTP Disposition Details" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "OIG Investigation" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation Generated" into "OIG Investigation Initiated By" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Todays date" into "OIG Investigation Date" on "Anetsurveillance/displayloginaction.do" page
    And the user clicks the link with text "Save Imported Products"

#  Additional Info tab
    Then the user clicks the link with text "Additional Info"
    And the user selects "Yes" from "Sample Taken" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "MT05" from "Selected Sample" list box on "Anetsurveillance/displayloginaction.do" page
    And the user press control key
    And the user selects "Investigative Sample" from "Selected Sample" list box on "Anetsurveillance/displayloginaction.do" page
    And the user enters "3" into "Number of MT Samples" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "3" into "Number of Investigative Samples" on "Anetsurveillance/displayloginaction.do" page
    And the user click "Sample Result" radio button on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Result of Previous Sample" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Grinding Record" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Todays Date" into "date of previous sample" on "Anetsurveillance/displayloginaction.do" page
    And the user selects "In Compliance" from "shell egg temperatures" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "No" from "Shell Eggs Properly Labeled" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation Generated comment" into "Shell Egg Temp Comments" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Pest Control Visit" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Investigator Meet Firm Representative" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation Generated comment" into "Pest Control Contact Info" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Auto Name" into "Name of Representative1" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Auto Name2" into "Name of Representative2" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "3" into "Frequency of Visits" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation Generated Comment" into "AIT Additional Comments" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Surveillance Findings" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation Generated comment" into "referral comments" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Surveillance Follow up Required" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Previous Surveillance Review" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "1 Month" from "Expected Follow up Date" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation Generated comment" into "follow up comments" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user clicks the link with text "Save Additional Info"

    #Non Food safety Consumer protection Tab
    Then the user clicks the link with text "Non Food Safety Consumer Protection"
    And the user selects "Yes" from "Nutritioning Label Verified" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Non Food Safety Consumer Protection" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "Do Records Observed" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation test" into "Nonfood Safety Consumer Protection Additional Comments" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user clicks the link with text "Save Non Food Safety Consumer Protection Information"

#    # File Attachments Tab
    Then the user clicks the link with text "File Attachments"
    And the user enters "Auto Attachment" into "Name to Display" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "C:\phis_automation_regression_suite\features\support\Documents\certificate.pdf" into "Browse File" on "Anetsurveillance/displayloginaction.do" page
    And the user clicks the link with text "Attach File"

    #Associated Product Control Links
    Then the user clicks the link with text "Associated Product Control Links"
    And the user clicks the link with text "Add Product Control Link"
    And the switch to new tab page
    And the user enters "Past One Year" into "Product Control From Date" on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Todays date" into "Product Control To Date" on "Anetsurveillance/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks the link with text "Search"
    And the user clicks the link with text "#1 Chinese Restaurant"
    And the return to main page
    And the user clicks the link with text "Save Associated Product Control Links"

    #Order Verification
    Then the user clicks the link with text "Order Verification"
    And the user selects "Yes" from "compliance with terms and conditions" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Yes" from "responsible individuals in compliance" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user enters "Automation text" into "order verification in additional comments" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user clicks on "save order verification" element on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetsurveillance/displayloginaction.do" page
    And the user can see text "The record has been successfully submitted to the system."
    #Edit
    And the user selects "Edit" from "Action" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetsurveillance/displayloginaction.do" page
    And the user waits for "2" seconds
    And the user clicks the link with text "Food Defense"
    And the user selects "Yes" from "shipping access" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetsurveillance/displayloginaction.do" page
    And the user can see text "Attention: Change History: Change Description - Please enter a value."
    And the user enters "Automation_change" into "additional comments changed1" text area box on "Anetsurveillance/displayloginaction.do" page
    And the user selects "Submit" from "Action" drop down on "Anetsurveillance/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetsurveillance/displayloginaction.do" page
    And the user can see text "The record has been successfully submitted to the system."







