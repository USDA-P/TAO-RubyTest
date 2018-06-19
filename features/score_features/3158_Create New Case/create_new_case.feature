@SCORE_REGRESSION
@3158_CREATE_NEW_CASE
@SCORE_CREATE_NEW_CASE
Feature: This Feature verify all below test cases for Create New Case Feature
  Total Test Cases automated - 9
  User Story 2137:'Create New Case' > Functionality [TC-3946.TC-3947,TC-4852,TC-4886,TC-4887,TC-4888] Completed - 6
  User Story 2138:'Create New Case' > 'Complainant Data' form [TC-3948,TC-3949,TC-3950] Completed - 3

  @US_2137_1
  Scenario: TC-3946 Verify that user is able to create a new case from within the case. User clicks Discard button to save the data before moving to create case page.
            Verify Click on Consumer Complaint Monitoring System button navigates to CCMS homepage and Click on CCMS link on the header also navigates to CCMS homepage.
            Case List> Edit compliant data>Case List> Discard - Data Not saved
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "Consumer Complaint Monitoring System"
      And the user can see "Cases by Status" text in "Cases By Status Header" field on "SCORE/Home" page
      And the user clicks the link with text "Case List"
      And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
      And the user remembers the value of "First Case Number" field on "Score/CCMS/ViewcaseList" page
      And the user "clicks" the "Current Value of#First Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
