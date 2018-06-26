@SCORE_REGRESSION
@5157_CASE_ACTIONS
@SCORE_CASE_ACTIONS
Feature: Verify Case Actions functionality
  Total Test cases automated - 3
  User Story 5613:'Case Actions' > Close Case Functionality [TC-] Completed -
  User Story 3303:'Case Actions' > Prompt user to confirm before cancelling a draft case [TC-7735,TC-7736] Completed - 2
  User Story 3302:'Case Actions' > Cancel a Draft case [TC-7875] Completed - 1

  @US_5613
  Scenario: Verify User should able to Close case
            Verify user should be able to close the case only if all the tasks for that case are in 'Complete' status
            Verify system should display following error message: "Case cannot be closed without completing all tasks"
            Verify the reasons drop down values while closing a case
            Verify the system shall provide a non-mandatory option to enter additional comments for closing a case
            Verify only admin can close a case.
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "CCMS"
      And the user can see text "Cases by Status"
      And the user clicks the link with text "Create New Case"
      And the user can see text "Create Case"
      And the user clicks the link with text "Complaint Data"
      And the user enters "Todays date" into "Incident Date:" on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Mr." from "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique Last Name" into "Last Name" on "Score/CCMS/Case/ComplainantData" page
      And the user enters "Test Address 1" into "Address1" on "Score/CCMS/Case/ComplainantData" page
      And the user enters "Test Address 2" into "Address2" on "Score/CCMS/Case/ComplainantData" page
      And the user enters "Test City" into "City" on "Score/CCMS/Case/ComplainantData" page
      And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Alaska" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user enters "23101" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
      And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
