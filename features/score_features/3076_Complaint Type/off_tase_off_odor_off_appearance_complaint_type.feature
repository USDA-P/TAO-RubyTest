@SCORE_REGRESSION
@3076_COMPLAINT_TYPE
@SCORE_COMPLAINT_TYPE_OFF_TASTE
Feature: This feature is to verify Off Taste / Off Odor / Off Appearance Complaint Type in CCMS
         Total test Cases automated - 3
         User Story 3085:'Complaint Type' > 'Off Taste/Off Odor/Off Appearance' [TC-3959,TC-3960,TC-3961] Completed - 3

  @US_3085_1_3085_2
  Scenario: TC-3959-Verify the Off Taste/Off Odor/Off Appearance complaint type form and the fields under it.
            TC-3960-Verify the Default values and the available dropdown values for Off Taste/Off Odor/Off Appearance complaint type form fields.
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "CCMS"
      And the user can see text "Cases by Status"
      And the user clicks the link with text "Create New Case"
      And the user can see text "Create Case"
      And the user clicks the link with text "Complaint Type"
      And the user selects "Off Taste/Off Odor/Off Appearance" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Off Taste Odor Appearance:Off Taste" checkbox with hidden or overlapped the input field is "UnChecked" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Taste List" multi-select drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Taste Description" text area box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Off Taste Odor Appearance:Off Odor" checkbox with hidden or overlapped the input field is "UnChecked" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Odor List" multi-select drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Odor Description" text area box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Off Taste Odor Appearance:Off Appearance" checkbox with hidden or overlapped the input field is "UnChecked" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Appearance List" multi-select drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Appearance Description" text area box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Off Taste Odor Appearance:Save" button is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Off Taste Odor Appearance:Cancel" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      # Verify check Off Taste checkbox -Off Taste List and Off Taste Description is Enabled, verify values in Taste Lit also checks list in alphabetical order
      And the user check "Off Taste Odor Appearance:Off Taste" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Off Taste Odor Appearance:Save" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Taste List" multi-select drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Bitter;Chemical;Rancid/Spoiled;Salty;Sweet;Other" values in "Off Taste Odor Appearance:Off Taste List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "Off Taste Odor Appearance:Off Taste List" multi-select drop down in alphabetical order on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Taste Description" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      # Verify uncheck Off Taste checkbox -Off Taste List and Off Taste Description is Disabled
      And the user check "Off Taste Odor Appearance:Off Taste" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Taste List" multi-select drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Taste Description" text area box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      # Verify check Off Odor checkbox -Off Odor List and Off Odor Description is Enabled, verify values in Odor Lit also checks list in alphabetical order
      And the user check "Off Taste Odor Appearance:Off Odor" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Odor List" multi-select drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Chemical;Rancid/Spoiled;Sweet;Other" values in "Off Taste Odor Appearance:Off Odor List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Odor Description" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      # Verify uncheck Off Odor checkbox -Off Odor List and Off Odor Description is Disabled
      And the user uncheck "Off Taste Odor Appearance:Off Odor" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Odor List" multi-select drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Odor Description" text area box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      # Verify check Off Taste checkbox -Off Appearance List and Off Appearance Description is Enabled, verify values in Appearance Lit also checks list in alphabetical order
      And the user check "Off Taste Odor Appearance:Off Appearance" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Appearance List" multi-select drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "Off Taste Odor Appearance:Off Appearance List" multi-select drop down in alphabetical order on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Color;Moldy;Texture;Other" values in "Off Taste Odor Appearance:Off Appearance List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Appearance Description" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      # Verify uncheck Off Taste checkbox -Off Appearance List and Off Appearance Description is Disabled
      And the user uncheck "Off Taste Odor Appearance:Off Appearance" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Appearance List" multi-select drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Off Taste Odor Appearance:Off Appearance Description" text area box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Off Taste Odor Appearance:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_3085_3
  Scenario: TC-3961- Verify the Mandatory fields and Field length for Free text box for Off Tast/Off Odor/Off Appearance
            This scenario will also verify remove the selected options from Multi-select Dropdown
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "CCMS"
      And the user can see text "Cases by Status"
      And the user clicks the link with text "Create New Case"
      And the user can see text "Create Case"
      And the user clicks the link with text "Complaint Type"
      And the user selects "Off Taste/Off Odor/Off Appearance" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user check "Off Taste Odor Appearance:Off Taste" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
        # Verify additional Description character limit for Off Taste Chemical non-mandatory box
      And the user selects "Chemical" from "Off Taste Odor Appearance:Off Taste List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Description must contain between 2 and 100 characters." text in "Off Taste Odor Appearance:Off Taste Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing only." into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "75 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing." into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "80 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not." into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "9 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not allow user." into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-" into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user removes selected "Chemical" option from "Off Taste Odor Appearance:Off Taste List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
        # Verify additional Description character limit for Off Taste Other mandatory box
      And the user clears the "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "Off Taste Odor Appearance:Off Taste List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "When Other is selected you must enter a description." text in "Off Taste Odor Appearance:Off Taste Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Description must contain between 2 and 100 characters." text in "Off Taste Odor Appearance:Off Taste Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing only." into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "75 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing." into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "80 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not." into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "9 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not allow user." into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-" into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Taste Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user removes selected "Other" option from "Off Taste Odor Appearance:Off Taste List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user clears the "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user uncheck "Off Taste Odor Appearance:Off Taste" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user check "Off Taste Odor Appearance:Off Odor" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
        # Verify additional Description character limit for Off Odor Chemical non-mandatory box
      And the user selects "Chemical" from "Off Taste Odor Appearance:Off Odor List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Description must contain between 2 and 100 characters." text in "Off Taste Odor Appearance:Off Odor Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing only." into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "75 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing." into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "80 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not." into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "9 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not allow user." into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-" into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user removes selected "Chemical" option from "Off Taste Odor Appearance:Off Odor List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
        # Verify additional Description character limit for Off Odor Other mandatory box
      And the user clears the "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "Off Taste Odor Appearance:Off Odor List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "When Other is selected you must enter a description." text in "Off Taste Odor Appearance:Off Odor Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Description must contain between 2 and 100 characters." text in "Off Taste Odor Appearance:Off Odor Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing only." into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "75 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing." into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "80 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not." into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "9 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not allow user." into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-" into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Odor Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user removes selected "Other" option from "Off Taste Odor Appearance:Off Odor List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user clears the "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user uncheck "Off Taste Odor Appearance:Off Odor" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user check "Off Taste Odor Appearance:Off Appearance" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
        # Verify additional Description character limit for Off Appearance Chemical non-mandatory box
      And the user selects "Color" from "Off Taste Odor Appearance:Off Appearance List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Description must contain between 2 and 100 characters." text in "Off Taste Odor Appearance:Off Appearance Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing only." into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "75 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing." into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "80 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not." into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "9 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not allow user." into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-" into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user removes selected "Color" option from "Off Taste Odor Appearance:Off Appearance List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
        # Verify additional Description character limit for Off Appearance Other mandatory box
      And the user clears the "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "Off Taste Odor Appearance:Off Appearance List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "When Other is selected you must enter a description." text in "Off Taste Odor Appearance:Off Appearance Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Description must contain between 2 and 100 characters." text in "Off Taste Odor Appearance:Off Appearance Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing only." into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "75 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing." into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "80 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not." into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "9 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not allow user." into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-" into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Off Taste Odor Appearance:Off Appearance Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user removes selected "Other" option from "Off Taste Odor Appearance:Off Appearance List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user clears the "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Color" from "Off Taste Odor Appearance:Off Appearance List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "Off Taste Odor Appearance:Off Appearance List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user removes selected "Color" option from "Off Taste Odor Appearance:Off Appearance List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user removes selected "Other" option from "Off Taste Odor Appearance:Off Appearance List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Off Taste Odor Appearance:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_3085_4
  Scenario: Verify Save/Cancel dialog after clicking on Cancel button on Off Taste/Off Odor/Off Appearance page
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "CCMS"
      And the user can see text "Cases by Status"
      And the user clicks the link with text "Create New Case"
      And the user can see text "Create Case"
      And the user clicks the link with text "Complaint Type"
      And the user selects "Off Taste/Off Odor/Off Appearance" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
        # Verify click on No on Cancel pop up Dialog in off taste odor appearance page
      And the user check "Off Taste Odor Appearance:Off Taste" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Chemical" from "Off Taste Odor Appearance:Off Taste List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Off Taste Odor Appearance:Off Taste Description" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Off Taste Odor Appearance:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:No" button on "Score/Dialog" page
      And the user can see current value of "Off Taste Odor Appearance:Off Taste Description" in "Off Taste Odor Appearance:Off Taste Description" field on "Score/CCMS/Case/ComplaintType" page
        # Verify click on Yes on Cancel pop up Dialog in off taste odor appearance page
      And the user enters unique "Unique Additional Description" into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Off Taste Odor Appearance:Off Taste Description" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Off Taste Odor Appearance:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "Score/Dialog" page
      And the user can see "Create Case" text in "Header Text" field on "Score/CCMS" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_3085_5
  Scenario: Verify Save on Off Taste/Off Odor/Off Appearance page
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "CCMS"
      And the user can see text "Cases by Status"
      And the user clicks the link with text "Create New Case"
      And the user can see text "Create Case"
      And the user clicks the link with text "Complaint Type"
      And the user selects "Off Taste/Off Odor/Off Appearance" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
        # Enter the Off Taste as Chemical and Off Taste Description
      And the user check "Off Taste Odor Appearance:Off Taste" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Chemical" from "Off Taste Odor Appearance:Off Taste List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Off Taste Odor Appearance:Off Taste Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Off Taste Odor Appearance:Off Taste Description" text area on "Score/CCMS/Case/ComplaintType" page
        # Enter the Off Odor as Chemical and Off Odor Description
      And the user check "Off Taste Odor Appearance:Off Odor" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Chemical" from "Off Taste Odor Appearance:Off Odor List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Off Taste Odor Appearance:Off Odor Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Off Taste Odor Appearance:Off Odor Description" text area on "Score/CCMS/Case/ComplaintType" page
        # Enter the Off Appearance as Color and Off Appearance Description
      And the user check "Off Taste Odor Appearance:Off Appearance" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Color" from "Off Taste Odor Appearance:Off Appearance List" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Off Taste Odor Appearance:Off Appearance Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Off Taste Odor Appearance:Off Appearance Description" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Off Taste Odor Appearance:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees" the Complaint type record with Complaint Type:"Off Taste/Off Odor/Off Appearance" , Medical Visit:"None" and Complaint Description:"Current Value Of#Off Taste Odor Appearance:Off Taste Description#Off Taste Odor Appearance:Off Odor Description#Off Taste Odor Appearance:Off Appearance Description" on "Score/CCMS/Case/ComplaintType" page
      And the user "Delete" the Complaint type record with Complaint Type:"Off Taste/Off Odor/Off Appearance" , Medical Visit:"None" and Complaint Description:"Current Value Of#Off Taste Odor Appearance:Off Taste Description#Off Taste Odor Appearance:Off Odor Description#Off Taste Odor Appearance:Off Appearance Description" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully deleted complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user sign out from the score application and if pop up opens click discard button
