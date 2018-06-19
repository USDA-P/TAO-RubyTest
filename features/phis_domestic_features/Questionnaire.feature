@DOMESTIC_Questionnaire_AQADR
Feature: Domestic_ADR_R1_Questionnaire


  @TC_46116_AQADR
  Scenario Outline: 9.0 Adding, editing and deleting a lab Record record and Questionnaire for Meat.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Click on the Animal Disposition from the Left Nav.
    And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    #Locate and click on the Establishment Reporting from the Left nav.
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    #Verify the page.
    Then the user must see "Establishment Reporting" text in "Title" field on "DispositionReporting/EstablishmentReporting" page
    #Select Establishment from the Establishment drop-down.
    And the user selects "<Establishment 1>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    #Add a new Meat record.
    And the user adds a new meat record Sub Class"<Sub Class>" Head Count "<Head Count #>" Live Weight "<Weights Number>" Dressed Weight "<Weights Number>" on "DispositionReporting/EstablishmentReporting" page
    #User Story 41703: Adding multiple disposition record for Meat.
    #Locate the meat record which was just added and click on the forward pointing arrow.
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add disposition record button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "Add Button On Disposition Page" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that all the Tag Type, Tag Number, Condition and Disposition fields are indicated as Reqired.Scenario:
    And the user must see "(Required)" text in "tag type required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "tag number required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "condition required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "disposition required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    #Select Positive Kis.
    And the user clicks on "positive kis radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select a Tag type.Scenario:
    And the user selects "<Sub-Class1>" from "tag type drop-down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the Tag Number and enter valid data.
    And the user enters "<Tag Number>" into "Tag Number Text-Box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and select Condition from the Condition drop-down.
    And the user selects "<Condition>" from "Condition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop-down.
    And the user selects "<Disposition>" from "Disposition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the Narrative text box and enter valid text.
    And the user enters "<Narrative>" into "Narrative Text-Box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add button.
    And the user clicks on "add button on meat disposition" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and click on the edit icon button.
    And the user clicks on "edit pencil icon for meat disposition record" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add KIS Sample button.
    And the user clicks on "add kis sample button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the page "Sample Management -ADR Sample Collection".
    And the user must see "<Sample Management Page>" text in "sample management adr" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks the "generate a sample form button" button on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "generate sample form required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Select a Reason code.
    And the user clicks on "reason code drop down" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "select reason code" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user enters "<Sample Management Page>" into "comments text box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Generate a Sample Form Button.
    And the user clicks the "generate a sample form button" button on "DispositionReporting/EstablishmentReporting" page
    #Select Animal Status.
    And the user clicks on "animal status radio button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter flock owner.
    And the user enters "<CSI User>" into "herd flock owner text box" on "DispositionReporting/EstablishmentReporting" page
    #Enter the Remark text.
    And the user enters "<Added records Message>" into "remark test box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Schedule link.
    And the user clicks on "schedule link" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Click on the Save and continue button.
    And the user clicks on "save and continue button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the start questionnaire link and verify the alert message.
    And the user clicks on "click on start questionnaire link" element on "DispositionReporting/EstablishmentReporting" page
    And user accept browser pop-ups
    #Click on the start button.
    And the user clicks on "start questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Select question A on page 1.
    And the user enters "<Answer>" into "question a answer box" on "DispositionReporting/EstablishmentReporting" page
    #Select Yes for question 1 page 1.
    And the user selects "Yes" from "question one drop down" drop down on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 2 on page 1.
    And the user enters "<Answer>" into "question two answer box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 3 on page 2.
    And the user enters "<Answer>" into "question three answer box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the previous button.
    And the user clicks on "previous button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 3 on page 2.
    And the user enters "<Answer>" into "question three answer box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 4 page 2.
    And the user enters "<Answer>" into "question four answer box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 5 page 2.
    And the user enters "<Answer>" into "question five answer box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 6 page 3.
    And the user enters "<Answer>" into "question sis answer box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 7 page 3.
    And the user enters "<Answer>" into "question seven answer box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 8 page 3.
    And the user enters "<Answer>" into "question eight answer box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 9 page 4.
    And the user enters "<Answer>" into "question nine answer box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks the "next button" button on "DispositionReporting/EstablishmentReporting" page
    #Click on the back button.
    And the user clicks on "back button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the close button.
    And the user clicks on "close button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that question is in-progress.
    #And the user must see the text "Last Opened Questionnaire" in "in progress questionnaire table" on "DispositionReporting/EstablishmentReporting"
    #Click open link to reopen questionnaire.
    And the user clicks on "open questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Resume button.
    And the user clicks on "resume questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the submit button.
    And the user clicks on "submit questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Lab Sample button from the left navigation.
    And the user clicks on "lab sample button" element on "DispositionReporting/EstablishmentReporting" page
    #click on the save and continue button.
    And the user clicks on "save and continue" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Sample Form Saved Message alert>" text in "alert message on sample management" field on "DispositionReporting/EstablishmentReporting" page
    #Cancel schedule .
    And the user must see "Cancel Scheduled" text in "cancel lab schedule button" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "cancel lab schedule button" element on "DispositionReporting/EstablishmentReporting" page
    #And the user switch to "reason for cancelling lab iframe" frame
    And the user switch to iframe
    #Click on the save and close button to verify that user must select a reason.Scenario:
    And the user clicks on "save and close button on cancel lap pop up" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user must see "Please select a rejection reason or enter text for other reason." text in "alert message on cancel lap pop up to select reason" field on "DispositionReporting/EstablishmentReporting" page
    And the user enters "Please select a rejection reason or enter text for other reason." into "describe if other textbox on cancel lap pop up" text area box on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "cancel button on cancel lap pop up" element on "DispositionReporting/EstablishmentReporting" page
    And the user switch back to main window
    And the user waits for 2 seconds
    And the user clicks on "cancel lab schedule button" element on "DispositionReporting/EstablishmentReporting" page
    And the user switch to iframe
    #Selecet reason form the reason drop-down.
    And the user clicks on "reason dropdown arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "reason option" element on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Answer>" into "describe if other textbox on cancel lap pop up" text area box on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "save and close button on cancel lap pop up" element on "DispositionReporting/EstablishmentReporting" page
    And the user switch back to main window
    And the user must see "Re-Schedule" text in "reschedule link on sample collection data tab" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "reschedule link on sample collection data tab" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "Cancel Scheduled" text in "cancel lab schedule button" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "save and continue" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Sample Collection Data save alert>" text in "saved alert message for sample collection data" field on "DispositionReporting/EstablishmentReporting" page
    #Click on the Submit to lab button.
    And the user clicks on "submit to lab button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that sample is successfully submitted to lab.Scenario:
    And the user must see "<Submit sample to lab confirmation>" text in "saved alert message for submission to the lab" field on "DispositionReporting/EstablishmentReporting" page
    #Click on Return to ADR button.
    And the user clicks on "return to adr button" element on "DispositionReporting/EstablishmentReporting" page
    #Expand and verify the lab count.
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User        | Establishment 1                      | Answer                 | Sample Collection Data save alert         | Sample Form Saved Message alert           | Sub Class | Weights Number | Head Count #   | Sub-Class1      | Required Indicator | Tag Number | Sample Management Page                   | Condition                      | Disposition           | Narrative             | Added records Message                                                                                                                                            | Negative KIS | Submit sample to lab confirmation                |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Automation Testing 101 | Sample collection was saved successfully. | Sample collection was saved successfully. | Heifer    | 7001           | 70000          | U.S. Condemned | (Required)         | Z1950008   | Sample Management - ADR Sample Collection | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | 10 records have been created with the following Tag Numbers Z9999989, Z9999990, Z9999991, Z9999992, Z9999993, Z9999994, Z9999995, Z9999996, Z9999997, Z9999998.  | Negative     | Sample collection has been submitted to the lab. |


  @TC_46149_AQ1

  Scenario Outline: 9.0 Adding, editing and deleting a lab Record record and Questionnaire for Rtaite.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Click on the Animal Disposition from the Left Nav.
    And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    #Locate and click on the Establishment Reporting from the Left nav.
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    #Verify the page.
    Then the user must see "Establishment Reporting" text in "Title" field on "DispositionReporting/EstablishmentReporting" page
    #Select Establishment from the Establishment drop-down.
    And the user selects "<Establishment 1>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    #Verify that Ratite Displays in the slaughter type gird for the selected Establishment and click on it.
    And the user clicks on "Ratite Link" element on "DispositionReporting/EstablishmentReporting" page
    And the user delete existing ratite record if any
    #Click on the Add slaughter Record link.
    And the user clicks on "add slaughter record button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the section display.
    Then the user must see "Add Slaughter Record" text in "Add Slaughter Record Section" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "Add Button On Ratite Section" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that the Sub-Class and Head Count indicates as required fields.Scenario:
    And the user must see "(Required)" text in "required field for ratite sub-class" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "required field for ratite head count" field on "DispositionReporting/EstablishmentReporting" page
    #Select Sub-Class from the drop-down.
    And the user selects "<Sub Class>" from "Sub Class Drop-Down For Ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate the Head Count text-box and enter valid data.
    And the user enters "<Head Count #>" into "Head Count On Ratite Section" on "DispositionReporting/EstablishmentReporting" page
    #Click on Weight Not Reported and verify that the live and dressed weight fields are disabled.
    And the user clicks on "weight not reported radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "weight reported radio button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate the Live and Dressed weight text boxes and enter valid data.Scenario:
    And the user enters "<Live Weight #>" into "Live Weight Text-Box For Ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Dressed Weight #>" into "Dressed Weight Text-Box For Ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Head Count #>" into "Head Count On Ratite Section" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Add button and click on it.
    And the user clicks on "add button on ratite section" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the added record on top of the table.
    And the user must see "<Sub Class>" text in "sub class column" field on "DispositionReporting/EstablishmentReporting" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment 1                  | Sub Class | Live Weight # | Dressed Weight # | Head Count # |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Ostrich    | 70001         | 7001            | 80000        |


  @TC_46149_AQ2

  Scenario Outline: 9.2 Adding, editing and deleting a lab Record record and Questionnaire for Ratite.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User1>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Click on the Animal Disposition from the Left Nav.
    And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    #Locate and click on the Establishment Reporting from the Left nav.
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    #Verify the page.
    Then the user must see "Establishment Reporting" text in "Title" field on "DispositionReporting/EstablishmentReporting" page
    #Select Establishment from the Establishment drop-down.
    And the user selects "<Establishment 2>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Ratite tab on the grid.
    And the user clicks on "Ratite Link" element on "DispositionReporting/EstablishmentReporting" page
   # And the user delete existing ratite record if any
    #Locate the meat record which was just added and click on the forward pointing arrow.
    And the user clicks on "forward pointing arrow for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Add Disposition Record Link.
    And the user clicks on "Add Ratite Disposition Record Button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Add button.
    And the user clicks on "Add Button On Ratite Disposition Section" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that all the Tag Type, Tag Number, Condition and Disposition fields are indicated as Reqired.Scenario:
    And the user must see "(Required)" text in "ratite tag type required field indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Ratite Tag Number Required Field Indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Ratite Condition Required Field Indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Ratite Disposition Required Field Indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Select Tag Type from drop-down.
    And the user selects "<Tag Type>" from "tag type dropdown for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the Tag Number and enter valid data.
    And the user enters "<Tag Number>" into "Tag Number Text-Box for ratite" on "DispositionReporting/EstablishmentReporting" page
    #Locate and select Condition from the Condition drop-down.
    And the user selects "<Condition>" from "Condition Drop-Down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop-down.
    And the user selects "<Disposition>" from "Disposition Drop-Down For Ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the Narrative text box and enter valid text.
    And the user enters "<Narrative Text>" into "Narrative Text-Box For Ratite" text area box on "DispositionReporting/EstablishmentReporting" page
     #Click on the Add button.
    And the user clicks on "ratite add button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the added Disposition record for Meat
    And the user must see "<Tag Number>" text in "tag number column" field on "DispositionReporting/EstablishmentReporting" page
    #User Story 40285: Editing Record Disposition Record.
    #User Story 41566: Nesting disposition records For Ratite.
    #Locate and click the Refresh button.
    #And the user clicks "forward pointing arrow for ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Ratite Refresh Button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    And the user clicks on "Forward Pointing Arrow For Ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the edit pencil icon.
    And the user clicks on "Edit Disposition Record Icon For Ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the edit page for the ratite disposition record display.
    And the user must see "<Edit Page For Ratite Disposition R>" text in "edit disposition record page" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "add lab sample button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the page "Sample Management -ADR Sample Collection".
    And the user must see "Sample Management - ADR Sample Collection" text in "sample management adr" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "postal code drop down" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "postal code drop down input" element on "DispositionReporting/EstablishmentReporting" page
    #And the user selects "CG_SHOW_WL" from "postal code drop down" on "FSISDashBoard/Shared/Login" page
    And the user clicks on "analyst check box" element on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter flock owner.
    And the user enters "<CSI User1>" into "herd flock owner text box" on "DispositionReporting/EstablishmentReporting" page
    #Enter the Remark text.
    And the user enters "<Answer>" into "remark test box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Select Animal Status.
    And the user clicks on "animal status radio button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Schedule link.
    And the user clicks on "schedule link" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Click on the Save and continue button.
    And the user clicks on "save and continue button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the start questionnaire link and verify the alert message.
    And the user clicks on "click on start questionnaire link" element on "DispositionReporting/EstablishmentReporting" page
    And user accept browser pop-ups
    #Click on the start button.
    And the user clicks on "start questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 1 seconds
    #Select question A on page 1.
    And the user enters "<Answer>" into "question1 text box" on "DispositionReporting/EstablishmentReporting" page
    #Select Yes for question 2 page 1.
    And the user enters "Yes" into "question2 text box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 3 on page 1.
    And the user enters "<Answer>" into "question3 text box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 4 on page 2.
    And the user enters "<Answer>" into "question4 text box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the previous button.
    And the user clicks on "previous button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 4 on page 2.
    And the user enters "<Answer>" into "question4 text box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 5 page 2.
    And the user enters "<Answer>" into "question5 text box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 6 page 2.
    And the user enters "<Answer>" into "question6 text box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 7 page 3.
    And the user enters "<Answer>" into "question7 text box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 8 page 3.
    And the user enters "<Answer>" into "question8 text box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the back button.
    And the user clicks on "back button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the close button.
    And the user clicks on "close button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that question is in-progress.
    #And the user must see the text "Last Opened Questionnaire" in "in progress questionnaire table" on "DispositionReporting/EstablishmentReporting"
    #Click open link to reopen questionnaire.
    And the user clicks on "open questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Resume button.
    And the user clicks on "resume questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the submit button.
    And the user clicks on "submit questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Lab Sample button from the left navigation.
    And the user clicks on "lab sample button" element on "DispositionReporting/EstablishmentReporting" page
    #click on the save and continue button.
    And the user clicks on "save and continue" element on "DispositionReporting/EstablishmentReporting" page
    #Cancel schedule .
    And the user must see "Cancel Scheduled" text in "cancel lab schedule button" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "cancel lab schedule button" element on "DispositionReporting/EstablishmentReporting" page
    #And the user switch to "reason for cancelling lab iframe" frame
    And the user switch to iframe
    #Click on the save and close button to verify that user must select a reason.Scenario:
    And the user clicks on "save and close button on cancel lap pop up" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user must see "Please select a rejection reason or enter text for other reason." text in "alert message on cancel lap pop up to select reason" field on "DispositionReporting/EstablishmentReporting" page
    And the user enters "Please select a rejection reason or enter text for other reason." into "describe if other textbox on cancel lap pop up" text area box on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "cancel button on cancel lap pop up" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user switch back to main window
    And the user waits for 2 seconds
    And the user clicks on "cancel lab schedule button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user switch to iframe
    #Selecet reason form the reason drop-down.
    And the user clicks on "reason dropdown arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "reason option" element on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Answer>" into "describe if other textbox on cancel lap pop up" text area box on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "save and close button on cancel lap pop up" element on "DispositionReporting/EstablishmentReporting" page
    And the user switch back to main window
    And the user must see "Re-Schedule" text in "reschedule link on sample collection data tab" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "reschedule link on sample collection data tab" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "Cancel Scheduled" text in "cancel lab schedule button" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 1 seconds
    And the user clicks on "save and continue" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 4 seconds
    #Click on the Submit to lab button.
    And the user clicks on "submit to lab button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that sample is successfully submitted to lab.Scenario:
    And the user must see "Sample collection has been submitted to the lab." text in "saved alert message for submission to the lab" field on "DispositionReporting/EstablishmentReporting" page
    #Click on Return to ADR button.
    And the user clicks on "return to adr button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "Ratite Link" element on "DispositionReporting/EstablishmentReporting" page
    #Locate the Ratite record which was just added and click on the forward pointing arrow.
    And the user clicks on "Ratite Refresh Button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    And the user clicks on "Forward Pointing Arrow For Ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Delete Disposition Record Icon For Ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "ok button to delete ratite record" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "Delete Record Icon For Ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "ok button to delete ratite record" element on "DispositionReporting/EstablishmentReporting" page
    #Sign out.
    And the user sign out and close the browser

    
    Examples:
      | CSI User1  | Establishment 2                  | Tag Type          | Tag Number | Condition                       | Disposition | Narrative Text       | Edit Page For Ratite Disposition R | Answer                  | Save Message Alert |
      | Lee, Aaron | The Pork Company - M20608 P20608 | U.S. Condemned    | Z3130907   | Central Nervous System Disorder | Pending     | Automation Test Text | Edit Disposition Record            | Automation Testing Data | Record saved.      |