#      And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
#      And the user remembers the value of "Last Name" text box on "Score/CCMS/Case/ComplainantData" page
#      And the user remembers the value of "Address1" text box on "Score/CCMS/Case/ComplainantData" page
#      And the user remembers the value of "Address2" text box on "Score/CCMS/Case/ComplainantData" page
#      And the user remembers the value of "City" text box on "Score/CCMS/Case/ComplainantData" page
#      And the user remembers the value of "Country" drop down on "Score/CCMS/Case/ComplainantData" page
#      And the user remembers the value of "State" drop down on "Score/CCMS/Case/ComplainantData" page
#      And the user remembers the value of "Zip Code" text box on "Score/CCMS/Case/ComplainantData" page
#      And the user remembers the value of "District" text box on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "Create New Case:Case Number" field on "Score/CCMS" page
      And the user remembers the value of "Create New Case:Date Created" field on "Score/CCMS" page
            # Add Complaint Type to Submit the Case
      And the user clicks the link with text "Complaint Type"
      And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
            # Add Product to Submit case
      And the user clicks the link with text "Products"
      And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
      And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
      And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
      And the user enters "M46051" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
      And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
      And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field on "Score/CCMS/Case/Products" page
      And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field on "Score/CCMS/Case/Products" page
      And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field on "Score/CCMS/Case/Products" page
      And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field on "Score/CCMS/Case/Products" page
      And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field on "Score/CCMS/Case/Products" page
      And the user "Check the Checkbox" for state-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est State",Establishment number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name"and Closed-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Closed" on Establishment lookup table
      And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
      And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
      And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
      And the user remembers the value of "Products:Product Brand-field" text box on "Score/CCMS/Case/Products" page
      And the user remembers the value of "Products:Product Name/Type-field" text box on "Score/CCMS/Case/Products" page
      And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
      And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
      And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
      And the user can "see" Product with Brand Name-"Current Value of#Products:Product Brand-field",Product Name-"Current Value of#Products:Product Name/Type-field",Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Products table
      And the user clicks the "Create New Case:Submit for Review" button on "Score/CCMS" page
      And the user "Clicks On Case Number Link in" the submitted case success message with case number- "Current Value of#Create New Case:Case Number" in "submit case success" on "SCORE/Home" page
      And the user clicks the link with text "Tasks"
      And the user "expands" the tasks with Brand Name-"Current Value of#Products:Product Brand-field" ,Product name-"Current Value of#Products:Product Name/Type-field" ,Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" ,Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District" and Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Task table
      And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products:Product Brand-field" ,Product name-"Current Value of#Products:Product Name/Type-field" ,Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" ,Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District" and Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Task table
            # Add tasks
      And the user selects "Forward to IIC for Review" from "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Task Type-Field" drop down into "Tasks:Add Tasks:Task1 Type" on "Score/CCMS/Case/Tasks" page
      And the user selects "OFO - Des Moines, IA (25)" from "Tasks:Add Tasks:Assigned To Division-Field" drop down on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Assigned To Division-Field" drop down into "Tasks:Add Tasks:Task1 Assigned To Division" on "Score/CCMS/Case/Tasks" page
      And the user selects "John Black" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
      And the user selects "Todd Gerwig" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Created On-Field" text box into "Tasks:Add Tasks:Task1 Created On" on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Task Instructions" into "Tasks:Add Tasks:Task Instructions-Field" text area box on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Task Instructions-Field" text area into "Add Tasks:Task1 Instructions" on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Note Title" into "Tasks:Add Tasks:New Note Title-Field" on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:New Note Title-Field" text box into "Add Tasks:Task1 New Note Title" on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Note Text" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:New Note Text-Field" text area into "Add Tasks:Task1 New Note Text" on "Score/CCMS/Case/Tasks" page
      And the user clicks the "Tasks:Add Tasks:Save" button on "Score/CCMS/Case/Tasks" page
      And the user can "see" tasks under Brand Name-"Current Value of#Products:Product Brand-field",Product Name-"Current Value of#Products:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task1 Type",Created on-"Current Value of#Tasks:Add Tasks:Task1 Created On",Current Status-"Active" and Assigned to-"John Black, Todd Gerwig" in Add Contacts table
      And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
      And the user clicks the "Close Case" button on "Score/CCMS" page
      # Verify reason drop down and rest
      And the user sign out from the score application and if pop up opens click discard button

    @US_3303
    Scenario: Test Case 7735:Case Actions >User should prompt to provide the confirmation before cancelling a draft case from Create New Case link
              Test Case 7736:Case Actions >Cancel the Draft case Navigating through the Case List page
              Test Case 7875:Verify the cancel draft case
      Given the user navigates to /score on browser
        And the user clicks the link with text "CCMS"
      Then the user can see text "Select a User to Login:"
        And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
        And the user clicks the "Login" button on "Score/User/User/Login" page
        And the user clicks the link with text "CCMS"
        And the user can see text "Cases by Status"
        And the user clicks the link with text "Create New Case"
        And the user can see text "Create Case"
        And the user clicks the link with text "Complaint Data"
        And the user enters "Todays date" into "Incident Date:" on "Score/CCMS/Case/ComplainantData" page
        And the user selects "Mr." from "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
        And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
        And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
        And the user enters unique "Unique Last Name" into "Last Name" on "Score/CCMS/Case/ComplainantData" page
        And the user enters "Test Address 1" into "Address1" on "Score/CCMS/Case/ComplainantData" page
        And the user enters "Test Address 2" into "Address2" on "Score/CCMS/Case/ComplainantData" page
        And the user enters "Test City" into "City" on "Score/CCMS/Case/ComplainantData" page
        And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
        And the user selects "Alaska" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
        And the user enters "23101" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
        And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
        And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
        And the user remembers the value of "Create New Case:Case Number" field on "Score/CCMS" page
        And the user remembers the value of "Create New Case:Date Created" field on "Score/CCMS" page
        And the user clicks the "Cancel Draft" button on "Score/CCMS" page
        And the user clicks the "Cancel Draft:Cancel" button on "Score/Dialog" page
        And the user can see current value of "Create New Case:Case Number" in "Create New Case:Case Number" field on "Score/CCMS" page
        And the user clicks the "Cancel Draft" button on "Score/CCMS" page
        And the user clicks the "Cancel Draft:Cancel Draft" button on "Score/Dialog" page
        And the user see cancel draft success message for case number-"Current Value of#Create New Case:Case Number" on Case List page
        And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
        And the user remembers the value of "First Case Number" field on "Score/CCMS/ViewcaseList" page
        And the user "clicks" the "Current Value of#First Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
        And the user clicks the "Cancel Draft" button on "Score/CCMS" page
        And the user clicks the "Cancel Draft:Cancel" button on "Score/Dialog" page
        And the user clicks the "Cancel Draft" button on "Score/CCMS" page
        And the user clicks the "Cancel Draft:Cancel Draft" button on "Score/Dialog" page
        And the user see cancel draft success message for case number-"Current Value of#First Case Number" on Case List page
        And the user sign out from the score application and if pop up opens click discard button