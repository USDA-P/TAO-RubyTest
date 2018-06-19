@SCORE_REGRESSION
@3076_COMPLAINT_TYPE
@SCORE_COMPLAINT_TYPE_ECONOMIC_ADULTERATION
Feature: This feature is to verify Economic Adulteration Complaint Type in CCMS
  Total Test Cases automated - 4
  User Story 3082:'Complaint Type' > 'Economic Adulteration' complaint type [TC-3956,TC-3957,TC-3958] Completed - 3
  User Story 3099:'Complaint Type' > Check on character limit for description boxes [TC-4295] Completed 1

  @US_3082_1_3082_2
  Scenario: TC-3956 Verify the Economic Adulteration Complaint type form and the fields under it.
            TC-3957:Verify the Default values and the available dropdown values for Economic Adulteration form fields.
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
      And the user waits for 2 seconds
      And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Economic Adulteration:Concern" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "--- Select ---;Fat;Liquid;Weight;Other" values in "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "Economic Adulteration:Concern" drop down in alphabetical order with last values as unknown then other if present on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Economic Adulteration:Additional Description" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Economic Adulteration:Save" button is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see the "Economic Adulteration:Cancel" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Economic Adulteration:Cancel" button on "Score/CCMS/Case/ComplaintType" page
    # Bug Cancel pop up should not have to be displayed
      And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_3082_3
  Scenario: TC-3958 Verify the Mandatory fields and Field length for Additional Description in Economic Adulteration page.
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
      And the user waits for 2 seconds
      And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "--- Select ---" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "The Concern field is required." text in "Economic Adulteration:Concern:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "a" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Additional description must contain between 2 and 100 characters inclusive." text in "Economic Adulteration:Additional Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user clears the "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "An additional description is required when the Concern is Other" text in "Economic Adulteration:Additional Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "a" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Additional description must contain between 2 and 100 characters inclusive." text in "Economic Adulteration:Additional Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test1 This is test2 This is test3 This is test4 This is test5 This is test06 This is test07." into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Economic Adulteration:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
      And the user sign out from the score application and if pop up opens click discard button

  @CT_ECONOMIC_ADULTERATION
  @US_3082_4
  Scenario: TC- Verify the Economic Adulteration Record is sucessfully saved with Additional Description.
            Delete Complaint Type
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
      And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
      And the user "Delete" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully deleted complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
      And the user "Delete" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully deleted complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Weight" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test1 This is test2 This is test3 This is test4 This is test5 This is test06 This is test07 This is test08" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"This is test1 This is test2 This is test3 This is test4 This is test5 This is test06 This is test07" on "Score/CCMS/Case/ComplaintType" page
      And the user "Delete" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"This is test1 This is test2 This is test3 This is test4 This is test5 This is test06 This is test07" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully deleted complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is test1 This is test2 This is test3 This is test4 This is test5 This is test06 This is test07 This is test08" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"This is test1 This is test2 This is test3 This is test4 This is test5 This is test06 This is test07" on "Score/CCMS/Case/ComplaintType" page
      And the user "Delete" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"This is test1 This is test2 This is test3 This is test4 This is test5 This is test06 This is test07" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully deleted complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_3099
  Scenario: TC-4295:Verify the Field length for Description boxes.
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
  #    And the user waits for 2 seconds
      And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "--- Select ---" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "The Concern field is required." text in "Economic Adulteration:Concern:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      # Verify additional Description character limit for Fat non mandatory box
      And the user enters "A" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Additional description must contain between 2 and 100 characters inclusive." text in "Economic Adulteration:Additional Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing only." into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "75 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing." into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "80 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not." into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "9 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not allow user." into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user clears the "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      # Verify additional Description character limit for Other mandatory box
      And the user selects "Other" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "An additional description is required when the Concern is Other" text in "Economic Adulteration:Additional Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Additional description must contain between 2 and 100 characters inclusive." text in "Economic Adulteration:Additional Description:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "99 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing only." into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "75 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing." into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "80 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not." into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "9 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "User should not be able to enter more than 100 characters in the text box. System will not allow user." into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-123456789-" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user can see "0 left" text in "Economic Adulteration:Additional Description:Characters Count" field on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Economic Adulteration:Cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
      And the user sign out from the score application and if pop up opens click discard button
