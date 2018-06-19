@SCORE_REGRESSION
@3076_COMPLAINT_TYPE
@SCORE_COMPLAINT_TYPE_ALLERGIC_REACTION
Feature: This feature is to verify the functionality of Allergic Reaction Complaint Type in CCMS
  Total Test Cases automated - 1
  User Story 3087:'Complaint Type' > 'Allergic Reaction' complaint type [TC-3965,TC3966,TC-3967] Completed - 1

  @US_3087_1
  Scenario: TC-3965 Verify the Allergic Reaction complaint type form and the fields under it.
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
      And the user selects "Allergic Reaction" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "How many people consumed the product?" text in "Consumer Data1:How many people consumed the product?-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:How many people consumed the product?-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "How many people experienced a reaction?" text in "Consumer Data1:How many people experienced a reaction?-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:How many people experienced a reaction?-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "What is the age(s) of the person(s) having the reaction?" text in "Consumer Data1:What is the age of the person having the reaction?Age Options-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Years" selected in "Consumer Data1:What is the age of the person having the reaction?Age Options-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:What is the age of the person having the reaction?Age Options-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:What is the age of the person having the reaction?Age Number-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Consumer Data1:Add Age" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "How did consumer prepare the food? (including other ingredients added)" text in "Consumer Data1:How did consumer prepare the food?-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:How did consumer prepare the food?-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Has the complainant had a similar reaction before?" text in "Consumer Data1:Has the complainant had a similar reaction before?-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Has the complainant had a similar reaction before?-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Unknown" selected in "Consumer Data1:Has the complainant had a similar reaction before?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Similar Reaction Description" text in "Consumer Data1:Similar Reaction Description-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Similar Reaction Description-field" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
#      And the user can see "100 left" text in "Consumer Data1:Similar Reaction Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Additional Comments" text in "Consumer Data1:Additional Comments-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Additional Comments-field" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
#      And the user can see "100 left" text in "Consumer Data1:Additional Comments:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Known Allergy/Sensitivity" text in "Consumer Data1:Known Allergy/Sensitivity-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Known Allergy/Sensitivity-field" multi-select drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
  #      And the user sees "None" selected in "Consumer Data1:Known Allergy/Sensitivity-field" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Allergy Description" text in "Consumer Data1:Allergy Description-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Allergy Description-field" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
#      And the user can see "100 left" text in "Consumer Data1:Allergy Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Medications Given" text in "Consumer Data1:Medications Given-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Medications Given-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
#      And the user can see "100 left" text in "Consumer Data1:Medications Given:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Medical Visit" text in "Consumer Data1:Medical Visit-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Medical Visit-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "None" selected in "Consumer Data1:Medical Visit-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Hospital/Clinic Name" text in "Consumer Data1:Hospital/Clinic Name-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Hospital/Clinic Name-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
#      And the user can see "100 left" text in "Consumer Data1:Hospital/Clinic Name:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Hospital/Clinic City" text in "Consumer Data1:Hospital/Clinic City-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Hospital/Clinic City-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Hospital/Clinic Country" text in "Consumer Data1:Hospital/Clinic Country-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Hospital/Clinic Country-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "--- Select ---" selected in "Consumer Data1:Hospital/Clinic Country-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Hospital/Clinic State" text in "Consumer Data1:Hospital/Clinic State-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Hospital/Clinic State-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "--- Select ---" selected in "Consumer Data1:Hospital/Clinic State-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Hospital/Clinic Zip Code" text in "Consumer Data1:Hospital/Clinic Zip Code-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Consumer Data1:Hospital/Clinic Zip Code-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Consumer Data:Add Consumer" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Consumer Data:Save" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Consumer Data:Cancel" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Consumer Data:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user sign out from the score application and if pop up opens click discard button
