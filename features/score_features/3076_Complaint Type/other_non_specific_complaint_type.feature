@SCORE_REGRESSION
@3076_COMPLAINT_TYPE
@SCORE_COMPLAINT_TYPE_OTHER
Feature: This feature is to verify Other (Non-Specific) Complaint Type in CCMS
  Total Test Cases automated - 3
  User Story 3086:'Complaint Type' > 'Other' complaint type [TC-3962,TC-3963,TC-3964] Completed - 3

  @US_3086_1_3086_2
  Scenario: TC-3962 Verify the Other (Non-Specific) Complaint type form and the fields under it.
            TC-3963 Verify the Default values and the available dropdown values for Other form fields.
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
      And the user selects "Other (Non-Specific)" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      # Verify Concern label and drop down field present in page
      And the user can see "Concern" text in "Other:Concern-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Other:Concern-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "--- Select ---" selected in "Other:Concern-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "--- Select ---;Consumer Inquiry;In-Plant Practices;Other;Packaging;Recall Concerns or Questions;Retail Practices" values in "Other:Concern-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "Other:Concern-field" drop down in alphabetical order with last values as unknown then other if present on "Score/CCMS/Case/ComplaintType" page
      # Verify Additional Description label and field present in page
      And the user can see "Additional Description" text in "Other:Additional Description-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "500 left" text in "Other:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Other:Additional Description-field" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      # Verify Save and Cancel button present in page
      And the user can see the "Other:Save" button is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Other:Cancel" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Other:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "Score/Dialog" page
      And the user can see "Create Case" text in "Header Text" field on "Score/CCMS" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_3086_3
  Scenario: TC-3964 Verify the Mandatory fields and Field length for Additional Description in Other (Non-Specific).
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
      And the user selects "Other (Non-Specific)" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Concern" text in "Other:Concern-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Other:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "The Concern field is required." text in "Other:Concern-error" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Packaging" from "Other:Concern-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Other:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "499 left" text in "Other:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Additional description must have 2 to 500 characters." text in "Other:Additional Description-Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments." into "Other:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "5 left" text in "Other:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments" into "Other:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Other:Additional Description-field" text area on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Other:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Other:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Delete" the Complaint type record with Complaint Type:"Other" , Medical Visit:"None" and Complaint Description:"Current Value Of#Other:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully deleted complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user sign out from the score application and if pop up opens click discard button
