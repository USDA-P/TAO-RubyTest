@DOMESTIC_ERT_Full_Features_Test
Feature: Domestic ADR


  @TC_41283_Test

  Scenario Outline: Validating the Poultry Grid.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    Then the user must see "Establishment Reporting" text in "Title" field on "DispositionReporting/EstablishmentReporting" page
    And the user selects "<Establishment 1>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    Then the user can see "Sub-Class" text in "column 1 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Type" text in "column 2 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Head Count" text in "column 3 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Live Weight" text in "column 4 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Dressed Weight" text in "column 5 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Weight Not Reported" text in "column 6 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Shift 1" text in "Shift 1 link" field on "DispositionReporting/EstablishmentReporting" page
    And the user selects "<Establishment 2>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    # And the user waits "3" seconds
    And the user clicks on "Shift 2 link" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    # And the user waits "5" seconds
    And the user clicks on "Shift 1 link" element on "DispositionReporting/EstablishmentReporting" page
    And the user sign out and close the browser


    Examples:
      | CSI User   | Establishment 1                  | Establishment 2                             |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Case Farms of North Carolina, Inc. - P19128 |


  @TC_41284-9_Test

  Scenario Outline: Validating Ratite Grid.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    Then the user must see "Establishment Reporting" text in "Title" field on "DispositionReporting/EstablishmentReporting" page
    And the user selects "<Establishment>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    Then the user must see "Ratite" text in "Ratite tab" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Ratite tab" element on "DispositionReporting/EstablishmentReporting" page
    And the user delete existing ratite record if any
    Then the user can see "No records to display." text in "ratite grid" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Meat tab" element on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Sub-Class" text in "column 1 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Type" text in "column 2 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Head Count" text in "column 3 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Live Weight" text in "column 4 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Dressed Weight" text in "column 5 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Weight Not Reported" text in "column 6 header" field on "DispositionReporting/EstablishmentReporting" page
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment                    |
      | Lee, Aaron | The Pork Company - M20608 P20608 |


  @TC_41283.1_Test

  Scenario Outline: Validating the Meat Grid.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    Then the user must see "Establishment Reporting" text in "Title" field on "DispositionReporting/EstablishmentReporting" page
    And the user selects "<Establishment>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Meat tab" element on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    Then the user must see "Meat" text in "Meat tab" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "No records to display." text in "meat grid" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Sub-Class" text in "column 1 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Type" text in "column 2 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Head Count" text in "column 3 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Live Weight" text in "column 4 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Dressed Weight" text in "column 5 header" field on "DispositionReporting/EstablishmentReporting" page
    Then the user can see "Weight Not Reported" text in "column 6 header" field on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment                    |
      | Lee, Aaron | The Pork Company - M20608 P20608 |

  @TC_43488_42773_Test

  Scenario Outline:
  9.0 Verifying the logic flow for adding Meat and Ratite Records.
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
    And the user waits for 3 seconds
    #Locate the Head Count text-box and enter valid data.
    And the user enters "<Head Count #>" into "Head Count On Ratite Section" on "DispositionReporting/EstablishmentReporting" page
    #Click on Weight Not Reported and verify that the live and dressed weight fields are disabled.
    And the user clicks on "weight not reported radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "weight reported radio button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate the Live and Dressed weight text boxes and enter valid data.Scenario:
    And the user enters "<Live Weight #>" into "Live Weight Text-Box For Ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Dressed Weight #>" into "Dressed Weight Text-Box For Ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Head Count #>" into "Head Count On Ratite Section" on "DispositionReporting/EstablishmentReporting" page
    #click on the cancel button.
    And the user clicks the "cancel button for meat record" button on "DispositionReporting/EstablishmentReporting" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment 1                  | Sub Class | Live Weight # | Dressed Weight # | Head Count # |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Ostrich    | 70001         | 7001            | 80000        |


  @TC_Custom_ADR_Test

  Scenario Outline:
  9.0 Verifying Custom check for Meat record.
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
    And the user selects "<Establishment 2>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    #Verify that Meat Displays in the slaughter type gird for the selected Establishment.
    #Click on the Add slaughter Record link.
    And the user clicks on "Add Slaughter Record link" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the section display.
    Then the user must see "Add Slaughter Record" text in "Add Slaughter Record Section" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "add button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that the Sub-Class and Head Count indicates as required fields.Scenario:
    And the user must see "(Required)" text in "Required Field For Sub-Class" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Required Field For Head Count" field on "DispositionReporting/EstablishmentReporting" page
    #Select Sub-Class from the drop-down.
    And the user selects "<Sub Class>" from "subclass dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate the Head Count text-box and enter valid data.
    And the user enters "<Head Count #>" into "Head Count Text-Box" on "DispositionReporting/EstablishmentReporting" page
    #Select the Custom slaughter.
    And the user clicks on "custom slaughter radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user selects "<Sub Class>" from "subclass dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Click on the add button.
    And the user clicks on "add button" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Required Field For Sub-Class" field on "DispositionReporting/EstablishmentReporting" page
    And the user selects "<Sub Class>" from "subclass dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate the Head Count text-box and enter valid data.
    And the user enters "<Head Count #>" into "Head Count Text-Box" on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "add button" element on "DispositionReporting/EstablishmentReporting" page
    #Select the Custom slaughter.
    #verify that the Type is shown as custom.
    And the user must see "<Type>" text in "type column for meat record" field on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment 2                  | Sub Class | Type   | Dressed Weight # | Head Count # |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Heifer    | Custom | 7001             | 80000        |

  @TC_42773_Test

  Scenario Outline: Validating Adding a Meat Record.
    Given the user navigates to /Login.aspx on browser
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    Then the user must see "Establishment Reporting" text in "Title" field on "DispositionReporting/EstablishmentReporting" page
    And the user selects "<Establishment>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    Then the user must see "Add Slaughter Record" text in "Add Slaughter Record Button" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Add Slaughter Record Button" element on "DispositionReporting/EstablishmentReporting" page
    Then the user must see "Add Slaughter Record" text in "Table Caption" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Weight Not Reported Option" element on "DispositionReporting/EstablishmentReporting" page
    And the user selects "Market Swine" from "Select a Sub-Class dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 4 seconds
    # And the user waits "4" seconds
    And the user enters "80000" into "Head Count Textbox" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "200000000000000" into "live weight text-box" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "100000000000000" into "dressed weight text-box" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "800" into "establishment ante mortem discard text box" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "700" into "establishment post mortem discard text box" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "600" into "establishment segregated for fsis inspection text box" on "DispositionReporting/EstablishmentReporting" page
    And the user clicks the "add button" button on "DispositionReporting/EstablishmentReporting" page
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment                    |
      | Lee, Aaron | The Pork Company - M20608 P20608 |

  @TC_40360_42670_42773_42929_Test.1

  Scenario Outline: 9.0 US-40360 Verifying Required fields and adding Meat Slaughter Record.
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
    #Verify that Meat Displays in the slaughter type gird for the selected Establishment.
    Then the user can see "Meat" text in "meat grid1" field on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user adds a new meat record Sub Class"<Sub Class>" Head Count "<Head Count #>" Live Weight "<Weights Number>" Dressed Weight "<Weights Number>" on "DispositionReporting/EstablishmentReporting" page
    #Logout.
    And the user sign out and close the browser

    Examples:
      | CSI User        | Establishment 1                      | Sub Class | Weights Number | Head Count #|
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Beef Cow  | 7001           | 70000       |

  @TC_38597_42929_46823_Adding_and_Editing_Meat_Disposition_Record_Test.2

  Scenario Outline: 9.2 Test Case 44416:Adding a single disposition record for Meat
  9.3 User Story 38586: Nesting disposition records for Meat
  9.4 User Story 41689:Ratite Slaughter - Adding a single disposition record.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User3>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Click on the Animal Disposition from the Left Nav.
    And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    #Locate and click on the Establishment Reporting from the Left nav.
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    #Verify the page.
    Then the user must see "Establishment Reporting" text in "Title" field on "DispositionReporting/EstablishmentReporting" page
    #Select Establishment from the Establishment drop-down.
    And the user selects "<Establishment 2>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the meat record which was just added and click on the forward pointing arrow.
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Add Disposition Record Link.
    And the user clicks on "add disposition record button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Add button.
    And the user clicks on "Add Button On Disposition Page" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that all the Tag Type, Tag Number, Condition and Disposition fields are indicated as Reqired.Scenario:
    And the user must see "(Required)" text in "Tag Type Required Field Indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Tag Number Required Field Indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Condition Required Field Indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Disposition Required Field Indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Select Tag Type from drop-down.
    And the user selects "<Tag Type>" from "tag type drop-down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the Tag Number and enter valid data.
    And the user enters "<Tag Number>" into "Tag Number Text-Box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and select Condition from the Condition drop-down.
    And the user selects "<Condition>" from "Condition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate and select Disposition from the Disposition drop-down.
    And the user selects "<Disposition>" from "Disposition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the Narrative text box and enter valid text.
    And the user enters "<Narrative Text>" into "Narrative Text-Box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add button.
    And the user clicks on "Add Button On Disposition Page" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Verify the added Disposition record for Meat
    And the user must see "<Tag Number>" text in "tag number column for meat" field on "DispositionReporting/EstablishmentReporting" page
    #User Story 40366: Editing Record (Meat).
    #User Story 40243:Meat Slaughter - Editing Disposition Records
    #Locate and click the Refresh button.
    And the user clicks on "Refresh Button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate and click on the edit pencil icon.
    And the user clicks on "edit dispo icon for meat" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Verify the edit page for the Meat record.
    And the user must see "<Edit Disposition Record Page Header>" text in "edit page for meat disposition record" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a different Disposition from the Disposition drop-down.
    And the user selects "<Disposition1>" from "edit disposition drop-down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Clear the text on the Head Count text box and enter new text.
    And the user enters "<Head Count 1>" into "edit animal id text box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the save button.
    And the user clicks on "save dispo button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Verify the save success message.
    And the user must see "<Edit Success Message>" text in "saved record success message" field on "DispositionReporting/EstablishmentReporting" page
    And the user can see text "<Head Count 1>"
    #Locate the meat record which was just added and click on the forward pointing arrow.
    #User Story 40282: Deleting Meat Records.
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    #Sign out.
    And the user sign out and close the browser


    Examples:
      | CSI User3       | Establishment 2                      | Tag Type          | Tag Number | Condition                       | Disposition  | Narrative Text       | Disposition1          | Edit Disposition Record Page Header | Edit Success Message | Head Count 1 |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | U.S. Condemned    | Z9911547   | Central Nervous System Disorder | Pending      | Automation Test Text | Ante-mortem Condemned | Edit Disposition Record             | Record saved.        | 73000       |


  @TC_43027_42648_42645_43146_43087_43087_43146

  Scenario Outline: 9.0 US-39929 Adding, editing and deleting slaughter record for Poultry.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Click on the Animal Disposition from the Left Nav.
    And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    #Locate and click on the Establishment Reporting from the Left nav.
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    # And the user waits "2" seconds
    #Select Establishment from the Establishment drop-down.
    And the user selects "<Establishment 3>" from "select establishment drop down for puotry" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user deletes existing poultry record if any
    #Locate and click on the add slaughter record button.
    And the user clicks on "add slaughter record button for poultry" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Verify all the required fields (Sub-Class and Lot Number).
    And the user clicks the "save button on the poultry page" button on "DispositionReporting/PoultryClassSummary_AddEdit" page
    # And the user waits "2" seconds
    And the user must see "<Required indicator>" text in "required indicator for poultry sub class field" field on "DispositionReporting/PoultryClassSummary_AddEdit" page
    And the user must see "<Required indicator>" text in "required indicator for poultry lot number field" field on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Locate the Sub Class drop-down and select a sub-class.
    And the user selects "<Sub-Class>" from "sub class drop down for poultry" combo box on "DispositionReporting/PoultryClassSummary_AddEdit" page
    # And the user waits "2" seconds
    #Locate the Lot Number Text box and enter data.
    And the user enters "<Test Data>" into "lot number text box for poultry" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Enter Live Weight.
    And the user enters "<Live Weight>" into "live weight text box" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Enter CC Weight.
    And the user enters "<Certified Chilled Weight>" into "certified chiled weight text box" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Enter CF Weight.
    And the user enters "<Certified Frozen Weight>" into "certified frozen weight text box" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Enter DOA head count.
    And the user enters "<Dead On Arrival Head Count>" into "dead on arrival head count text box" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Enter DOA Weight.
    And the user enters "<Dead On Arrival Weight>" into "dead on arrival weight text box" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Enter Ante-mortem condemned not including DOAs (Head Count).
    And the user enters "<AMCNI DOAs Head Count>" into "ante-mortem condemned not including doas head count text box" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Enter Ante-mortem condemned not including DOAs (Weight).
    And the user enters "<AMCNI DOAs Weight>" into "ante-mortem condemned not including doas weight text box" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Enter Post-mortem Condemned Carcass NYD (Weight).
    And the user enters "<PMCC NYD Weight>" into "post-mortem condemned carcass nyd weight text box" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Enter Post-mortem Condemned Parts (Weight).
    And the user enters "<PMC Parts Weights>" into "post-mortem condemned parts weight text box" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    # And the user waits "2" seconds
    #Complete the Post-mortem Carcass Condemnation Details section.
    And the user completes Post mortem Carcass Condemnation Details tuberculosis"<Tuberculosis>" leukosis "<Leukosis>" septicaemiaandtoxemia "<Septicaemia and Toxemia>" synovitis "<Synovitis>" tumors "<Tumors>" bruises "<Bruises>" cadavers "<Test Data>" contamination "<Test Data>" cverscald "<Test Data>" airsacculitis "<Test Data>" inflammatoryprocess "<Test Data>" noviscera "<Test Data>" plantrejects "<Test Data>" miscellaneous "<Test Data>" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    # And the user waits "2" seconds
    #Enter Remarks.
   # And the user enters "<Remark Test Text>" into "remark text box for poultry" text area box on "DispositionReporting/PoultryClassSummary_AddEdit" page
    # And the user waits "2" seconds
    #Click on the save button
    And the user clicks on "save button on the poultry page" element on "DispositionReporting/PoultryClassSummary_AddEdit" page
    # And the user waits "2" seconds
    #Verify that the record save success message is display.
    And the user must see "<Success Message>" text in "success message for saved poultry record" field on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Click on the Go Back button.
    And the user clicks on "go back button for poultry" element on "DispositionReporting/PoultryClassSummary_AddEdit" page
    # And the user waits "2" seconds
    #Verify the added record.Scenario:
    And the user must see "<Sub-Class>" text in "sub class column" field on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Editing Puoltry record (Test Case 44383:).
    And the user clicks on "edit poultry record pencel icon" element on "DispositionReporting/PoultryClassSummary_AddEdit" page
    # And the user waits "2" seconds
    #Enter Head Count.
    And the user enters "<Head Count>" into "head count text box for poultry" on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Click on the save button
    And the user clicks on "save button on the poultry page" element on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Verify that the record save success message is display.
    And the user must see "<Success Message>" text in "success message for saved poultry record" field on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Click on the Go Back button.
    And the user clicks on "go back button for poultry" element on "DispositionReporting/PoultryClassSummary_AddEdit" page
    # And the user waits "2" seconds
    #Verify that the record save success message is display.
    And the user must see "<Head Count>" text in "head count column" field on "DispositionReporting/PoultryClassSummary_AddEdit" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User        | Establishment 3               | Remark Test Text         | Head Count | Sub-Class    | Required indicator | Lot Number | Live Weight | Certified Chilled Weight | Certified Frozen Weight | Dead On Arrival Head Count | Dead On Arrival Weight | AMCNI DOAs Head Count | AMCNI DOAs Weight | PMCC NYD Weight | PMC Parts Weights | Success Message | Tuberculosis | Leukosis | Septicaemia and Toxemia | Synovitis | Tumors  | Bruises | Test Data |
      | Yancey, Anthony | Gerber Poultry, Inc. - P20604 | Automation Test Text 101 | 9000001    | Young Turkey | (Required)         | 900000100000 | 70000001    | 60000001  | 50000001                | 4000001                    | 30000001               | 2000001               | 10000001          | 11000001        | 12000001   | The record was saved successfully.  | 9000001      | 8000001  | 7000001                 | 6000001   | 5000001 | 6000001 | 7000001   |


  @TC_39927_42925_43487_Test.1

  Scenario Outline: 9.0 US-39927: Verifying Required fields and adding Ratite Slaughter Record.
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
    # And the user waits "4" seconds
    #Verify that Ratite Displays in the slaughter type gird for the selected Establishment and click on it.
    And the user clicks on "Ratite Link" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
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
    # And the user waits "5" seconds
    #Locate the Head Count text-box and enter valid data.
    And the user enters "<Head Count #>" into "Head Count On Ratite Section" on "DispositionReporting/EstablishmentReporting" page
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
    And the user clicks on "Add Button On Ratite Section" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Verify the added record on top of the table.
    And the user must see "<Sub Class>" text in "sub class column" field on "DispositionReporting/EstablishmentReporting" page
    #Accept pop-up alert.
    #And user dismisses browser pop-ups
    # And the user waits "2" seconds
    #And the user must see the text "The record has been deleted successfully." in "Delete Record Message" on "DispositionReporting/EstablishmentReporting"
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment 1                  | Sub Class | Live Weight # | Dressed Weight # | Head Count # |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Ostrich    | 70001         | 7001            | 80000        |


  @TC_40285_42924_42926_43906_Adding_Ratite_Disposition_Record_Test.2

  Scenario Outline: 9.2 Adding, editing and deleting a single disposition record for Ratite.
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
    # And the user waits "2" seconds
    #Locate and click on the Ratite tab on the grid.
    And the user clicks on "Ratite Link" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "3" seconds
    #Locate the meat record which was just added and click on the forward pointing arrow.
    And the user clicks on "forward pointing arrow for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Add Disposition Record Link.
    And the user clicks on "Add Ratite Disposition Record Button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Add button.
    # And the user waits "2" seconds
    And the user clicks on "Add Button On Ratite Disposition Section" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that all the Tag Type, Tag Number, Condition and Disposition fields are indicated as Reqired.Scenario:
    And the user must see "(Required)" text in "ratite tag type required field indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Ratite Tag Number Required Field Indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Ratite Condition Required Field Indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Ratite Disposition Required Field Indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Select Tag Type from drop-down.
    And the user selects "<Tag Type>" from "tag type dropdown for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Locate the Tag Number and enter valid data.
    And the user enters "<Tag Number>" into "Tag Number Text-Box for ratite" on "DispositionReporting/EstablishmentReporting" page
    #Locate and select Condition from the Condition drop-down.
    And the user selects "<Condition>" from "Condition Drop-Down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop-down.
    And the user selects "<Disposition>" from "Disposition Drop-Down For Ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate the Narrative text box and enter valid text.
    And the user enters "<Narrative Text>" into "Narrative Text-Box For Ratite" text area box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Click on the Add button.
    And the user clicks on "ratite add button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Verify the added Disposition record for Meat
    And the user must see "<Tag Number>" text in "tag number column" field on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #User Story 40285: Editing Record Disposition Record.
    #User Story 41566: Nesting disposition records For Ratite.
    #Locate and click the Refresh button.
    #And the user clicks on "forward pointing arrow for ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Ratite Refresh Button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    # And the user waits "4" seconds
    And the user clicks on "forward pointing arrow for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate and click on the edit pencil icon.
    And the user clicks on "Edit Disposition Record Icon For Ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Verify the edit page for the ratite disposition record display.
    And the user must see "<Edit Page For Ratite Disposition R>" text in "edit disposition record page" field on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Change the Condition and the Disposition.
    And the user selects "<Condition 1>" from "Edit Condition Drop Down For Ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    # And the user waits "6" seconds
    And the user selects "<Disposition 1>" from "Edit Disposition Drop Down For Ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Add animal id.
    And the user enters "<Animal ID>" into "animal id text box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the save button.
    And the user clicks on "Save Button For Edited Ratite Record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user must see "<Save Message Alert>" text in "header alert display" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Ratite Refresh Button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    # And the user waits "6" seconds
    And the user clicks on "forward pointing arrow for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    # User Story 40281: Deleting Ratite Record.
    #Verify the save success message.
    And the user must see "<Condition 1>" text in "Condition Column" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Animal ID>" text in "animal id column" field on "DispositionReporting/EstablishmentReporting" page
    #Locate the meat record which was just added and click on the forward pointing arrow.
    And the user clicks on "Ratite Refresh Button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 4 seconds
    # And the user waits "2" seconds
    And the user clicks on "forward pointing arrow for ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "Delete Disposition Record Icon For Ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "ok button to delete ratite record" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    And the user clicks on "Delete Record Icon For Ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "ok button to delete ratite record" element on "DispositionReporting/EstablishmentReporting" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User1  | Establishment 2                  | Tag Type          | Tag Number | Condition                       | Condition 1   | Disposition | Disposition 1         | Narrative Text       | Edit Page For Ratite Disposition R | Animal ID | Save Message Alert |
      | Lee, Aaron | The Pork Company - M20608 P20608 | U.S. Condemned    | Z9100147   | Central Nervous System Disorder | Contamination | Pending     | Post-mortem Condemned | Automation Test Text | Edit Disposition Record            | 98700     | Record saved.      |


  @TC_43488_42773_Test.1

  Scenario Outline:
  9.0 Verifying the logic flow for adding Meat and Ratite Records.
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
    # And the user waits "4" seconds
    #Click on the Add slaughter Record link.
    And the user clicks on "add slaughter record button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Verify the section display.
    Then the user must see "Add Slaughter Record" text in "Add Slaughter Record Section" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks the "Add Button On Ratite Section" button on "DispositionReporting/EstablishmentReporting" page
    #Verify that the Sub-Class and Head Count indicates as required fields.Scenario:
    And the user must see "(Required)" text in "required field for ratite sub-class" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "required field for ratite head count" field on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Select Sub-Class from the drop-down.
    And the user selects "<Sub Class>" from "Sub Class Drop-Down For Ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate the Head Count text-box and enter valid data.
    And the user enters "<Head Count #>" into "Head Count On Ratite Section" on "DispositionReporting/EstablishmentReporting" page
    #Click on Weight Not Reported and verify that the live and dressed weight fields are disabled.
    # And the user waits "1" seconds
    And the user clicks on "weight not reported radio button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user clicks on "weight reported radio button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Locate the Live and Dressed weight text boxes and enter valid data.Scenario:
    And the user enters "<Live Weight #>" into "Live Weight Text-Box For Ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Dressed Weight #>" into "Dressed Weight Text-Box For Ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Head Count #>" into "Head Count On Ratite Section" on "DispositionReporting/EstablishmentReporting" page
    #click on the cancel button.
    And the user clicks on "cancel button for meat record" element on "DispositionReporting/EstablishmentReporting" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment 1                  | Sub Class | Live Weight # | Dressed Weight # | Head Count # |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Ostrich    | 70001         | 7001            | 80000        |


  @TC_Custom_Check_Test.2

  Scenario Outline: 9.0 Verifying Custom check for Meat record.
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
    And the user selects "<Establishment 2>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user deletes existing record if any
    #Verify that Meat Displays in the slaughter type gird for the selected Establishment.
    Then the user can see "Meat" text in "meat grid1" field on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add slaughter Record link.
    And the user clicks on "Add Slaughter Record link" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the section display.
    Then the user must see "Add Slaughter Record" text in "Add Slaughter Record Section" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "add button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that the Sub-Class and Head Count indicates as required fields.Scenario:
    And the user must see "(Required)" text in "Required Field For Sub-Class" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "Required Field For Head Count" field on "DispositionReporting/EstablishmentReporting" page
    #Select Sub-Class from the drop-down.
    And the user selects "<Sub Class>" from "subclass dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate the Head Count text-box and enter valid data.
    And the user enters "<Head Count #>" into "Head Count Text-Box" on "DispositionReporting/EstablishmentReporting" page
    #Select the Custom slaughter.
    And the user clicks on "custom slaughter radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    # And the user waits "7" seconds
    And the user selects "<Sub Class>" from "subclass dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Click on the add button.
    And the user clicks on "add button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #verify that the Type is shown as custom.
    And the user must see "<Type>" text in "type column for meat record" field on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment 2                  | Sub Class | Type   | Dressed Weight # | Head Count # |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Heifer    | Custom | 7001             | 80000        |


  @US_44071_ANKR_Test
  Scenario Outline:
  9.0 Adding a Negative KIS record for Meat.
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
    # And the user waits "1" seconds
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add disposition record button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "Add Button On Disposition Page" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that all the Tag Type, Tag Number, Condition and Disposition fields are indicated as Reqired.Scenario:
    And the user must see "(Required)" text in "tag type required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "tag number required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "condition required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "condition required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    #Select Negative Kis.
    And the user clicks on "negative kis radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select a Tag type.Scenario:
    And the user selects "<Sub-Class1>" from "tag type drop-down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "3" seconds
    #Locate the Tag Number and enter valid data.
    And the user enters "<Tag Number>" into "Tag Number Text-Box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and select Condition from the Condition drop-down.
    And the user selects "<Condition>" from "Condition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop-down.
    And the user selects "<Disposition>" from "Disposition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Locate the Narrative text box and enter valid text.
    And the user enters "<Narrative>" into "Narrative Text-Box" text area box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Click on the Add button.
    And the user clicks the "add button on meat disposition" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "3" seconds
    #Locate and click on the edit icon button.
    And the user clicks on "edit pencil icon for meat disposition record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Select Negative Kis.
    And the user clicks on "negative kis radio button on edit disposition record section" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Click on the Add KIS Sample button.
    And the user clicks on "add kis sample button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the page "Sample Management -ADR Sample Collection".
    And the user must see "<Sample Management Page>" text in "sample management adr" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    And the user must see "<Required Indicator>" text in "generate sample form required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Select a Reason code.
    #And the user selects "Anemia" from "reason code drop down" drop down on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "reason code drop down" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "select reason code" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user enters "<Sample Management Page>" into "comments text box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Generate a Sample Form Button.
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "7" seconds
    #Select Animal Status.
    And the user clicks on "animal status radio button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter flock owner.
    And the user enters "<CSI User>" into "herd flock owner text box" on "DispositionReporting/EstablishmentReporting" page
    #Enter the Remark text.
    And the user enters "<Added records Message>" into "remark test box" text area box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Click on the Schedule link.
    And the user clicks on "schedule link" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Click on the Save and continue button.
    And the user clicks on "save and continue button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Click on the start questionnaire link and verify the alert message.
    And the user clicks on "click on start questionnaire link" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 5 seconds
    And user accept browser pop-ups
    # And the user waits "4" seconds
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
    # And the user waits "1" seconds
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Enter answer for question 3 on page 2.
    And the user enters "<Answer>" into "question three answer box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 4 page 2.
    And the user enters "<Answer>" into "question four answer box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 5 page 2.
    And the user enters "<Answer>" into "question five answer box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Enter answer for question 6 page 3.
    And the user enters "<Answer>" into "question sis answer box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 7 page 3.
    And the user enters "<Answer>" into "question seven answer box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 8 page 3.
    And the user enters "<Answer>" into "question eight answer box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Enter answer for question 9 page 4.
    And the user enters "<Answer>" into "question nine answer box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the back button.
    And the user clicks on "back button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
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
    # And the user waits "6" seconds
    And the user must see "<Sample Form Saved Message alert>" text in "alert message on sample management" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "save and continue" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "6" seconds
    And the user must see "<Sample Collection Data save alert>" text in "saved alert message for sample collection data" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 1 seconds
    #Click on the Submit to lab button.
    And the user clicks on "submit to lab button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Verify that sample is successfully submitted to lab.Scenario:
    And the user must see "<Submit sample to lab confirmation>" text in "saved alert message for submission to the lab" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 1 seconds
    #Click on Return to ADR button.
    And the user clicks on "return to adr button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Expand and verify the lab count.
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User        | Establishment 1                      | Answer                 | Sample Form Saved Message alert           | Sample Collection Data save alert         | Sub Class | Weights Number | Head Count #   | Sub-Class1     | Required Indicator | Tag Number | Sample Management Page                   | Condition                      | Disposition           | Narrative             | Added records Message                                                                                                                                           | Negative KIS | Submit sample to lab confirmation                |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Automation Testing 101 | Sample collection was saved successfully. | Sample collection was saved successfully. | Heifer    | 7001           | 70000          | U.S. Condemned | (Required)         | Z2980089   | Sample Management - ADR Sample Collection | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | 10 records have been created with the following Tag Numbers Z9999989, Z9999990, Z9999991, Z9999992, Z9999993, Z9999994, Z9999995, Z9999996, Z9999997, Z9999998. | Negative    | Sample collection has been submitted to the lab. |

  @US_44071_ANKRS

  Scenario Outline: 9.0 Adding a NoTest KIS Meat record.
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
    # And the user waits "1" seconds
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add disposition record button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "Add Button On Disposition Page" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that all the Tag Type, Tag Number, Condition and Disposition fields are indicated as Reqired.Scenario:
    And the user must see "(Required)" text in "tag type required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "tag number required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "condition required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "condition required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    #Select Positive Kis.
    And the user clicks on "positive kis radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    # And the user waits "4" seconds
    #Locate and select a Tag type.Scenario:
    And the user selects "<Sub-Class1>" from "tag type drop-down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Locate the Tag Number and enter valid data.
    And the user enters "<Tag Number>" into "Tag Number Text-Box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and select Condition from the Condition drop-down.
    And the user selects "<Condition>" from "Condition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    # And the user waits "3" seconds
    #Locate and select Disposition from the Disposition drop-down.
    And the user selects "<Disposition>" from "Disposition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Locate the Narrative text box and enter valid text.
    And the user enters "<Narrative>" into "Narrative Text-Box" text area box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Click on the Add button.
    And the user clicks on "add button on meat disposition" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "3" seconds
    #Locate and click on the edit icon button.
    And the user clicks on "edit pencil icon for meat disposition record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "3" seconds
    #Click on the Add KIS Sample button.
    And the user clicks on "add kis sample button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "3" seconds
    #Verify the page "Sample Management -ADR Sample Collection".
    And the user must see "<Sample Management Page>" text in "sample management adr" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    And the user must see "<Required Indicator>" text in "generate sample form required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Select a Reason code.
    And the user clicks on "reason code drop down" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "select reason code" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user enters "<Sample Management Page>" into "comments text box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Generate a Sample Form Button.
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "7" seconds
    #Select Animal Status.
    And the user clicks on "animal status radio button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter flock owner.
    And the user enters "<CSI User>" into "herd flock owner text box" on "DispositionReporting/EstablishmentReporting" page
    #Enter the Remark text.
    And the user enters "<Added records Message>" into "remark test box" text area box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Click on the Schedule link.
    And the user clicks on "schedule link" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    # And the user waits "7" seconds
    #Click on the Save and continue button.
    And the user clicks on "save and continue button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Click on the start questionnaire link and verify the alert message.
    And the user clicks on "click on start questionnaire link" element on "DispositionReporting/EstablishmentReporting" page
    And user accept browser pop-ups
    # And the user waits "4" seconds
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
    # And the user waits "1" seconds
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
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
    # And the user waits "1" seconds
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
    # And the user waits "6" seconds
    And the user must see "<Sample Collection Data save alert>" text in "saved alert message for sample collection data" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Click on the Submit to lab button.
    And the user clicks on "submit to lab button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that sample is successfully submitted to lab.Scenario:
    And the user must see "<Submit sample to lab confirmation>" text in "saved alert message for submission to the lab" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Click on Return to ADR button.
    And the user clicks on "return to adr button" element on "DispositionReporting/EstablishmentReporting" page
    #Expand and verify the lab count.
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User        | Establishment 1                      | Answer                 | Sample Collection Data save alert         | Sample Form Saved Message alert           | Sub Class | Weights Number | Head Count #   | Sub-Class1      | Required Indicator | Tag Number | Sample Management Page                   | Condition                      | Disposition           | Narrative             | Added records Message                                                                                                                                            | Negative KIS | Submit sample to lab confirmation                |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Automation Testing 101 | Sample collection was saved successfully. | Sample collection was saved successfully. | Heifer    | 7001           | 70000          | U.S. Condemned | (Required)         | Z9444279   | Sample Management - ADR Sample Collection | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | 10 records have been created with the following Tag Numbers Z9999989, Z9999990, Z9999991, Z9999992, Z9999993, Z9999994, Z9999995, Z9999996, Z9999997, Z9999998. | Negative     | Sample collection has been submitted to the lab. |


  @US_44071_APKS_Test
  Scenario Outline: 9.0 Adding a Positive KIS Meat Record.
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
    And the user must see "(Required)" text in "condition required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    #Select Positive Kis.
    And the user clicks on "positive kis radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    # And the user waits "4" seconds
    #Locate and select a Tag type.Scenario:
    And the user selects "<Sub-Class1>" from "tag type drop-down" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
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
    # And the user waits "3" seconds
    #Locate and click on the edit icon button.
    And the user clicks on "edit pencil icon for meat disposition record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    And the user clicks on "positive kis radio button on edit disposition record section" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Click on the Add KIS Sample button.
    And the user clicks on "add kis sample button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the page "Sample Management -ADR Sample Collection".
    And the user must see "<Sample Management Page>" text in "sample management adr" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks on "generate a sample form button" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
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
    And the user waits for 3 seconds
    #Click on the Save and continue button.
    And the user clicks on "save and continue button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the start questionnaire link and verify the alert message.
    And the user clicks on "click on start questionnaire link" element on "DispositionReporting/EstablishmentReporting" page
    And user accept browser pop-ups
    #Click on the start button.
    And the user clicks on "start questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
