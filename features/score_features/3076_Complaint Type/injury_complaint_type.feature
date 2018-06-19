@SCORE_REGRESSION
@3076_COMPLAINT_TYPE
@SCORE_COMPLAINT_TYPE_INJURY
Feature: This feature is to verify Injury Complaint Type in CCMS
         Total Test Cases automated - 3
         User Story 3094:'Complaint Type' > 'Injury' complaint type [TC-4296,TC-4297,TC-4298] Completed - 3

  @US_3094_1_3094_2
  Scenario: TC-4296 Verify the Injury complaint type form and the fields under it.
            TC-4297 Verify the Default values and the available dropdown values for Injury form fields.
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
      And the user selects "Injury" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "At least ONE injury must be selected." text in "Injury:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Type of Injury" text in "Injury:Table Header-Type of Injury-Label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "How soon after eating did the injury occur?" text in "Injury:Table Header-How soon after eating did the injury occur?-Label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Description" text in "Injury:Table Header-Description-Label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Burn" text in "Injury:Burn-Label" field on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Does not apply" selected in "injury:burn:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Does not apply;Less than 30 minutes;30 minutes – 1 hour;After 1 hour;Unknown" values in "injury:burn:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:burn:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Broken/Loose Tooth" text in "injury:broken/loose tooth-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Does not apply" selected in "injury:broken/loose tooth:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Does not apply;Less than 30 minutes;30 minutes – 1 hour;After 1 hour;Unknown" values in "injury:broken/loose tooth:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:broken/loose tooth:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Choking" text in "injury:choking-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Does not apply" selected in "injury:choking:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Does not apply;Less than 30 minutes;30 minutes – 1 hour;After 1 hour;Unknown" values in "injury:choking:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:choking:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Laceration" text in "injury:laceration-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Does not apply" selected in "injury:laceration:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Does not apply;Less than 30 minutes;30 minutes – 1 hour;After 1 hour;Unknown" values in "injury:laceration:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:laceration:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Toothache" text in "injury:toothache-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Does not apply" selected in "injury:toothache:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Does not apply;Less than 30 minutes;30 minutes – 1 hour;After 1 hour;Unknown" values in "injury:toothache:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:toothache:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Other" text in "injury:other-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Does not apply" selected in "injury:other:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Does not apply;Less than 30 minutes;30 minutes – 1 hour;After 1 hour;Unknown" values in "injury:other:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:other:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Medical Visit" text in "injury:medical visit-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:medical visit-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "None" selected in "injury:medical visit-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "injury:medical visit-field" drop down in alphabetical order with default as "None" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Hospital/Clinic Name" text in "injury:hospital/clinic name-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:hospital/clinic name-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Hospital/Clinic City" text in "injury:hospital/clinic city-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:hospital/clinic city-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Hospital/Clinic Country" text in "injury:hospital/clinic country-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:hospital/clinic country-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "UNITED STATES" selected in "injury:hospital/clinic country-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "injury:hospital/clinic country-field" drop down in alphabetical order with default as "UNITED STATES" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Hospital/Clinic State" text in "injury:hospital/clinic state-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:hospital/clinic state-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "--- Select ---" selected in "injury:hospital/clinic state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "injury:hospital/clinic state-field" drop down in alphabetical order with default as "--- Select ---" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Hospital/Clinic Zip" text in "injury:hospital/clinic zip-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:hospital/clinic zip-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Additional Description" text in "injury:additional description-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:additional description-field" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "injury:additional description-characters count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "injury:save" button is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "injury:Cancel" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Less than 30 minutes" from "injury:burn:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:burn:description-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Less than 30 minutes" from "injury:broken/loose tooth:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:broken/loose tooth:description-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "30 minutes – 1 hour" from "injury:choking:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:choking:description-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "After 1 hour" from "injury:laceration:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:laceration:description-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Unknown" from "injury:toothache:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:toothache:description-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Less than 30 minutes" from "injury:other:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Details are required when the Type of Injury is Other" text in "injury:other:description-error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "Test" into "injury:Other:description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:other:description-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "injury:save" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "injury:Cancel" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user enters "Test Burn Description" into "injury:burn:description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "injury:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
      And the user can see "Create Case" text in "Header Text" field on "SCORE/CCMS" page
      And the user clicks the link with text "Complaint Type"
      And the user selects "Injury" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "" text in "injury:burn:description-field" field on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "injury:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_3094_3
  Scenario: TC-4298 Verify the Mandatory fields and Field length for Free text box in Injury page.
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
      And the user selects "Injury" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Less than 30 minutes" from "injury:other:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Details are required when the Type of Injury is Other" text in "injury:other:description-error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "T" into "injury:Other:description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Details must contain between 2 and 100 characters inclusive." text in "injury:other:description-error" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Does not apply" from "injury:other:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Unknown" from "injury:toothache:how soon after eating did the injury occur?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters "T" into "injury:additional description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "injury:additional description-characters count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test additional description.This is Test Additional Description.This is Test Additional" into "injury:additional description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "5 left" text in "injury:additional description-characters count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test additional description.This is Test Additional Description.This is Test Additional Description." into "injury:additional description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "injury:additional description-characters count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "unique additional description" into "injury:additional description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "injury:additional description-field" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Injury:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      # Edit Injury Complaint type
      And the user "Edit" the Complaint type record with Complaint Type:"Injury" , Medical Visit:"None" and Complaint Description:"Current Value Of#injury:additional description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see current value of "injury:additional description-field" in "injury:additional description-field" field on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "injury:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
      And the user can see "Create Case" text in "Header Text" field on "SCORE/CCMS" page
      And the user clicks the link with text "Complaint Type"
      # Verify all fields are readonly in view mode
      And the user "View" the Complaint type record with Complaint Type:"Injury" , Medical Visit:"None" and Complaint Description:"Current Value Of#injury:additional description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:burn:how soon after eating did the injury occur?-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:burn:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:broken/loose tooth:how soon after eating did the injury occur?-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:broken/loose tooth:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:choking:how soon after eating did the injury occur?-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:choking:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:laceration:how soon after eating did the injury occur?-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:laceration:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:toothache:how soon after eating did the injury occur?-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:toothache:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:other:how soon after eating did the injury occur?-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:other:description-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:medical visit-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:hospital/clinic name-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:hospital/clinic city-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:hospital/clinic country-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:hospital/clinic state-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:hospital/clinic zip-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "injury:additional description-field" text area box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "injury:save" button is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "injury:Cancel" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "injury:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Create Case" text in "Header Text" field on "SCORE/CCMS" page
      And the user clicks the link with text "Complaint Type"
      # Delete Injury Complaint type
      And the user "Delete" the Complaint type record with Complaint Type:"Injury" , Medical Visit:"None" and Complaint Description:"Current Value Of#injury:additional description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully deleted complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user sign out from the score application and if pop up opens click discard button
