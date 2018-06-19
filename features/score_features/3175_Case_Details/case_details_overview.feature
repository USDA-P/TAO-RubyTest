@SCORE_REGRESSION
@3175_CASE_DETAILS
@SCORE_CASE_DETAILS_OVERVIEW
Feature: Verify the functionality of Case Overview page when navigating from Case Details on CCMS
         Total Test Cases automated - 5
         User Story 6526:'Case Details' > 'Overview section' > Managed By field [TC-7609] Completed - 1
         User Story 6522:'Case Details' > 'Overview section' > Entered By Agency field [TC-7498,TC-7499,TC-7500,TC-7501,TC-7502] Completed - 3
         User Story 3163:'Create New Case' > New case creation functionality [TC-7437] Completed - 1

   @US_6526_1
    # Should be revisited once WorkLoad management is developed
  Scenario Outline: Verify 'Case Details' > 'Overview section' > Managed By field
                    Test Case 7437:Create New Case >User should be Navigated to SCORE-CMS homepage once the CASE is submitted successfully
                    Test Case 7498:Case Details' > 'Overview section' > Entered By Agency field is 'Hotline'
                    Test Case 7501:Case Details' > 'Overview section' > Entered By Agency field is 'OPHS'
                    Test Case 7502:'Case Details' > 'Overview section' > Entered By Agency field is 'OFO - District name ( Number) >'
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "<Login_User>" from "Select User" drop down on "Score/User/User/Login" page
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
      And the user remembers the value of "State" drop down into "Create New Case:State" on "Score/CCMS/Case/ComplainantData" page
      And the user enters "23101" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
      And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
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
          # Bug- Displaying as 2 establishment in case list page
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
      And the user "sees" the submitted case success message with case number- "Current Value of#Create New Case:Case Number" in "submit case success" on "SCORE/Home" page
      And the user "Clicks On Case Number Link in" the submitted case success message with case number- "Current Value of#Create New Case:Case Number" in "submit case success" on "SCORE/Home" page
      And the user clicks the link with text "Overview"
      And the user can see "<Login_User>" text in "Created By" field on "SCORE/CCMS" page
      And the user can see "Admin, Score" text in "Assigned To" field on "SCORE/CCMS" page
      And the user can see "Admin, Score" text in "Overview:Managed By" field on "Score/CCMS/Case/Overview" page
      And the user can see "Economic Adulteration, None" text in "Overview:Complaint Types" field on "Score/CCMS/Case/Overview" page
      And the user can see "<Entered_by_Agency>" text in "Overview:Entered by Agency" field on "Score/CCMS/Case/Overview" page
      And the user can see "New" text in "Overview:Case Status" field on "Score/CCMS/Case/Overview" page
      And the user can see "M46051" text in "Overview:Establishment Number" field on "Score/CCMS/Case/Overview" page
      And the user can see "<Entered_by>" text in "Overview:Entered by" field on "Score/CCMS/Case/Overview" page
      And the user can see current value of "Create New Case:Date Created" in "Overview:Reported Date" field on "Score/CCMS/Case/Overview" page
      And the user can see current value of "Create New Case:State" in "Overview:Complainant State" field on "Score/CCMS/Case/Overview" page
      And the user sign out from the score application and if pop up opens click discard button
      Examples:
        | Login_User   | Entered_by_Agency         | Entered_by   |
        | Krishna, Bal | Hotline                   | Krishna, Bal |
        | Black, John  | OFO - Des Moines, IA (25) | Black, John  |
        | Smith, Shaun | OIEA                      | Smith, Shaun |

  @US_6526_2
      # Should be revisited once WorkLoad management is developed
  Scenario: 3163:'Create New Case' > New case creation functionality - Verify removing the case creation message from homepage
            Test Case 7438:Create New Case > Conditions to remove the New Case Creation message from homepage
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
    And the user remembers the value of "State" drop down into "Create New Case:State" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "23101" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
  #    And the user waits for 2 seconds
    And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
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
          # Bug- Displaying as 2 establishment in case list page
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
    And the user "sees" the submitted case success message with case number- "Current Value of#Create New Case:Case Number" in "submit case success" on "SCORE/Home" page
    And the user clicks on "Submit Case Success:Close" element on "SCORE/Home" page
    And the user clicks the link with text "Case List"
    And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
    And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
    And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" the "Current Value of#Create New Case:Case Number" all case number record on View Case table on "Score/CCMS/ViewcaseList" page
    And the user clicks the link with text "Overview"
    And the user can see "Gupta, Sam" text in "Created By" field on "SCORE/CCMS" page
    And the user can see "Admin, Score" text in "Assigned To" field on "SCORE/CCMS" page
    And the user can see "Admin, Score" text in "Overview:Managed By" field on "Score/CCMS/Case/Overview" page
    And the user can see "Economic Adulteration, None" text in "Overview:Complaint Types" field on "Score/CCMS/Case/Overview" page
    And the user can see "N/A" text in "Overview:Entered by Agency" field on "Score/CCMS/Case/Overview" page
    And the user can see "New" text in "Overview:Case Status" field on "Score/CCMS/Case/Overview" page
    And the user can see "M46051" text in "Overview:Establishment Number" field on "Score/CCMS/Case/Overview" page
    And the user can see "N/A" text in "Overview:Entered by" field on "Score/CCMS/Case/Overview" page
    And the user can see current value of "Create New Case:Date Created" in "Overview:Reported Date" field on "Score/CCMS/Case/Overview" page
    And the user can see current value of "Create New Case:State" in "Overview:Complainant State" field on "Score/CCMS/Case/Overview" page
    And the user sign out from the score application and if pop up opens click discard button

