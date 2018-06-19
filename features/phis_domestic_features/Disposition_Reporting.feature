@DOMESTIC_Regression_UAT_AMDR
Feature: Domestic DR

  @DOMESTIC_Disposition_Reporting

  Scenario Outline: 9.0 Adding Multiple Disposition record For Meat.
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
    # And the user waits "2" seconds
    And the user deletes existing record if any
    #And the user delete existing meat record if any exist
    #Add a new Meat record.
    And the user adds a new meat record Sub Class"<Sub Class>" Head Count "<Head Count #>" Live Weight "<Weights Number>" Dressed Weight "<Weights Number>" on "DispositionReporting/EstablishmentReporting" page
    #User Story 41703: Adding multiple disposition record for Meat.
    #Locate the meat record which was just added and click on the forward pointing arrow.
    # And the user waits "2" seconds
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "continue button" element on "DispositionReporting/EstablishmentReporting" page
    #And the user clicks on "add button for meat multiple disposition records" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user must see "<Required Indicator>" text in "tag type required indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag number required indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "number of records required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a sub-class.Scenario:
    And the user selects "<Sub-Class>" from "tag type drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Locate and enter a Tag Number.
    And the user enters "<Tag Number>" into "tag number text box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and enter the number of records.Scenario:
    And the user enters "<Number of Records>" into "number of records text box" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition>" from "condition drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition>" from "disposition drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Locate the Cancel button and click on it.
    And the user clicks the "cancel button on multiple disposition" button on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "continue button" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag type required indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag number required indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "number of records required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a sub-class.Scenario:
    And the user selects "<Sub-Class>" from "tag type drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Locate and enter a Tag Number.
    And the user enters "<Tag Number>" into "tag number text box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and enter the number of records.Scenario:
    And the user enters "<Number of Records>" into "number of records text box" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition>" from "condition drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition>" from "disposition drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Enter Narrative Text.
    And the user enters "<Narrative>" into "narrative text box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Select the Positive KIS radio button.
    And the user clicks on "negative kis radio button for meat" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 4 seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "continue button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that the KIS column indicate as Positive.
    And the user must see "Negative" text in "kistest status column for meat" field on "DispositionReporting/EstablishmentReporting" page
    #Click on the cancel button.
    And the user clicks on "add button for meat multiple disposition records" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "3" seconds
    #Editing multiple disposition record.
    And the user clicks on "edit pencil icon for meat multiple disposition record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition1>" from "editable condition drop down for meat field" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    # And the user waits "7" seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition1>" from "editable disposition drop down for meat field" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user enters "<Head Count #>" into "animal id for meat multiple disposition record" on "DispositionReporting/EstablishmentReporting" page
    And the user clicks the "save for meat multiple disposition record" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    And the user must see "<Record saved Confirmation alert.>" text in "saved record alert message for edited meat multiple disposition record" field on "DispositionReporting/EstablishmentReporting" page
    #Deleting a disposition record.
    And the user clicks on "delete multiple disposition icon" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the cancel button.
    And the user clicks on "cancel button on delete pop up message" element on "DispositionReporting/EstablishmentReporting" page
    #Delete a disposition record.
    And the user clicks on "delete multiple disposition icon" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the ok button on the pop up.
    And the user clicks on "ok button to delete ratite record" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "delete icon for meat record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    And the user clicks on "ok button to delete ratite record" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser


    Examples:
      | CSI User        | Establishment 1                      | Sub Class | Weights Number | Head Count #   | Sub-Class      | Required Indicator | Tag Number | Number of Records | Condition                      | Disposition           | Narrative             | Disposition1               | Condition1 | Record saved Confirmation alert. |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Heifer    | 7001           | 70000          | U.S. Condemned | (Required)         | Z1080400   | 10                | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | Passed without Restriction | Carcinoma  | Record saved.                    |


  @US_41703

  Scenario Outline:9.0 Adding, Editing, Printing and Deleting Multiple Disposition record For Meat.
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
    # And the user waits "2" seconds
    And the user deletes existing record if any
    #And the user delete existing meat record if any exist
    #Add a new Meat record.
    And the user adds a new meat record Sub Class"<Sub Class>" Head Count "<Head Count #>" Live Weight "<Weights Number>" Dressed Weight "<Weights Number>" on "DispositionReporting/EstablishmentReporting" page
    #User Story 41703: Adding multiple disposition record for Meat.
    #Locate the meat record which was just added and click on the forward pointing arrow.
    # And the user waits "2" seconds
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "continue button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user must see "<Required Indicator>" text in "tag type required indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag number required indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "number of records required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a sub-class.Scenario:
    And the user selects "<Sub-Class>" from "tag type drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Locate and enter a Tag Number.
    And the user enters "<Tag Number>" into "tag number text box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and enter the number of records.Scenario:
    And the user enters "<Number of Records>" into "number of records text box" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition>" from "condition drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    # And the user waits "7" seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition>" from "disposition drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Locate the Cancel button and click on it.
    And the user clicks the "cancel button on multiple disposition" button on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "continue button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    And the user must see "<Required Indicator>" text in "tag type required indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag number required indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "number of records required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a sub-class.Scenario:
    And the user selects "<Sub-Class>" from "tag type drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Locate and enter a Tag Number.
    And the user enters "<Tag Number>" into "tag number text box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and enter the number of records.Scenario:
    And the user enters "<Number of Records>" into "number of records text box" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition>" from "condition drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition>" from "disposition drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Enter Narrative Text.
    And the user enters "<Narrative>" into "narrative text box" text area box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Select the Positive KIS radio button.
    And the user clicks on "negative kis radio button for meat" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks the "continue button" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "4" seconds
    #Verify that the KIS column indicate as Positive.
    And the user must see "Negative" text in "kistest status column for meat" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "add button for meat multiple disposition records" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "3" seconds
    #Editing multiple disposition record.
    And the user clicks on "edit pencil icon for meat multiple disposition record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition1>" from "editable condition drop down for meat field" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition1>" from "editable disposition drop down for meat field" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user enters "<Head Count #>" into "animal id for meat multiple disposition record" on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "save for meat multiple disposition record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    And the user must see "<Record saved Confirmation alert.>" text in "saved record alert message for edited meat multiple disposition record" field on "DispositionReporting/EstablishmentReporting" page
    #Print Print Condemnation Certificate
    # And the user waits "2" seconds
    #Deleting a disposition record.
    And the user clicks on "delete multiple disposition icon" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the cancel button.
    And the user clicks on "cancel button on delete pop up message" element on "DispositionReporting/EstablishmentReporting" page
    #Delete a disposition record.
    And the user clicks on "delete multiple disposition icon" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the ok button on the pop up.
    And the user clicks on "ok button to delete ratite record" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 4 seconds
    # Delete the record
    And the user clicks on "delete icon for meat record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    And the user clicks on "ok button to delete ratite record" element on "DispositionReporting/EstablishmentReporting" page
    #Sign out.
    And the user sign out and close the browser


    Examples:
      | CSI User        | Establishment 1                      | Sub Class | Weights Number | Head Count #   | Sub-Class     | Required Indicator | Tag Number | Number of Records | Condition                      | Disposition           | Narrative             | Disposition1               | Condition1 | Record saved Confirmation alert. |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Heifer    | 7001           | 70000          | U.S. Retained | (Required)         | B71002000  | 10                | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | Passed without Restriction | Carcinoma  | Record saved.                    |


  @US_41715_DISPR

  Scenario Outline: 9.1 User Story 41715:Ratite Slaughter - Adding multiple disposition records.
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
    # And the user waits "2" seconds
    #Verify that Ratite Displays in the slaughter type gird for the selected Establishment and click on it.
    And the user clicks on "Ratite Link" element on "DispositionReporting/EstablishmentReporting" page
    And the user delete existing ratite record if any
    #Click on the Add slaughter Record link.
    And the user clicks on "add slaughter record button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Verify the section display.
    Then the user must see "Add Slaughter Record" text in "Add Slaughter Record Section" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "Add Button On Ratite Section" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that the Sub-Class and Head Count indicates as required fields.Scenario:
    And the user must see "(Required)" text in "required field for ratite sub-class" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "required field for ratite head count" field on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Select Sub-Class from the drop-down.
    And the user selects "<Sub Class>" from "Sub Class Drop-Down For Ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate the Head Count text-box and enter valid data.
    And the user enters "<Head Count #>" into "head count on ratite section" on "DispositionReporting/EstablishmentReporting" page
    #Click on Weight Not Reported and verify that the live and dressed weight fields are disabled.
    # And the user waits "2" seconds
    And the user clicks on "weight not reported radio button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user clicks on "weight reported radio button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate the Live and Dressed weight text boxes and enter valid data.Scenario:
    And the user enters "<Live Weight #>" into "Live Weight Text-Box For Ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Dressed Weight #>" into "Dressed Weight Text-Box For Ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Head Count #>" into "Head Count On Ratite Section" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Add button and click on it.
    And the user clicks the "Add Button On Ratite Section" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Verify the added record on top of the table.
    And the user must see "<Sub Class>" text in "sub class column" field on "DispositionReporting/EstablishmentReporting" page
    #Accept pop-up alert.
    #And user dismisses browser pop-ups
    # And the user waits "2" seconds
    #And the user must see the text "The record has been deleted successfully." in "Delete Record Message" on "DispositionReporting/EstablishmentReporting"
    #Logout.
    And the user clicks on "sign out button" element on "DispositionReporting/EstablishmentReporting" page

    Examples:
      | CSI User   | Establishment 1                  | Sub Class | Live Weight # | Dressed Weight # | Head Count # |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Ostrich   | 70001         | 7001             | 80000        |


  @US_41715_DISR

  Scenario Outline: 9.0 Adding a new Meat record Record.
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
    # And the user waits "2" seconds
    #Verify that Ratite Displays in the slaughter type gird for the selected Establishment and click on it.
    And the user clicks on "Ratite Link" element on "DispositionReporting/EstablishmentReporting" page
    #Locate the meat record which was just added and click on the forward pointing arrow.
    # And the user waits "2" seconds
    And the user clicks on "forward pointing arrow for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks the "cancel button on multiple disposition for ratite" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "7" seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user clicks on "continue button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user must see "<Required Indicator>" text in "tag type required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag number required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "number of records required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a sub-class.Scenario:
    And the user selects "<Tag-Type>" from "tag type drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate and enter a Tag Number.
    And the user enters "<Tag Number>" into "tag number text box for ratite" on "DispositionReporting/EstablishmentReporting" page
    #Locate and enter the number of records.Scenario:
    And the user enters "<Number of Records>" into "number of records text box for ratite" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition>" from "condition drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    # And the user waits "7" seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition>" from "disposition drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate the Cancel button and click on it.
    And the user clicks the "cancel button on multiple disposition for ratite" button on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "continue button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user must see "<Required Indicator>" text in "tag type required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag number required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "number of records required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a sub-class.Scenario:
    And the user selects "<Tag-Type>" from "tag type drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate and enter a Tag Number.
    And the user enters "<Tag Number>" into "tag number text box for ratite" on "DispositionReporting/EstablishmentReporting" page
    #Locate and enter the number of records.Scenario:
    And the user enters "<Number of Records>" into "number of records text box for ratite" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition>" from "condition drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition>" from "disposition drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Enter Narrative Text.
    And the user enters "<Narrative>" into "narrative text box for ratite" text area box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "continue button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate and click the back button.Scenario:
    And the user clicks on "back button on multiple disposition for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user clicks on "continue button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Click on the add button.
    And the user clicks on "add button on multiple disposition for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Editing multiple disposition record.
    And the user clicks on "edit pencil icon for ratite multiple disposition record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "7" seconds
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition1>" from "editable condition drop down for ratite field" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition1>" from "editable disposition drop down for ratite field" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user enters "<Head Count #>" into "animal id for ratite multiple disposition record" on "DispositionReporting/EstablishmentReporting" page
    And the user clicks the "save for ratite multiple disposition record" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    And the user must see "<Record saved Confirmation alert.>" text in "save record alert message for edited ratite multiple disposition record" field on "DispositionReporting/EstablishmentReporting" page
    And the user delete existing ratite record if any
    #Sign out.
    And the user clicks on "sign out button" element on "DispositionReporting/EstablishmentReporting" page

    Examples:
      | CSI User   | Establishment 1                  | Condition1                      | Disposition1          | Head Count # | Tag-Type       | Required Indicator | Tag Number | Number of Records | Condition     | Disposition           | Narrative             | Record saved Confirmation alert. |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Central Nervous System Disorder | Ante-mortem Condemned | 70000        | U.S. Condemned | (Required)         | Z5700091   | 10                | Airsacculitis | Post-mortem Condemned | Automation test Text. | Record saved.                    |