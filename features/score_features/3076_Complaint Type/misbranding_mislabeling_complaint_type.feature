@SCORE_REGRESSION
@3076_COMPLAINT_TYPE
@SCORE_COMPLAINT_TYPE_MISBRANDING
Feature: This feature is to verify Misbranding / Mislabeling Complaint Type in CCMS
         Total Test Cases automated - 3
         User Story 3083:'Complaint Type' > 'Misbranding/Mislabeling' complaint type [TC-5277,TC-5278,TC-5279] Completed - 3

  @US_3083_1_3083_2
  Scenario: TC-5277: Verify the Misbranding/Mislabeling form and the fields under it
            TC-5278 Verify the Default values and available dropdown values for Misbranding/Mislabeling form
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
      And the user selects "Misbranding/Mislabeled" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      # Verify Alleged Issue label and drop down field present in page
      And the user can see "Alleged Issue" text in "Misbranding/Mislabeled:alleged issue-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Misbranding/Mislabeled:alleged issue-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Unknown" selected in "Misbranding/Mislabeled:alleged issue-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Unknown;Incorrect Ingredients Statement or Cross Contamination;Incorrect Labeling Claims (i.e. “gluten free");Incorrect Nutrition Statement;Incorrect Product Weight;Mislabeled Fat or Water Content;Misleading Product Package Picture or Description;Missing or Incorrect Mark of Inspection;Missing or Incorrect Product Dating;Other" values in "Misbranding/Mislabeled:alleged issue-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "Misbranding/Mislabeled:alleged issue-field" drop down in alphabetical order with default as "Unknown" on "Score/CCMS/Case/ComplaintType" page
      # Verify Additional Description label and field present in page
      And the user can see "Additional Description" text in "Misbranding/Mislabeled:Additional Description-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Misbranding/Mislabeled:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Misbranding/Mislabeled:Additional Description-field" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      # Verify Save and Cancel button present in page
      And the user can see the "Misbranding/Mislabeled:Save" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Misbranding/Mislabeled:Cancel" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Misbranding/Mislabeled:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "Score/Dialog" page
      And the user can see "Create Case" text in "Header Text" field on "Score/CCMS" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_3083_3
  Scenario: TC-5279 Verify the Mandatory fields and field length for free text for Misbranding/Mislabeling form
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
      And the user selects "Misbranding/Mislabeled" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Alleged Issue" text in "Misbranding/Mislabeled:alleged issue-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "Misbranding/Mislabeled:alleged issue-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "An additional description is required when the Alleged Issue is Other" text in "Misbranding/Mislabeled:Additional Description-Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Misbranding/Mislabeled:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Misbranding/Mislabeled:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Additional description must contain between 2 and 100 characters inclusive." text in "Misbranding/Mislabeled:Additional Description-Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test additional comments.This is test additional comments.This is test additional comments." into "Misbranding/Mislabeled:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "1 left" text in "Misbranding/Mislabeled:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments" into "Misbranding/Mislabeled:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Misbranding/Mislabeled:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Incorrect Product Weight" from "Misbranding/Mislabeled:alleged issue-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Misbranding/Mislabeled:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Misbranding/Mislabeled:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Additional description must contain between 2 and 100 characters inclusive." text in "Misbranding/Mislabeled:Additional Description-Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test additional comments.This is test additional comments.This is test additional comments." into "Misbranding/Mislabeled:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "1 left" text in "Misbranding/Mislabeled:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test additional comments.This is test additional comments.This is test additional comments.This is test additional comments" into "Misbranding/Mislabeled:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Misbranding/Mislabeled:Additional Description-field" text area on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Misbranding/Mislabeled:Additional Description-Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Misbranding/Mislabeled:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Delete" the Complaint type record with Complaint Type:"Misbranding/Mislabeled" , Medical Visit:"None" and Complaint Description:"Current Value Of#Misbranding/Mislabeled:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully deleted complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user sign out from the score application and if pop up opens click discard button