#      And the user clicks the link with text "Complainant Data"
      And the user remembers the value of "Complaint Description" text area on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Case List"
      And the user clicks the "Discard" button on "Score/Dialog" page
      And the user dismisses browser pop-ups
      And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user "clicks" the "Current Value of#First Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
      And the user can see current value of "Complaint Description" in "Complaint Description" field on "Score/CCMS/Case/ComplainantData" page
      And the user can see current value of "First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_2137_2
  Scenario: TC-3947 Verify that user is able to create a new case from within the case. User clicks Save button to save the data before moving to create case page.
            Case List> Edit compliant data>Case List> Save - Data saved
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "Consumer Complaint Monitoring System"
      And the user can see "Cases by Status" text in "Cases By Status Header" field on "SCORE/Home" page
      And the user clicks the link with text "Case List"
      And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
      And the user remembers the value of "First Case Number" field on "Score/CCMS/ViewcaseList" page
      And the user "clicks" the "Current Value of#First Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
      And the user clicks the link with text "Complaint Data"
      And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "Complaint Description" text area on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Create New Case"
      And the user clicks the "Save" button on "Score/Dialog" page
      And the user dismisses browser pop-ups
      And the user can see "Create Case" text in "Header Text" field on "SCORE/CCMS" page
      And the user clicks the link with text "Case List"
      And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
      And the user "clicks" the "Current Value of#First Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
      And the user can see current value of "Complaint Description" in "Complaint Description" field on "Score/CCMS/Case/ComplainantData" page
      And the user can see current value of "First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_2137_3
  Scenario: TC-4852 Verify that user should remain in same page when user clicks on Cancel button while creating new case from within the case.
            Case List> Edit compliant data>Case List> Cancel - Data not saved and remain on same page
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "Consumer Complaint Monitoring System"
      And the user can see "Cases by Status" text in "Cases By Status Header" field on "SCORE/Home" page
      And the user clicks the link with text "Case List"
      And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
      And the user remembers the value of "First Case Number" field on "Score/CCMS/ViewcaseList" page
      And the user "clicks" the "Current Value of#First Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
      And the user clicks the link with text "Complaint Data"
      And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "Complaint Description" text area on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Case List"
      And the user clicks the "Cancel" button on "Score/Dialog" page
      And the user can see current value of "Complaint Description" in "Complaint Description" field on "Score/CCMS/Case/ComplainantData" page
      And the user can see current value of "First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_2137_4
  Scenario: TC-4887 Verify that user is able to create a new case being on any Case View. User clicks Discard button to discard the changes before moving to create case page..
            Verify Click on Consumer Complaint Monitoring System button navigates to CCMS homepage and Click on CCMS link on the header also navigates to CCMS homepage.
            Create Case> Edit compliant data>Create New case> Discard - Data Not saved
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "Consumer Complaint Monitoring System"
      And the user can see "Cases by Status" text in "Cases By Status Header" field on "SCORE/Home" page
      And the user clicks the link with text "Create New Case"
      And the user clicks the link with text "Complaint Data"
      And the user remembers the value of "Complaint Description" text area on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Create New Case"
      And the user clicks the "Discard" button on "Score/Dialog" page
      And the user can see "Create Case" text in "Header Text" field on "SCORE/CCMS" page
      And the user clicks the link with text "Complaint Data"
      And the user can see current value of "Complaint Description" in "Complaint Description" field on "Score/CCMS/Case/ComplainantData" page
      And the user can see current value of "First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_2137_5
  Scenario: TC-4888 Verify that user is able to create a new case being on any Case View. User clicks Save button to save the data before moving to create case page.
            Create Case> Edit compliant data>Create New case> Save - Data saved
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "Consumer Complaint Monitoring System"
      And the user can see "Cases by Status" text in "Cases By Status Header" field on "SCORE/Home" page
      And the user clicks the link with text "Create New Case"
      And the user clicks the link with text "Complaint Data"
      And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "Complaint Description" text area on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Create New Case"
      And the user clicks the "Save" button on "Score/Dialog" page
      And the user dismisses browser pop-ups
      And the user can see "Create Case" text in "Header Text" field on "SCORE/CCMS" page
      And the user clicks the link with text "Case List"
      And the user "clicks" the "first" case number record on View Case table on "Score/CCMS/ViewcaseList" page
      And the user clicks the link with text "Complaint Data"
      And the user can see current value of "Complaint Description" in "Complaint Description" field on "Score/CCMS/Case/ComplainantData" page
      And the user can see current value of "First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_2137_6
  Scenario: TC-4886 User should remain on same page when user clicks on Cancel button while creating New Case being on any Case View.
            Create Case> Edit compliant data>Create New case> Cancel - Data not saved and remain on same page
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "Consumer Complaint Monitoring System"
      And the user can see "Cases by Status" text in "Cases By Status Header" field on "SCORE/Home" page
      And the user clicks the link with text "Create New Case"
      And the user clicks the link with text "Complaint Data"
      And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
      And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "Complaint Description" text area on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Create New Case"
      And the user clicks the "Cancel" button on "Score/Dialog" page
      And the user can see "Create Case" text in "Header Text" field on "SCORE/CCMS" page
      And the user can see current value of "Complaint Description" in "Complaint Description" field on "Score/CCMS/Case/ComplainantData" page
      And the user can see current value of "First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
      And the user sign out from the score application and if pop up opens click discard button

    @US_2138_1
    Scenario: TC-3948 Verify that user is able to create a new case from Create Case link on main menu.
      Given the user navigates to /score on browser
        And the user clicks the link with text "CCMS"
      Then the user can see text "Select a User to Login:"
        And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
        And the user clicks the "Login" button on "Score/User/User/Login" page
        And the user clicks the link with text "Consumer Complaint Monitoring System"
        And the user can see "Cases by Status" text in "Cases By Status Header" field on "SCORE/Home" page
        And the user clicks the link with text "Create New Case"
        And the user clicks the link with text "Complaint Data"
        And the user can see "Personally Identifiable Information (PII) such as name, address or contact information should not be entered into this field. Terms and phrases such as, "the complainant", "he or she", "local DOH", etc. can be used in place of PII in this section of the case." text in "Complaint Data: Disclaimer Message" field on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Incident Date" text in "Incident Date:-Label" field on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Incident Date:" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user sees "Report Death" checkbox with hidden or overlapped the input field is "Unchecked" on "Score/CCMS/Case/ComplainantData" page
        And the user clicks the link with text "Complaint Data"
        And the user can see "Complaint Description" text area box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "1000 left" text in "Complaint Description:Characters Count" field on "Score/CCMS/Case/ComplainantData" page
        And the user sees "Anonymous Complainant" checkbox with hidden or overlapped the input field is "Unchecked" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Salutation" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "First Name" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Last Name" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Age Years" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Age" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see text "On Behalf of:"
        And the user can see "On behalf of: Salutation" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "On behalf of: First Name" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "On behalf of: Last Name" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "On behalf of: Age Years" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "On behalf of: Age" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Address1" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Country" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "City" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Zip Code" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "State" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "District" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Complaint Data:Add Contact:Contact Type-Field" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Complaint Data:Add Contact:Contact Details-Field" text box is "Disabled" on "Score/CCMS/Case/ComplainantData" page
        And the user clicks the "Complaint Data:Add Contact:Cancel-Field" button on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Contact Type" header in table on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Contact Details" header in table on "Score/CCMS/Case/ComplainantData" page
        And the user can see "Action" header in table on "Score/CCMS/Case/ComplainantData" page
        And the user can see the "Create New Case:Save as Draft" button is "Enabled" on "Score/CCMS" page
        And the user sign out from the score application and if pop up opens click discard button

  @US_2138_2
  Scenario: TC-3949 Verify the mandatory fields, field length, data types and checkbox functionality for the Complaint Data form.
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "Consumer Complaint Monitoring System"
      And the user can see "Cases by Status" text in "Cases By Status Header" field on "SCORE/Home" page
      And the user clicks the link with text "Create New Case"
      And the user can see text "Create Case"
      And the user clicks the link with text "Complaint Data"
      And the user enters " " into "Incident Date:" on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Complaint Data"
      And the user can see "The Incident Date field is required for submission." text in "Incident Date:Error Message" field on "Score/CCMS/Case/ComplainantData" page
      And the user clicks on "Complaint Description" element on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Complaint Data"
      And the user can see "The Complaint Description field is required for submission." text in "Complaint Description:Error Message" field on "Score/CCMS/Case/ComplainantData" page
      And the user clicks on "State" element on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Complaint Data"
      And the user can see "State is required when country is United States." text in "State:Error Message" field on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Todays Date" from "Incident Date:Calendar" score html calendar on "Score/CCMS/Case/ComplainantData" page
      And the user check "Report Death" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the "Report Death Dialog:Yes" button on "SCORE/Dialog" page
      And the user sees "Report Death" checkbox with hidden or overlapped the input field is "Checked" on "Score/CCMS/Case/ComplainantData" page
      And the user enters "This is for testing only." into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
      And the user can see "975 Characters" text in "Complaint Description:Characters Count" field on "Score/CCMS/Case/ComplainantData" page
      And the user check "Anonymous Complainant" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplainantData" page
      And the user sees "Anonymous Complainant" checkbox with hidden or overlapped the input field is "Checked" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Salutation" drop down is "Disabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "First Name" text box is "Disabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Last Name" text box is "Disabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Age" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user enters " " into "Age" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "The Age field is required." text in "Age:Error Message" field on "Score/CCMS/Case/ComplainantData" page
      And the user selects "AUSTRALIA" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "City" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Zip Code" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Other Country State" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "City" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Zip Code" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "State" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user enters "123" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Invalid Zip Code Format" text in "Zip Code:Error Message" field on "Score/CCMS/Case/ComplainantData" page
      And the user enters "12345" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Telephone (Mobile)" from "Complaint Data:Add Contact:Contact Type-Field" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Contact Details required to save." text in "Complaint Data:Add Contact:Contact Details-Error" field on "Score/CCMS/Case/ComplainantData" page
      And the user enters "4323453355" into "Complaint Data:Add Contact:Contact Details-Field" on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Email" from "Complaint Data:Add Contact:Contact Type-Field" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Incorrect email format." text in "Complaint Data:Add Contact:Contact Details-Error" field on "Score/CCMS/Case/ComplainantData" page
      And the user enters "abcdef.com" into "Complaint Data:Add Contact:Contact Details-Field" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Incorrect email format." text in "Complaint Data:Add Contact:Contact Details-Error" field on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the "Complaint Data:Add Contact:Cancel-Field" button on "Score/CCMS/Case/ComplainantData" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_2138_3
  Scenario: TC-3950:Verify the Default values and Dropdown values for all the available dropdown fields in Complaint Data form.
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "Consumer Complaint Monitoring System"
      And the user can see "Cases by Status" text in "Cases By Status Header" field on "SCORE/Home" page
      And the user clicks the link with text "Create New Case"
      And the user can see text "Create Case"
      And the user clicks the link with text "Complaint Data"
      And the user sees "--- Select ---" selected in "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "--- Select ---;Mrs.;Ms.;Mr.;Dr." values in "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Mr." from "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user sees "Mr." selected in "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Years;Months" values in "Age Years" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Months" from "Age Years" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user sees "Months" selected in "Age Years" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user sees "--- Select ---" selected in "On Behalf Of: Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "--- Select ---;Mrs.;Ms.;Mr.;Dr." values in "On Behalf Of: Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Mr." from "On Behalf Of: Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user sees "Mr." selected in "On Behalf Of: Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Years;Months" values in "On Behalf Of: Age Years" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Months" from "On Behalf Of: Age Years" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user sees "Months" selected in "On Behalf Of: Age Years" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user sees "UNITED STATES" selected in "Country" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user sees "--- Select ---" selected in "State" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
      And the user sees "- Select -" selected in "Complaint Data:Add Contact:Contact Type-Field" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "- Select -;Email;Telephone (Home);Telephone (Office)" values in "Complaint Data:Add Contact:Contact Type-Field" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the "Complaint Data:Add Contact:Cancel-Field" button on "Score/CCMS/Case/ComplainantData" page
      And the user sign out from the score application and if pop up opens click discard button
