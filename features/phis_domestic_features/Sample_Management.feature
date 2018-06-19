@DOMESTIC_SampleManagement_ADRT
Feature: Sample_Management

  @TC_46850_ADRT
  Scenario Outline: Adding a Positive KIS Meat Record, validating sample management page.
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
    And the user waits for 2 seconds
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
    #Locate and click on the edit icon button.
    And the user clicks on "edit pencil icon for meat disposition record" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "positive kis radio button on edit disposition record section" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 4 seconds
    #Click on the Add KIS Sample button.
    And the user clicks on "add kis sample button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the page "Sample Management -ADR Sample Collection".
    And the user must see "<Sample Management Page>" text in "sample management adr" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "generate sample form required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Select a Reason code.
    #And the user selects "Anemia" from "reason code dropdown" drop down on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "reason code drop down" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "select reason code" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user enters "<Sample Management Page>" into "comments text box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Generate a Sample Form Button.
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
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
    #And user accept browser pop-ups
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
    And the user must see "<Sample Form Saved Message alert>" text in "alert message on sample management" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "save and continue" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Sample Collection Data save alert>" text in "saved alert message for sample collection data" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
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
      | CSI User        | Establishment 1                      | Answer                 | Sample Collection Data save alert         | Sample Form Saved Message alert           | Sub Class | Weights Number | Head Count #   | Sub-Class1     | Required Indicator | Tag Number | Sample Management Page                    | Condition                      | Disposition           | Narrative             | Added records Message                                                                                                                                            | Negative KIS | Submit sample to lab confirmation                |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Automation Testing 101 | Sample collection was saved successfully. | Sample collection was saved successfully. | Heifer    | 7001           | 70000          | U.S. Condemned | (Required)         | Z9920019   | Sample Management - ADR Sample Collection | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | 10 records have been created with the following Tag Numbers Z9999989, Z9999990, Z9999991, Z9999992, Z9999993, Z9999994, Z9999995, Z9999996, Z9999997, Z9999998.  | Negative     | Sample collection has been submitted to the lab. |

  @TC_47681-TC
  Scenario Outline: 9.0 Adding a Negative KIS record for Meat.
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
    #Select Negative Kis.
    And the user clicks on "negative kis radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate and select a Tag type.Scenario:
    And the user selects "<Sub-Class1>" from "tag type drop-down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the Tag Number and enter valid data.
    And the user enters "<Tag Number>" into "Tag Number Text-Box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and select Condition from the Condition drop-down.
    And the user selects "<Condition>" from "Condition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate and select Disposition from the Disposition drop-down.
    And the user selects "<Disposition>" from "Disposition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the Narrative text box and enter valid text.
    And the user enters "<Narrative>" into "Narrative Text-Box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add button.
    And the user clicks on "add button on meat disposition" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the edit icon button.
    And the user clicks on "edit pencil icon for meat disposition record" element on "DispositionReporting/EstablishmentReporting" page
    #Select Negative Kis.
    And the user clicks on "negative kis radio button on edit disposition record section" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add KIS Sample button.
    And the user clicks on "add kis sample button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the page "Sample Management -ADR Sample Collection".
    And the user must see "<Sample Management Page>" text in "sample management adr" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "generate sample form required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Select a Reason code.
    #And the user selects "Anemia" from "reason code dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "reason code drop down" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "select reason code" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user enters "<Sample Management Page>" into "comments text box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Generate a Sample Form Button.
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
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
    # And user accept browser pop-ups
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
    And the user waits for 1 seconds
    #click on the save and continue button.
    And the user clicks on "save and continue" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Sample Form Saved Message alert>" text in "alert message on sample management" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 1 seconds
    And the user clicks on "save and continue" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Sample Collection Data save alert>" text in "saved alert message for sample collection data" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Click on the Submit to lab button.
    And the user clicks on "submit to lab button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
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
      | CSI User        | Establishment 1                      | Answer                 | Sample Form Saved Message alert           | Sample Collection Data save alert         | Sub Class | Weights Number | Head Count #   | Sub-Class1     | Required Indicator | Tag Number | Sample Management Page                   | Condition                      | Disposition           | Narrative             | Added records Message                                                                                                                                           | Negative KIS | Submit sample to lab confirmation                |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Automation Testing 101 | Sample collection was saved successfully. | Sample collection was saved successfully. | Heifer    | 7001           | 70000          | U.S. Condemned | (Required)         | Z2900061   | Sample Management - ADR Sample Collection | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | 10 records have been created with the following Tag Numbers Z9999989, Z9999990, Z9999991, Z9999992, Z9999993, Z9999994, Z9999995, Z9999996, Z9999997, Z9999998. | Negative    | Sample collection has been submitted to the lab. |


  @TC_47744-TC_46850-TC_47744-TC_46909
  Scenario Outline: 9.0 Adding a Negative KIS record for Meat, cancelling and re-schedule to lab.
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
    #Select Negative Kis.
    And the user clicks on "negative kis radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
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
    #Locate and click on the edit icon button.
    And the user clicks on "edit pencil icon for meat disposition record" element on "DispositionReporting/EstablishmentReporting" page
    #Select Negative Kis.
    And the user clicks on "negative kis radio button on edit disposition record section" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add KIS Sample button.
    And the user clicks on "add kis sample button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the page "Sample Management -ADR Sample Collection".
    And the user must see "<Sample Management Page>" text in "sample management adr" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "generate sample form required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Select a Reason code.
    And the user clicks on "reason code drop down" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "select reason code" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user enters "<Sample Management Page>" into "comments text box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Generate a Sample Form Button.
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
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
    #And user accept browser pop-ups
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
    And the user must see "<Sample Form Saved Message alert>" text in "alert message on sample management" field on "DispositionReporting/EstablishmentReporting" page
    #Cancel schedule .
    And the user must see "Cancel Scheduled" text in "cancel lab schedule button" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "cancel lab schedule button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
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
    And the user waits for 2 seconds
    #Click on the Submit to lab button.
    And the user clicks on "submit to lab button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that sample is successfully submitted to lab.Scenario:
    And the user must see "<Submit sample to lab confirmation>" text in "saved alert message for submission to the lab" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 1 seconds
    #Click on Return to ADR button.
    And the user clicks on "return to adr button" element on "DispositionReporting/EstablishmentReporting" page
    #Expand and verify the lab count.
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User        | Establishment 1                      |  Answer                 | Sample Form Saved Message alert           | Sample Collection Data save alert         | Sub Class | Weights Number | Head Count #   | Sub-Class1     | Required Indicator | Tag Number | Sample Management Page                   | Condition                      | Disposition           | Narrative             | Added records Message                                                                                                                                            | Select reason for cancelling lab alert message                   | Submit sample to lab confirmation                |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 |  Automation Testing 101 | Sample collection was saved successfully. | Sample collection was saved successfully. | Heifer    | 7001           | 70000          | U.S. Condemned | (Required)         | Z9999084   | Sample Management - ADR Sample Collection | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | 10 records have been created with the following Tag Numbers Z9999989, Z9999990, Z9999991, Z9999992, Z9999993, Z9999994, Z9999995, Z9999996, Z9999997, Z9999998. | Please select a rejection reason or enter text for other reason. | Sample collection has been submitted to the lab. |