#    And user accept browser pop-ups
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
    And the user enters "<Answer>" into "question sis answer box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 7 page 3.
    And the user enters "<Answer>" into "question seven answer box" on "DispositionReporting/EstablishmentReporting" page
    #Enter answer for question 8 page 3.
    And the user enters "<Answer>" into "question eight answer box" on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button" element on "DispositionReporting/EstablishmentReporting" page
        # And the user waits "1" seconds
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
    And the user clicks on "save and continue" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "6" seconds
    And the user must see "<Sample Collection Data save alert>" text in "saved alert message for sample collection data" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Click on the Submit to lab button.
    And the user clicks on "submit to lab button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that sample is successfully submitted to lab.Scenario:
    And the user must see "<Submit sample to lab confirmation>" text in "saved alert message for submission to the lab" field on "DispositionReporting/EstablishmentReporting" page
    #Click on Return to ADR button.
    And the user clicks on "return to adr button" element on "DispositionReporting/EstablishmentReporting" page
    #Expand and verify the lab count.
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user deletes existing record if any
    #Sign out.
    And the user clicks on "sign out button" element on "DispositionReporting/EstablishmentReporting" page

    Examples:
      | CSI User        | Establishment 1                      | Answer                 | Sample Collection Data save alert         | Sample Form Saved Message alert           | Sub Class | Weights Number | Head Count #   | Sub-Class1     | Required Indicator | Tag Number | Sample Management Page                    | Condition                      | Disposition           | Narrative             | Added records Message                                                                                                                                            | Negative KIS | Submit sample to lab confirmation                |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Automation Testing 101 | Sample collection was saved successfully. | Sample collection was saved successfully. | Heifer    | 7001           | 70000          | U.S. Condemned | (Required)         | Z9919198   | Sample Management - ADR Sample Collection | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | 10 records have been created with the following Tag Numbers Z9999989, Z9999990, Z9999991, Z9999992, Z9999993, Z9999994, Z9999995, Z9999996, Z9999997, Z9999998.  | Negative     | Sample collection has been submitted to the lab. |

  @US_41715_42925_AMDRR.1

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
    #Verify that Ratite Displays in the slaughter type gird for the selected Establishment and click on it.
    And the user clicks on "Ratite Link" element on "DispositionReporting/EstablishmentReporting" page
    And the user delete existing ratite record if any
    #Click on the Add slaughter Record link.
    And the user clicks on "add slaughter record button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the section display.
    Then the user must see "Add Slaughter Record" text in "Add Slaughter Record Section" field on "DispositionReporting/EstablishmentReporting" page
    #Verify required fields.Scenario:
    And the user clicks the "Add Button On Ratite Section" button on "DispositionReporting/EstablishmentReporting" page
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
    # And the user waits "2" seconds
    And the user clicks on "weight reported radio button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate the Live and Dressed weight text boxes and enter valid data.Scenario:
    And the user enters "<Live Weight #>" into "Live Weight Text-Box For Ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Dressed Weight #>" into "Dressed Weight Text-Box For Ratite" on "DispositionReporting/EstablishmentReporting" page
    And the user enters "<Head Count #>" into "Head Count On Ratite Section" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Add button and click on it.
    And the user clicks on "Add Button On Ratite Section" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the added record on top of the table.
    And the user must see "<Sub Class>" text in "sub class column" field on "DispositionReporting/EstablishmentReporting" page
    #Logout.
    And the user sign out and close the browser


    Examples:
      | CSI User   | Establishment 1                  | Sub Class | Live Weight # | Dressed Weight # | Head Count # |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Ostrich   | 70001         | 7001             | 80000        |

  @US_41715_42928_AMDRR.2

  Scenario Outline: 9.0 Adding disposition multiple records for Ratite.
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
    #Locate the meat record which was just added and click on the forward pointing arrow.
    And the user clicks on "forward pointing arrow for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks the "cancel button on multiple disposition for ratite" button on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user clicks the "continue button for ratite" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user must see "<Required Indicator>" text in "tag type required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag number required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "number of records required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a sub-class.Scenario:
    And the user selects "<Tag-Type>" from "tag type drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and enter a Tag Number.
    And the user enters "<Tag Number>" into "tag number text box for ratite" on "DispositionReporting/EstablishmentReporting" page
    #Locate and enter the number of records.Scenario:
    And the user enters "<Number of Records>" into "number of records text box for ratite" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition>" from "condition drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition>" from "disposition drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate the Cancel button and click on it.
    And the user clicks the "cancel button on multiple disposition for ratite" button on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks the "continue button for ratite" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user must see "<Required Indicator>" text in "tag type required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag number required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "number of records required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a sub-class.Scenario:
    And the user selects "<Tag-Type>" from "tag type drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate and enter a Tag Number.
    And the user enters "<Tag Number>" into "tag number text box for ratite" on "DispositionReporting/EstablishmentReporting" page
    #Locate and enter the number of records.Scenario:
    And the user enters "<Number of Records>" into "number of records text box for ratite" on "DispositionReporting/EstablishmentReporting" page
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition>" from "condition drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition>" from "disposition drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
    #Enter Narrative Text.
    And the user enters "<Narrative>" into "narrative text box for ratite" text area box on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "continue button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click the back button.Scenario:
    And the user clicks on "back button on multiple disposition for ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "continue button for ratite" element on "DispositionReporting/EstablishmentReporting" page
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
    And the user enters "<Head Count #>" into "animal id for ratite multiple disposition record" on "DispositionReporting/EstablishmentReporting" page
    And the user clicks the "save for ratite multiple disposition record" button on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Record saved Confirmation alert.>" text in "save record alert message for edited ratite multiple disposition record" field on "DispositionReporting/EstablishmentReporting" page
    And the user delete existing ratite record if any
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment 1                  | Condition1                      | Disposition1          | Head Count # | Tag-Type       | Required Indicator | Tag Number | Number of Records | Condition     | Disposition           | Narrative             | Record saved Confirmation alert. |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Central Nervous System Disorder | Ante-mortem Condemned | 70000        | U.S. Condemned | (Required)         | Z1991101   | 10                | Airsacculitis | Post-mortem Condemned | Automation test Text. | Record saved.                    |

  @US_41715_45720_45647_46939_46940_US_41715_ARMDR.1
  Scenario Outline: 9.1 User Story 41715:Ratite Slaughter - Adding multiple disposition records and printing the records.
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
    And the user clicks on "Add Button On Ratite Section" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Verify the added record on top of the table.
    And the user must see "<Sub Class>" text in "sub class column" field on "DispositionReporting/EstablishmentReporting" page
    #Logout.
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment 1                  | Sub Class | Live Weight # | Dressed Weight # | Head Count # |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Ostrich   | 70001         | 7001             | 80000        |

  @US_41715_ARMDR.2
  Scenario Outline: 9.0 Adding multiple disposition Ratite record and printing the records.
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
    #Locate the meat record which was just added and click on the forward pointing arrow.
    # And the user waits "2" seconds
    And the user clicks on "forward pointing arrow for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "cancel button on multiple disposition for ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    # And the user waits "7" seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user clicks the "continue button for ratite" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user must see "<Required Indicator>" text in "tag type required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag number required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "number of records required indicator for ratite" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a sub-class.Scenario:
    And the user selects "<Tag-Type>" from "tag type drop down for ratite" combo box on "DispositionReporting/EstablishmentReporting" page
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
    #Locate the Cancel button and click on it.
    And the user clicks the "cancel button on multiple disposition for ratite" button on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks the "continue button for ratite" button on "DispositionReporting/EstablishmentReporting" page
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
    #Enter Narrative Text.
    And the user enters "<Narrative>" into "narrative text box for ratite" text area box on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks on "continue button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click the back button.Scenario:
    And the user clicks on "back button on multiple disposition for ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks the "continue button for ratite" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #Click on the add button.
    And the user clicks the "add button on multiple disposition for ratite" button on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #And the user must see the text "<Added records Message>" in "confirmation message for adding multiple disposition record" on "DispositionReporting/EstablishmentReporting"
    # And the user waits "2" seconds
    #Editing multiple disposition record.
    And the user clicks on "edit pencil icon for ratite multiple disposition record" element on "DispositionReporting/EstablishmentReporting" page
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
    #And the user switch to new tab
    And the user clicks on "print disposition record button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    # And the user waits "2" seconds
    And the user switch to iframe
    And the user waits for 2 seconds
    #Click on select all to filter
    And the user clicks on "select all link for ratite record" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 1 seconds
    #click on unselect all.
    And the user clicks on "un select all link for ratite record" element on "DispositionReporting/EstablishmentReporting" page
    #Click on select all to filter
    And the user clicks on "select all link for ratite record" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 1 seconds
    #Verify drop down filter
    And the user clicks on "ratite record filter drop down" element on "DispositionReporting/EstablishmentReporting" page
    #Click the cancel button.
    And the user clicks on "cancel button iframe for ratite record" element on "DispositionReporting/EstablishmentReporting" page
    And the user switch back to main window
    And the user waits for 1 seconds
    And the user clicks on "print disposition record button for ratite" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    And the user switch to iframe
    And the user waits for 1 seconds
    #Click on select all to filter
    And the user clicks on "select all link for ratite record" element on "DispositionReporting/EstablishmentReporting" page
    #click on unselect all.
    And the user clicks on "un select all link for ratite record" element on "DispositionReporting/EstablishmentReporting" page
    #Click on select all to filter
    And the user clicks on "select all link for ratite record" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 1 seconds
    #Verify drop down filter
    And the user clicks on "ratite record filter drop down" element on "DispositionReporting/EstablishmentReporting" page
    #Click the cancel button.
    And the user clicks on "cancel button iframe for ratite record" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the print button.
    And the user switch back to main window
    And the user waits for 1 seconds
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User   | Establishment 1                  | Condition1                      | Disposition1          | Head Count # | Tag-Type       | Required Indicator | Tag Number | Number of Records | Condition     | Disposition           | Narrative             | Record saved Confirmation alert. | Sub Class Sort-By | Condition Sort-By | Disposition Sort-By | Tag Type Sort-By |
      | Lee, Aaron | The Pork Company - M20608 P20608 | Central Nervous System Disorder | Ante-mortem Condemned | 70000        | U.S. Condemned | (Required)         | Z1906666   | 10                | Airsacculitis | Post-mortem Condemned | Automation test Text. | Record saved.                    | Sub-Class         | Condition         | Disposition         | Tag Type         |


  @US_41703_46046_46049_45934_46047_Test

  Scenario Outline: 9.0 Adding, Editing, Printing and Deleting Multiple Disposition record For Meat.
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
    # And the user waits "2" seconds
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks the "continue button" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user must see "<Required Indicator>" text in "tag type required indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "tag number required indicator" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Required Indicator>" text in "number of records required indicator" field on "DispositionReporting/EstablishmentReporting" page
    #Locate and select a sub-class.Scenario:
    And the user selects "<Sub-Class>" from "tag type drop down" combo box on "DispositionReporting/EstablishmentReporting" page
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
    And the user waits for 2 seconds
    #Click on the Add Multiple Disposition Record button.
    And the user clicks on "add multiple disposition records button" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks the "continue button" button on "DispositionReporting/EstablishmentReporting" page
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
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition>" from "disposition drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Enter Narrative Text.
    And the user enters "<Narrative>" into "narrative text box" text area box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    #Select the Positive KIS radio button.
    And the user clicks on "negative kis radio button for meat" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Locate and click on the Continue button and verify all the required fields.
    And the user clicks the "continue button" button on "DispositionReporting/EstablishmentReporting" page
    #Click on the cancel button.
    And the user clicks the "add button for meat multiple disposition records" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "3" seconds
    #Editing multiple disposition record.
    And the user clicks on "edit pencil icon for meat multiple disposition record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    #Locate the Condition drop down and select a condition.Scenario:
    And the user selects "<Condition1>" from "editable condition drop down for meat field" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop down.Scenario:
    And the user selects "<Disposition1>" from "editable disposition drop down for meat field" combo box on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    And the user enters "<Head Count #>" into "animal id for meat multiple disposition record" on "DispositionReporting/EstablishmentReporting" page
    And the user clicks the "save for meat multiple disposition record" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "5" seconds
    And the user must see "<Record saved Confirmation alert.>" text in "saved record alert message for edited meat multiple disposition record" field on "DispositionReporting/EstablishmentReporting" page
    #Print Print Condemnation Certificate
    # And the user waits "2" seconds
    And the user clicks on "print condemnation certificate button for meat" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "2" seconds
    #And the user switch to new tab
    And the user print condemnation certificate for meat
    #Deleting a disposition record.
    And the user clicks on "delete multiple disposition icon" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the cancel button.
    And the user clicks on "cancel button on delete pop up message" element on "DispositionReporting/EstablishmentReporting" page
    #Delete a disposition record.
    And the user clicks on "delete multiple disposition icon" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the ok button on the pop up.
    And the user clicks on "ok button to delete ratite record" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "Forward Pointing Arrow" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "delete icon for meat record" element on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "1" seconds
    And the user clicks on "ok button to delete ratite record" element on "DispositionReporting/EstablishmentReporting" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User        | Establishment 1                      | Sub Class | Weights Number | Head Count #   | Sub-Class     | Required Indicator | Tag Number | Number of Records | Condition                      | Disposition           | Narrative             | Disposition1               | Condition1 | Record saved Confirmation alert. |
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Heifer    | 7001           | 70000          | U.S. Retained | (Required)         | B48007103  | 10                | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | Passed without Restriction | Carcinoma  | Record saved.                    |


  @TC_Frequency_NO_Kill_Period

  Scenario Outline: 9.0 US-Frequency: Verifying Adding a NO Kill Period to an Establishment.
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
    And the user selects "<Establishment>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    #Click on the No Kill Period from the left navigation.
    And the user clicks on "no kill period" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "No Kill Period" text in "no kill period page" field on "DispositionReporting/EstablishmentReporting" page
    #Select an Establishment to add the Ni Kill Period to.
    And the user selects "<Establishment>" from "establishment dropdown" drop down on "DispositionReporting/EstablishmentReporting" page
    #And the user selects "<Establishment>" from "establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    #Select shift.
    And the user selects "<Shift>" from "shift dropdown" drop down on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add New Inspection Slaughter Period link.
    And the user clicks on "add new inspection slaughter period link" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Select a reason.
    And the user selects "<Reason Code>" from "reason code for no kill1" drop down on "DispositionReporting/EstablishmentReporting" page
    #Click on the Save Button.
    And the user clicks on "save button for no kill" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the Establishment Reporting from the Left nav.
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    #Select Establishment from the Establishment drop-down.
    And the user selects "<Establishment>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    #Verify the No Kill Period is successfully added to the Establishment.
    Then the user must see "<No Kill Period Message To Establishment>" text in "no kill period alert message" field on "DispositionReporting/EstablishmentReporting" page
    #Click on the No Kill Period from the left navigation.
    And the user clicks on "no kill period" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Select an Establishment t2o add the Ni Kill Period to.
    And the user selects "<Establishment>" from "establishment dropdown" drop down on "DispositionReporting/EstablishmentReporting" page
    #Select shift.
    And the user selects "<Shift>" from "shift dropdown" drop down on "DispositionReporting/EstablishmentReporting" page
    #Delete the No Kill Period to the Establishment.
    And the user clicks on "delete icon for added no kill period" element on "DispositionReporting/EstablishmentReporting" page
    And the user dismisses browser pop-ups
    #Locate and click on the Establishment Reporting from the Left nav.
    And the user clicks on "Establishment Reporting" element on "FSISDashBoard/Default" page
    #Verify the page.
    Then the user must see "Establishment Reporting" text in "Title" field on "DispositionReporting/EstablishmentReporting" page
    #Select Establishment from the Establishment drop-down.
    And the user selects "<Establishment>" from "select an establishment dropdown" combo box on "DispositionReporting/EstablishmentReporting" page
    #Click on add slaughter record button.
    And the user clicks on "add slaughter button" element on "DispositionReporting/EstablishmentReporting" page
    Then the user must see "<New Record page>" text in "add new slaughter page" field on "DispositionReporting/EstablishmentReporting" page
    #Sign out.
    And the user clicks on "sign out button" element on "DispositionReporting/EstablishmentReporting" page


    Examples:
      | CSI User   | Establishment         | Shift   | No Kill Period Message To Establishment                                                                       | Reason Code       | New Record page      |
      | Lee, Aaron | Pilgrims Pride - P843 | Shift 1 | Slaughter Data cannot be entered for the selected date. No Kill Period has been defined for this time period. | Equipment Failure | A New Poultry Record |


  @TC_46850_Add_Meat_Lab.1

  Scenario Outline: Adding lab sample for Meat Record, validating sample management page.
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
    And the user clicks the "Add Button On Disposition Page" button on "DispositionReporting/EstablishmentReporting" page
    #Verify that all the Tag Type, Tag Number, Condition and Disposition fields are indicated as Reqired.Scenario:
    And the user must see "(Required)" text in "tag type required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "tag number required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "condition required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    And the user must see "(Required)" text in "condition required indicator for meat dospo record" field on "DispositionReporting/EstablishmentReporting" page
    #Select Positive Kis.
    And the user clicks on "positive kis radio button" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Locate and select a Tag type.Scenario:
    And the user selects "<Sub-Class1>" from "tag type drop down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the Tag Number and enter valid data.
    And the user enters "<Tag Number>" into "Tag Number Text-Box" on "DispositionReporting/EstablishmentReporting" page
    #Locate and select Condition from the Condition drop-down.
    And the user selects "<Condition>" from "Condition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 3 seconds
    #Locate and select Disposition from the Disposition drop-down.
    And the user selects "<Disposition>" from "Disposition Drop-Down" combo box on "DispositionReporting/EstablishmentReporting" page
    #Locate the Narrative text box and enter valid text.
    And the user enters "<Narrative>" into "narrative text-box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add button.
    And the user clicks the "add button on meat disposition" button on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the edit icon button.
    And the user clicks on "edit pencil icon for meat disposition record" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "positive kis radio button on edit disposition record section" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Add Lab Sample Button.
    And the user clicks on "add lab sample button for meat" element on "DispositionReporting/EstablishmentReporting" page
    #Verify the page "Sample Management -ADR Sample Collection".
    And the user must see "<Sample Management Page>" text in "sample management adr" field on "DispositionReporting/EstablishmentReporting" page
    #Select a Reason code.
    And the user clicks on "project code drop down" element on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "project code input for meat lab" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Click on the Generate a Sample Form Button.
    And the user clicks the "generate a sample form button" button on "DispositionReporting/EstablishmentReporting" page
    # And the user waits "7" seconds
    #Click on the Schedule link.
    And the user clicks on "schedule link" element on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    #Select Animal Status.
    And the user clicks on "animal status radio button" element on "DispositionReporting/EstablishmentReporting" page
    #Enter flock owner.
    And the user enters "<CSI User>" into "herd flock owner text box" on "DispositionReporting/EstablishmentReporting" page
    #Enter the Remark text.
    And the user enters "<Added records Message>" into "remark test box" text area box on "DispositionReporting/EstablishmentReporting" page
    #Click on the Save and continue button.
    And the user clicks the "save and continue button" button on "DispositionReporting/EstablishmentReporting" page
    #Click on the start questionnaire link and verify the alert message.
    And the user clicks the link with text "Start Questionnaire"
    And user accept browser pop-ups
    And the user waits for 2 seconds
    #And the user clicks on "click on start questionnaire link" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the start button.
    And the user clicks on "start questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Select question A on page 1.
    And the user clicks on "question1 yes" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button for meat lab" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the back button.
    And the user clicks on "back button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button for meat lab" element on "DispositionReporting/EstablishmentReporting" page
    #Locate and click on the close button.
    And the user clicks on "close button" element on "DispositionReporting/EstablishmentReporting" page
    #Click open link to reopen questionnaire.
    And the user clicks on "open questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Resume button.
    And the user clicks on "resume questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Next button.
    And the user clicks on "next button for meat lab" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the submit button.
    And the user clicks on "submit questionnaire button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Lab Sample button from the left navigation.
    And the user clicks on "lab sample button" element on "DispositionReporting/EstablishmentReporting" page
    #Click on the Generate a Sample Form Button.
    And the user clicks on "save and continue meat lab" element on "DispositionReporting/EstablishmentReporting" page
    #Cancel schedule .
    And the user must see "Cancel Scheduled" text in "cancel lab schedule button" field on "DispositionReporting/EstablishmentReporting" page
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
    And the user waits for 2 seconds
    And the user switch back to main window
    And the user waits for 2 seconds
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
    And the user must see "Re-Schedule" text in "reschedule link on sample collection data tab" field on "DispositionReporting/EstablishmentReporting" page
    And the user waits for 2 seconds
    And the user clicks on "reschedule link on sample collection data tab" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "Cancel Scheduled" text in "cancel lab schedule button" field on "DispositionReporting/EstablishmentReporting" page
    And the user clicks on "save and continue" element on "DispositionReporting/EstablishmentReporting" page
    And the user must see "<Sample Collection Data save alert>" text in "saved alert message for sample collection data" field on "DispositionReporting/EstablishmentReporting" page
    #Click on the Submit to lab button.
    And the user clicks on "submit to lab button" element on "DispositionReporting/EstablishmentReporting" page
    #Verify that sample is successfully submitted to lab.Scenario:
    And the user must see "Sample collection has been submitted to the lab." text in "saved alert message for submission to the lab" field on "DispositionReporting/EstablishmentReporting" page
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
      | Rachko, Michael | Cargill Meat Solutions - M9400 P9400 | Automation Testing 101 | Sample collection was saved successfully. | Sample collection was saved successfully. | Heifer    | 7001           | 70000          | U.S. Condemned | (Required)         | Z9000343   | Sample Management - ADR Sample Collection | Actinomycosis Actinobacillosis | Post-mortem Condemned | Automation test Text. | 10 records have been created with the following Tag Numbers Z9999989, Z9999990, Z9999991, Z9999992, Z9999993, Z9999994, Z9999995, Z9999996, Z9999997, Z9999998. | Negative     | Sample collection has been submitted to the lab. |