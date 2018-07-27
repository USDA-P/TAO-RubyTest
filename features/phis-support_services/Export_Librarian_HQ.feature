@EXPORTS_LIBRARIAN_HQ
Feature: Exports HQ

  @TC_61.1
  Scenario Outline: Add a Country Profile.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #Click on the add new file.
    And the user clicks the link with text "Add New File"
    #Add document to be uploaded.
    And the user deletes any existing added documents for a country
    #Click on the add new file.
    And the user clicks the link with text "Add New File"
    #click on add a new file.
    And user attached "<Test Document>" file into "browse new file" on "Exports/Librarian" page
    #And the user enters "<Test Document>" into "browse new file" on "Exports/Librarian" page
    #Enter document tittle
    And the user enters "<Document Tittle>" into "document tittle text box" on "Exports/Librarian" page
    #click on the cancel button.
    And the user clicks on "cancel upload document button" element on "Exports/Librarian" page
    #Click on the add new file.
    And the user clicks the link with text "Add New File"
    #Add document to be uploaded.
    #And the user deletes any existing added documents for a country
    #click on add a new file.
    And user attached "<Test Document>" file into "browse new file" on "Exports/Librarian" page
    #Enter document tittle
    And the user enters "<Document Tittle>" into "document tittle text box" on "Exports/Librarian" page
    #click on the Upload button.
    And the user clicks on "upload document button" element on "Exports/Librarian" page
    #Verify that document is uploaded successfully.
    And the user must see "<Document Success Message>" text in "upload document success message display" field on "Exports/Librarian" page
    #Click on the save button.
    And the user clicks on "save button on country profile" element on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Test Document           | Document Success Message        | Document Tittle          |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Doc.pdf | Successfully uploaded document. | Automation Test Document |


  @TC_61.2
  Scenario Outline: Edit the above a Country Profile.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #select wet for signature type.
    And the user clicks on "signature type: edit country profile" element on "Exports/Librarian" page
    And the user clicks on "allow multiple species on export certificate no: edit country profile" element on "Exports/Librarian" page
    And the user clicks on "celsius: edit country profile" element on "Exports/Librarian" page
    #Click on the save button.
    And the user clicks on "save button on country profile" element on "Exports/Librarian" page
    #Click on the add new file.
    And the user clicks the link with text "Add New File"
    #Add document to be uploaded.
    And the user deletes any existing added documents for a country
    #Click on the add new file.
    And the user clicks the link with text "Add New File"
    #click on add a new file.
    And user attached "<Test Document>" file into "browse new file" on "Exports/Librarian" page
    #And the user enters "<Test Document>" into "browse new file" on "Exports/Librarian" page
    #Enter document tittle
    And the user enters "<Document Tittle>" into "document tittle text box" on "Exports/Librarian" page
    #click on the cancel button.
    And the user clicks on "cancel upload document button" element on "Exports/Librarian" page
    #Click on the add new file.
    And the user clicks the link with text "Add New File"
    #Add document to be uploaded.
    And user attached "<Test Document>" file into "browse new file" on "Exports/Librarian" page
    #Enter document tittle
    And the user enters "<Document Tittle>" into "document tittle text box" on "Exports/Librarian" page
    #click on the Upload button.
    And the user clicks on "upload document button" element on "Exports/Librarian" page
    #Verify that document is uploaded successfully.
    And the user must see "<Document Success Message>" text in "upload document success message display" field on "Exports/Librarian" page
    #Click on the save button.
    And the user clicks on "save button on country profile" element on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Test Document           | Document Success Message        | Document Tittle          |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Doc.pdf | Successfully uploaded document. | Automation Test Document |

  @TC_61.3
  Scenario Outline: Create a Rule Collection.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection. 
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Document Tittle          |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. | Automation Test Document |


  @TC_61.4
  Scenario Outline: Edit a Rule Collection.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the edit link.
    And the user clicks the link with text "Edit"
    #Enter new Description.
    And the user enters "<Edit Rule Collection Description Data>" into "rule collection: edit description in collection" text area box on "Exports/Librarian" page
    #Click on the save link
    And the user clicks the link with text "Save"
    #Click on the Return to Rule Collection button.
    And the user clicks on "return to rule collection" element on "Exports/Librarian" page
    #Verify the edited rule collection.
    And the user must see "<Edit Rule Collection Description Data>" text in "rule collection: edit new collection added" field on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Edit Rule Collection Description Data    |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. | Edited Automation Test Description data. |


  @TC_61.5
  Scenario Outline: 61.5 Add a Validator Record.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the validator rule set is updated successfully.Scenario:
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable |

  @TC_61.6
  Scenario Outline: 61.6 Edit the added Validator Record.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the validator rule set is updated successfully.Scenario:
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Click on edit link to begin editing the validator.
    And the user clicks the link with text "Edit"
    #Select species from the species drop down to edit.
    And the user selects "<Edit Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the edited validator rule set is updated successfully.Scenario:
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    And the user must see "Chicken; Egg Products" text in "species selected section" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          | Edit Validator Species |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable | Egg Products           |

  @TC_61.7
  Scenario Outline: 61.7 Add, edit and Delete Validator Record.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the validator rule set is updated successfully.Scenario:
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Delete the added validator record.
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Delete the added validator .Scenario:
    And the user delete validator records created by test
    #Verify that the validator is successfully deleted.
    And the user must see "Validator deleted successfully." text in "validator delete success message" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable |

  @TC_61.8
  Scenario Outline: 61.8 Submit a Validator Record for Approval.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the record is successfully saved.
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: validator record for approval" element on "Exports/Librarian" page
    #Verify that the validator rule set is submitted successfully.Scenario:
    And the user must see "Validator rule set is submitted successfully." text in "validator rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the pending radio button and verify that the submitted validator is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "pending validator record" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable |

  @TC_61.9
  Scenario Outline: 61.9 Add an Instruction Record.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the record is successfully saved.
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: validator record for approval" element on "Exports/Librarian" page
    #Verify that the validator rule set is submitted successfully.Scenario:
    And the user must see "Validator rule set is submitted successfully." text in "validator rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the pending radio button and verify that the submitted validator is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "pending validator record" field on "Exports/Librarian" page
    #Click on the instructions tab to add instructions.Scenario:
    And the user clicks on "instructions tab" element on "Exports/Librarian" page
    #Click on the create an instruction link.
    And the user clicks the link with text "Create an Instruction"
    #Enter same Name and Description.
    And the user enters "<Rule Collection Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify alert message to warn user to enter a unique data.
    And the user must see "Rule set name must be unique within its country." text in "instruction warn for unique data alert" field on "Exports/Librarian" page
    #Enter unique Name and Description.
    And the user enters "<Instruction Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Instruction Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify that the instruction is successfully added.
    And the user must see "New instruction added successfully." text in "instruction success creation alert" field on "Exports/Librarian" page
    #Click on the new/Rejected radio button to verify added instruction.
    And the user clicks on "new radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Instruction101" text in "new instruction record table" field on "Exports/Librarian" page
    #Click the edit icon for the added instruction record to edit.
    And the user click on the added instruction to be edited
    #Select the checkbox for # of PHV Signatures.Scenario:
    And the user clicks on "number of phv signature checkbox" element on "Exports/Librarian" page
    #Select checkbox for Certificates.
    And the user clicks on "certificate checkbox" element on "Exports/Librarian" page
    #Select 9060-5 from the certificate drop down.
    And the user selects "<Certificate>" from "certificate drop down" combo box on "Exports/Librarian" page
    #Select class from the class field drop down.
    And the user selects "<Class 1>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    And the user selects "<Instruction Species1>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Click on the NA check box and select Selector.
    And the user clicks on "instruction haccp type check box" element on "Exports/Librarian" page
    And the user must see "Selector" text in "instruction selector check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "instruction field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "instruction category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "instruction phv signature alert" field on "Exports/Librarian" page
    #Select a # of PHV Signature checkbox.Scenario:
    And the user clicks on "phv signature: not required" element on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          | Instruction Name               | Instruction Description             | Certificate | Class 1 | Instruction Species | Instruction Species1 |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable | Automation_Test_Instruction101 | Automation Test Description data11. | 9060-5      | Poultry | Chicken             | Duck                 |

  @TC_61.10
  Scenario Outline: 61.10 Edit an Instruction Record
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the record is successfully saved.
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: validator record for approval" element on "Exports/Librarian" page
    #Verify that the validator rule set is submitted successfully.Scenario:
    And the user must see "Validator rule set is submitted successfully." text in "validator rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the pending radio button and verify that the submitted validator is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "pending validator record" field on "Exports/Librarian" page
    #Click on the instructions tab to add instructions.Scenario:
    And the user clicks on "instructions tab" element on "Exports/Librarian" page
    #Click on the create an instruction link.
    And the user clicks the link with text "Create an Instruction"
    #Enter same Name and Description.
    And the user enters "<Rule Collection Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify alert message to warn user to enter a unique data.
    And the user must see "Rule set name must be unique within its country." text in "instruction warn for unique data alert" field on "Exports/Librarian" page
    #Enter unique Name and Description.
    And the user enters "<Instruction Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Instruction Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify that the instruction is successfully added.
    And the user must see "New instruction added successfully." text in "instruction success creation alert" field on "Exports/Librarian" page
    #Click on the new/Rejected radio button to verify added instruction.
    And the user clicks on "new radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Instruction101" text in "new instruction record table" field on "Exports/Librarian" page
    #Click the edit icon for the added instruction record to edit.
    And the user click on the added instruction to be edited
    #Select the checkbox for # of PHV Signatures.Scenario:
    And the user clicks on "number of phv signature checkbox" element on "Exports/Librarian" page
    #Select checkbox for Certificates.
    And the user clicks on "certificate checkbox" element on "Exports/Librarian" page
    #Select 9060-5 from the certificate drop down.
    And the user selects "<Certificate>" from "certificate drop down" combo box on "Exports/Librarian" page
    #Select class from the class field drop down.
    And the user selects "<Class 1>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    And the user selects "<Instruction Species1>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Click on the NA check box and select Selector.
    And the user clicks on "instruction haccp type check box" element on "Exports/Librarian" page
    And the user must see "Selector" text in "instruction selector check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "instruction field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "instruction category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "instruction phv signature alert" field on "Exports/Librarian" page
    #Select a # of PHV Signature checkbox.Scenario:
    And the user clicks on "phv signature: not required" element on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Edit the added instruction record.Scenario:
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on Instruction tab.
    And the user clicks the link with text "Instructions (0-0-1)"
    #And the user clicks on "instructions tab" element on "Exports/Librarian" page
    #Locate and click on the edit button for the added instruction.
    And the user click on the added instruction to be edited
    #Select class from the class field drop down.
    And the user selects "<Class 2>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species2>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Verify the edited records.
    And the user must see "Chicken; Duck; Goose" text in "instruction: species edited" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          | Instruction Name               | Instruction Description             | Certificate | Class 1 | Instruction Species | Instruction Species1 | Class 2      | Instruction Species2 |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable | Automation_Test_Instruction101 | Automation Test Description data11. | 9060-5      | Poultry | Chicken             | Duck                 | Egg Products | Goose                |

  @TC_61.11
  Scenario Outline: 61.11 Delete an Instruction Record
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the record is successfully saved.
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: validator record for approval" element on "Exports/Librarian" page
    #Verify that the validator rule set is submitted successfully.Scenario:
    And the user must see "Validator rule set is submitted successfully." text in "validator rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the pending radio button and verify that the submitted validator is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "pending validator record" field on "Exports/Librarian" page
    #Click on the instructions tab to add instructions.Scenario:
    And the user clicks on "instructions tab" element on "Exports/Librarian" page
    #Click on the create an instruction link.
    And the user clicks the link with text "Create an Instruction"
    #Enter same Name and Description.
    And the user enters "<Rule Collection Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify alert message to warn user to enter a unique data.
    And the user must see "Rule set name must be unique within its country." text in "instruction warn for unique data alert" field on "Exports/Librarian" page
    #Enter unique Name and Description.
    And the user enters "<Instruction Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Instruction Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify that the instruction is successfully added.
    And the user must see "New instruction added successfully." text in "instruction success creation alert" field on "Exports/Librarian" page
    #Click on the new/Rejected radio button to verify added instruction.
    And the user clicks on "new radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Instruction101" text in "new instruction record table" field on "Exports/Librarian" page
    #Click the edit icon for the added instruction record to edit.
    And the user click on the added instruction to be edited
    #Select the checkbox for # of PHV Signatures.Scenario:
    And the user clicks on "number of phv signature checkbox" element on "Exports/Librarian" page
    #Select checkbox for Certificates.
    And the user clicks on "certificate checkbox" element on "Exports/Librarian" page
    #Select 9060-5 from the certificate drop down.
    And the user selects "<Certificate>" from "certificate drop down" combo box on "Exports/Librarian" page
    #Select class from the class field drop down.
    And the user selects "<Class 1>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    And the user selects "<Instruction Species1>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Click on the NA check box and select Selector.
    And the user clicks on "instruction haccp type check box" element on "Exports/Librarian" page
    And the user must see "Selector" text in "instruction selector check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "instruction field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "instruction category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "instruction phv signature alert" field on "Exports/Librarian" page
    #Select a # of PHV Signature checkbox.Scenario:
    And the user clicks on "phv signature: not required" element on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Edit the added instruction record.Scenario:
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on Instruction tab.
    And the user clicks the link with text "Instructions (0-0-1)"
    #Locate and click on the edit button for the added instruction.
    And the user click on the added instruction to be edited
    #Select class from the class field drop down.
    And the user selects "<Class 2>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species2>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Verify the edited records.
    And the user must see "Chicken; Duck; Goose" text in "instruction: species edited" field on "Exports/Librarian" page
    #Delete the added instruction record.
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on Instruction tab.
    And the user clicks the link with text "Instructions (0-0-1)"
    #Locate and click on the edit button for the added instruction.
    And the user delete the added instruction records created by test
    #Verify that the record is successfully deleted.
    And the user must see "Instruction deleted successfully." text in "instruction delete success message container" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          | Instruction Name               | Instruction Description             | Certificate | Class 1 | Instruction Species | Instruction Species1 | Class 2      | Instruction Species2 |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable | Automation_Test_Instruction101 | Automation Test Description data11. | 9060-5      | Poultry | Chicken             | Duck                 | Egg Products | Goose                |


  @TC_61.12
  Scenario Outline: 61.12 Submit an Instruction Record for Approval
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the record is successfully saved.
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: validator record for approval" element on "Exports/Librarian" page
    #Verify that the validator rule set is submitted successfully.Scenario:
    And the user must see "Validator rule set is submitted successfully." text in "validator rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the pending radio button and verify that the submitted validator is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "pending validator record" field on "Exports/Librarian" page
    #Click on the instructions tab to add instructions.Scenario:
    And the user clicks on "instructions tab" element on "Exports/Librarian" page
    #Click on the create an instruction link.
    And the user clicks the link with text "Create an Instruction"
    #Enter same Name and Description.
    And the user enters "<Rule Collection Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify alert message to warn user to enter a unique data.
    And the user must see "Rule set name must be unique within its country." text in "instruction warn for unique data alert" field on "Exports/Librarian" page
    #Enter unique Name and Description.
    And the user enters "<Instruction Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Instruction Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify that the instruction is successfully added.
    And the user must see "New instruction added successfully." text in "instruction success creation alert" field on "Exports/Librarian" page
    #Click on the new/Rejected radio button to verify added instruction.
    And the user clicks on "new radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Instruction101" text in "new instruction record table" field on "Exports/Librarian" page
    #Click the edit icon for the added instruction record to edit.
    And the user click on the added instruction to be edited
    #Select the checkbox for # of PHV Signatures.Scenario:
    And the user clicks on "number of phv signature checkbox" element on "Exports/Librarian" page
    #Select checkbox for Certificates.
    And the user clicks on "certificate checkbox" element on "Exports/Librarian" page
    #Select 9060-5 from the certificate drop down.
    And the user selects "<Certificate>" from "certificate drop down" combo box on "Exports/Librarian" page
    #Select class from the class field drop down.
    And the user selects "<Class 1>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    And the user selects "<Instruction Species1>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Click on the NA check box and select Selector.
    And the user clicks on "instruction haccp type check box" element on "Exports/Librarian" page
    And the user must see "Selector" text in "instruction selector check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "instruction field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "instruction category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "instruction phv signature alert" field on "Exports/Librarian" page
    #Select a # of PHV Signature checkbox.Scenario:
    And the user clicks on "phv signature: not required" element on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Edit the added instruction record.Scenario:
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on Instruction tab.
    And the user clicks the link with text "Instructions (0-0-1)"
    #And the user clicks on "instructions tab" element on "Exports/Librarian" page
    #Locate and click on the edit button for the added instruction.
    And the user click on the added instruction to be edited
    #Select class from the class field drop down.
    And the user selects "<Class 2>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species2>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Verify the edited records.
    And the user must see "Chicken; Duck; Goose" text in "instruction: species edited" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: instruction record for approval" element on "Exports/Librarian" page
    #Verify that the Instruction rule set is submitted successfully.Scenario:
    And the user must see "Instruction rule set is submitted successfully." text in "instruction rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on Instruction tab.
    And the user clicks the link with text "Instructions (0-1-0)"
    #Click on the pending radio button and verify that the submitted Instruction record is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Instruction101" text in "pending instruction record" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          | Instruction Name               | Instruction Description             | Certificate | Class 1 | Instruction Species | Instruction Species1 | Class 2      | Instruction Species2 |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable | Automation_Test_Instruction101 | Automation Test Description data11. | 9060-5      | Poultry | Chicken             | Duck                 | Egg Products | Goose                |


  @TC_61.13
  Scenario Outline: 61.13 Review and Approve Validators
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the record is successfully saved.
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: validator record for approval" element on "Exports/Librarian" page
    #Verify that the validator rule set is submitted successfully.Scenario:
    And the user must see "Validator rule set is submitted successfully." text in "validator rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the pending radio button and verify that the submitted validator is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "pending validator record" field on "Exports/Librarian" page
    #Select role as Export Librarian Approval.
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian Approval role.
    And the user selects "<Approval Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country Approvals Admin from the left navigation.
    And the user clicks on "country approval admin: left navigation" element on "Exports/Librarian" page
    #Click on Rule Set Approval.
    And the user clicks on "rule set approval: left navigation" element on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Click on the approve icon for the validator record.
    And the user click on the approve icon for the submitted validator to be approve
    #Verify that record is successfully approved.
    And the user must see "The operation was completed successfully." text in "approval confirmation for approved validator" field on "Exports/Librarian" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on published.Scenario:
    And the user clicks on "published: validator record" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "approved validator record" field on "Exports/Librarian" page
    #Delete the publish or approved validator.
    And the user delete validator records created by test
    #Verify that the validator is successfully deleted.
    And the user must see "Validator deleted successfully." text in "validator delete success message" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          | Approval Role           |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable | Export Library Approver |

  @TC_61.14
  Scenario Outline: 61.14 Review and Reject Validators
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the record is successfully saved.
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: validator record for approval" element on "Exports/Librarian" page
    #Verify that the validator rule set is submitted successfully.Scenario:
    And the user must see "Validator rule set is submitted successfully." text in "validator rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the pending radio button and verify that the submitted validator is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "pending validator record" field on "Exports/Librarian" page
    #Select role as Export Librarian Approval.
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian Approval role.
    And the user selects "<Approval Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country Approvals Admin from the left navigation.
    And the user clicks on "country approval admin: left navigation" element on "Exports/Librarian" page
    #Click on Rule Set Approval.
    And the user clicks on "rule set approval: left navigation" element on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Click on the approve icon for the validator record.
    And the user click on the reject icon for the submitted validator to be rejected
    #Verify that record is successfully approved.
    And the user must see "The operation was completed successfully." text in "approval confirmation for approved validator" field on "Exports/Librarian" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    And the user must see "Rejected" text in "rejected validator record: validator status" field on "Exports/Librarian" page
    #Delete the publish or approved validator.
    And the user delete validator records created by test
    #Verify that the validator is successfully deleted.
    And the user must see "Validator deleted successfully." text in "validator delete success message" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          | Approval Role           |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable | Export Library Approver |


  @TC_61.15
  Scenario Outline: 61.15 Review and Approve Instructions
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the record is successfully saved.
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: validator record for approval" element on "Exports/Librarian" page
    #Verify that the validator rule set is submitted successfully.Scenario:
    And the user must see "Validator rule set is submitted successfully." text in "validator rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the pending radio button and verify that the submitted validator is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "pending validator record" field on "Exports/Librarian" page
    #Click on the instructions tab to add instructions.Scenario:
    And the user clicks on "instructions tab" element on "Exports/Librarian" page
    #Click on the create an instruction link.
    And the user clicks the link with text "Create an Instruction"
    #Enter same Name and Description.
    And the user enters "<Rule Collection Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify alert message to warn user to enter a unique data.
    And the user must see "Rule set name must be unique within its country." text in "instruction warn for unique data alert" field on "Exports/Librarian" page
    #Enter unique Name and Description.
    And the user enters "<Instruction Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Instruction Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify that the instruction is successfully added.
    And the user must see "New instruction added successfully." text in "instruction success creation alert" field on "Exports/Librarian" page
    #Click on the new/Rejected radio button to verify added instruction.
    And the user clicks on "new radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Instruction101" text in "new instruction record table" field on "Exports/Librarian" page
    #Click the edit icon for the added instruction record to edit.
    And the user click on the added instruction to be edited
    #Select the checkbox for # of PHV Signatures.Scenario:
    And the user clicks on "number of phv signature checkbox" element on "Exports/Librarian" page
    #Select checkbox for Certificates.
    And the user clicks on "certificate checkbox" element on "Exports/Librarian" page
    #Select 9060-5 from the certificate drop down.
    And the user selects "<Certificate>" from "certificate drop down" combo box on "Exports/Librarian" page
    #Select class from the class field drop down.
    And the user selects "<Class 1>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    And the user selects "<Instruction Species1>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Click on the NA check box and select Selector.
    And the user clicks on "instruction haccp type check box" element on "Exports/Librarian" page
    And the user must see "Selector" text in "instruction selector check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "instruction field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "instruction category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "instruction phv signature alert" field on "Exports/Librarian" page
    #Select a # of PHV Signature checkbox.Scenario:
    And the user clicks on "phv signature: not required" element on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Edit the added instruction record.Scenario:
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on Instruction tab.
    And the user clicks the link with text "Instructions (0-0-1)"
    #And the user clicks on "instructions tab" element on "Exports/Librarian" page
    #Locate and click on the edit button for the added instruction.
    And the user click on the added instruction to be edited
    #Select class from the class field drop down.
    And the user selects "<Class 2>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species2>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Verify the edited records.
    And the user must see "Chicken; Duck; Goose" text in "instruction: species edited" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: instruction record for approval" element on "Exports/Librarian" page
    #Verify that the Instruction rule set is submitted successfully.Scenario:
    And the user must see "Instruction rule set is submitted successfully." text in "instruction rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on Instruction tab.
    And the user clicks the link with text "Instructions (0-1-0)"
    #Click on the pending radio button and verify that the submitted Instruction record is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Instruction101" text in "pending instruction record" field on "Exports/Librarian" page
    #Select role as Export Librarian Approval.
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian Approval role.
    And the user selects "<Approval Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country Approvals Admin from the left navigation.
    And the user clicks on "country approval admin: left navigation" element on "Exports/Librarian" page
    #Click on Rule Set Approval.
    And the user clicks on "rule set approval: left navigation" element on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Click on the approve icon for the validator record.
    And the user click on the approve icon for the submitted instruction to be approved
    #Verify that record is successfully approved.
    And the user must see "The operation was completed successfully." text in "approval confirmation for approved validator" field on "Exports/Librarian" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Instruction tab.Scenario:
    And the user clicks the link with text "Instructions (1-0-0)"
    And the user waits for 2 seconds
    #Click on published.Scenario:
    And the user clicks on "published: validator record" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Instruction101" text in "approved instruction record: instruction status" field on "Exports/Librarian" page
    #Delete the publish or approved validator.
    And the user delete approved instruction records created by test
    #Verify that the validator is successfully deleted.
    And the user must see "Instruction deleted successfully." text in "instruction delete success message" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          | Instruction Name               | Instruction Description             | Certificate | Class 1 | Instruction Species | Instruction Species1 | Class 2      | Instruction Species2 | Approval Role           |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable | Automation_Test_Instruction101 | Automation Test Description data11. | 9060-5      | Poultry | Chicken             | Duck                 | Egg Products | Goose                | Export Library Approver |


  @TC_61.16
  Scenario Outline: 61.15 Review and Reject Instructions
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the record is successfully saved.
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: validator record for approval" element on "Exports/Librarian" page
    #Verify that the validator rule set is submitted successfully.Scenario:
    And the user must see "Validator rule set is submitted successfully." text in "validator rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the pending radio button and verify that the submitted validator is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "pending validator record" field on "Exports/Librarian" page
    #Click on the instructions tab to add instructions.Scenario:
    And the user clicks on "instructions tab" element on "Exports/Librarian" page
    #Click on the create an instruction link.
    And the user clicks the link with text "Create an Instruction"
    #Enter same Name and Description.
    And the user enters "<Rule Collection Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify alert message to warn user to enter a unique data.
    And the user must see "Rule set name must be unique within its country." text in "instruction warn for unique data alert" field on "Exports/Librarian" page
    #Enter unique Name and Description.
    And the user enters "<Instruction Name>" into "instruction name text box" on "Exports/Librarian" page
    And the user enters "<Instruction Description>" into "instruction description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "instruction create button" element on "Exports/Librarian" page
    #Verify that the instruction is successfully added.
    And the user must see "New instruction added successfully." text in "instruction success creation alert" field on "Exports/Librarian" page
    #Click on the new/Rejected radio button to verify added instruction.
    And the user clicks on "new radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Instruction101" text in "new instruction record table" field on "Exports/Librarian" page
    #Click the edit icon for the added instruction record to edit.
    And the user click on the added instruction to be edited
    #Select the checkbox for # of PHV Signatures.Scenario:
    And the user clicks on "number of phv signature checkbox" element on "Exports/Librarian" page
    #Select checkbox for Certificates.
    And the user clicks on "certificate checkbox" element on "Exports/Librarian" page
    #Select 9060-5 from the certificate drop down.
    And the user selects "<Certificate>" from "certificate drop down" combo box on "Exports/Librarian" page
    #Select class from the class field drop down.
    And the user selects "<Class 1>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    And the user selects "<Instruction Species1>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "alert message to set instruction rule" field on "Exports/Librarian" page
    #Click on the NA check box and select Selector.
    And the user clicks on "instruction haccp type check box" element on "Exports/Librarian" page
    And the user must see "Selector" text in "instruction selector check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "instruction field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "instruction category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is invalid. Number of PHV Signatures was selected, but no values were specified." text in "instruction phv signature alert" field on "Exports/Librarian" page
    #Select a # of PHV Signature checkbox.Scenario:
    And the user clicks on "phv signature: not required" element on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Edit the added instruction record.Scenario:
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on Instruction tab.
    And the user clicks the link with text "Instructions (0-0-1)"
    #And the user clicks on "instructions tab" element on "Exports/Librarian" page
    #Locate and click on the edit button for the added instruction.
    And the user click on the added instruction to be edited
    #Select class from the class field drop down.
    And the user selects "<Class 2>" from "class field drop down" combo box on "Exports/Librarian" page
    #Click save.
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Select species
    And the user selects "<Instruction Species2>" from "instruction species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "Instruction rule set is updated successfully." text in "instruction: updated success alert" field on "Exports/Librarian" page
    #Verify the edited records.
    And the user must see "Chicken; Duck; Goose" text in "instruction: species edited" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: instruction record for approval" element on "Exports/Librarian" page
    #Verify that the Instruction rule set is submitted successfully.Scenario:
    And the user must see "Instruction rule set is submitted successfully." text in "instruction rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on Instruction tab.
    And the user clicks the link with text "Instructions (0-1-0)"
    #Click on the pending radio button and verify that the submitted Instruction record is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Instruction101" text in "pending instruction record" field on "Exports/Librarian" page
    #Select role as Export Librarian Approval.
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian Approval role.
    And the user selects "<Approval Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country Approvals Admin from the left navigation.
    And the user clicks on "country approval admin: left navigation" element on "Exports/Librarian" page
    #Click on Rule Set Approval.
    And the user clicks on "rule set approval: left navigation" element on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Click on the approve icon for the validator record.
    And the user click on the reject icon for the submitted instruction record to be rejected
    #Verify that record is successfully approved.
    And the user must see "The operation was completed successfully." text in "approval confirmation for approved validator" field on "Exports/Librarian" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Instruction tab.Scenario:
    And the user clicks the link with text "Instructions (0-0-1)"
    And the user waits for 2 seconds
    #Click on published.Scenario:
    And the user must see "Rejected" text in "rejected instruction record: validator status" field on "Exports/Librarian" page
    #Delete the publish or approved validator.
    And the user delete rejected instruction records created by test
    #Verify that the validator is successfully deleted.
    And the user must see "Instruction deleted successfully." text in "instruction delete success message" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          | Instruction Name               | Instruction Description             | Certificate | Class 1 | Instruction Species | Instruction Species1 | Class 2      | Instruction Species2 | Approval Role           |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable | Automation_Test_Instruction101 | Automation Test Description data11. | 9060-5      | Poultry | Chicken             | Duck                 | Egg Products | Goose                | Export Library Approver |


  @TC_61.17
  Scenario Outline: 61.17 Enabling and Disabling Countries for Export.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Ref Data Management from the left menu.
    And the user clicks on "ref data management" element on "Exports/Librarian" page
    #click on Ref country.
    And the user clicks on "ref countries" element on "Exports/Librarian" page
    #On the Manage RefCountries table, click on the edit icon.
    And the user click on the edit icon for the country assign
    #Click on the save button.
    And the user clicks on "ref countries save button" element on "Exports/Librarian" page
    #Verify that transaction is save.Scenario:
    And the user must see "The entered values are saved successfully" text in "ref data management data save alert" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<EA User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role1>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on 9060 from the left navigation.
    And the user clicks on "9060 left nav" element on "Exports/Librarian" page
    And the user waits for 3 seconds
    #Click on create application
    And the user clicks the link with text "Create Application"
    And the user click on the home icon for the Hillside Turkey Farm
    #Select shipment type
    And the user selects "<Shipment Type>" from "9060: shipment type drop down" drop down on "Exports/Librarian" page
    #Select Application Type
    And the user selects "<Application Type>" from "9060: application type drop down" drop down on "Exports/Librarian" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Enter company name
    And the user enters "<Company Name>" into "9060: company name" on "Exports/Librarian" page
    #Click Next to verify required fields.
    And the user clicks on "next button" element on "Exports/Librarian" page
    And the user must see "Data could not be saved due to the errors below." text in "9060: data error alert" field on "Exports/Librarian" page
    #Verify all the required fields
    And the user must see "<Required Indicator>" text in "9060: address lin1 required indicator" field on "Exports/Librarian" page
    And the user must see "<Required Indicator>" text in "9060: city required indicator" field on "Exports/Librarian" page
    And the user must see "<Required Indicator>" text in "9060: state required indicator" field on "Exports/Librarian" page
    And the user must see "<Required Indicator>" text in "9060: postal code required indicator" field on "Exports/Librarian" page
    And the user must see "<Required Indicator>" text in "9060: export establishment required indicator" field on "Exports/Librarian" page
    #Enter Address line1
    And the user enters "<Address Line>" into "9060: company address1" on "Exports/Librarian" page
    #Enter Address line2
    And the user enters "<Address Line>" into "9060: company address2" on "Exports/Librarian" page
    #Enter Address line3
    And the user enters "<Address Line>" into "9060: company address3" on "Exports/Librarian" page
    #Enter City
    And the user enters "Test Washington City" into "9060: city" on "Exports/Librarian" page
    #select Country
    And the user selects "UNITED STATES" from "9060: country drop down" drop down on "Exports/Librarian" page
    #select State
    And the user selects "Washington" from "9060: state province drop down" drop down on "Exports/Librarian" page
    #Enter postal code
    And the user enters "Negative 5745243154" into "9060: postal code" on "Exports/Librarian" page
    #Enter phone number
    And the user enters "Negative 5745243154" into "9060: phone number" on "Exports/Librarian" page
    And the user must see "(Incorrect Format)" text in "9060: invalid postal code alert" field on "Exports/Librarian" page
    #select export establishment
    And the user selects "M10828" from "9060: export establishment drop down" drop down on "Exports/Librarian" page
    #Click on Unique identifier
    And the user check "9060: unique identifier check" checkbox on "Exports/Librarian" page
    And the user enters "TestData10001" into "9060: unique identifier tex tbx" on "Exports/Librarian" page
    #Click Next to verify alert for invalid postal code.
    And the user clicks on "next button" element on "Exports/Librarian" page
    And the user must see "Data could not be saved due to the errors below." text in "9060: data error alert" field on "Exports/Librarian" page
    #Enter valid postal code
    And the user enters "78665" into "9060: postal code" on "Exports/Librarian" page
    And the user enters "7034524315" into "9060: phone number" on "Exports/Librarian" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Enter company name
    And the user enters "<Company Name>" into "9060: company name" on "Exports/Librarian" page
    #Enter Address line1
    And the user enters "<Address Line>" into "9060: company address1" on "Exports/Librarian" page
    #Enter Address line2
    And the user enters "<Address Line>" into "9060: company address2" on "Exports/Librarian" page
    #Enter Address line3
    And the user enters "<Address Line>" into "9060: company address3" on "Exports/Librarian" page
    #Enter City
    And the user enters "Test Washington City" into "9060: city" on "Exports/Librarian" page
    #select Country
    And the user selects "AFGHANISTAN" from "9060: country drop down" drop down on "Exports/Librarian" page
    #select Country
    And the user selects "ANDORRA" from "9060: final destination country drop down" drop down on "Exports/Librarian" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Note application number
    And the user remembers the value of "9060: application number holder" field into "application_number" on "Exports/Librarian" page
    #Click on Exit Menu from the left navigation
    And the user clicks on "exit menu left nav" element on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Ref Data Management from the left menu.
    And the user clicks on "ref data management" element on "Exports/Librarian" page
    #click on Ref country.
    And the user clicks on "ref countries" element on "Exports/Librarian" page
    #On the Manage RefCountries table, click on the edit icon.
    And the user click on the edit icon for the country assign
    #Uncheck the ‘isExport’
    And the user clicks on "isexport check box" element on "Exports/Librarian" page
    #Click on the save button.
    And the user clicks on "ref countries save button" element on "Exports/Librarian" page
    #Verify that transaction is save.Scenario:
    And the user must see "The entered values are saved successfully" text in "ref data management data save alert" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser
    And the user waits for 20 seconds
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<EA User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role1>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on 9060 from the left navigation.
    And the user clicks on "9060 left nav" element on "Exports/Librarian" page
    #enter the application id to filter the application.
    And the user enters current value of "application_number" into "application number filter text box" on "Exports/Librarian" page
    #And the user enters "application_number" into "application number filter text box" on "Exports/Librarian" page
    And the user clicks on "application number filter icon" element on "Exports/Librarian" page
    And the user clicks on "application number filter contains" element on "Exports/Librarian" page
    And the user waits for 7 seconds
    #click the edit icon
    And the user clicks on "9060: edit icon" element on "Exports/Librarian" page
    #And the user click on the edit icon for the application started
    #click the importer from left menu
    And the user clicks on "9060: importer left nav" element on "Exports/Librarian" page
    #Enter company name
    And the user enters "<Company Name>" into "9060: company name" on "Exports/Librarian" page
    #Enter Address line1
    And the user enters "<Address Line>" into "9060: company address1" on "Exports/Librarian" page
    #Enter Address line2
    And the user enters "<Address Line>" into "9060: company address2" on "Exports/Librarian" page
    #Enter Address line3
    And the user enters "<Address Line>" into "9060: company address3" on "Exports/Librarian" page
    #Enter City
    And the user enters "Test Washington City" into "9060: city" on "Exports/Librarian" page
    #select Country
    And the user sees "AFGHANISTAN" selected in "9060: country drop down" drop down on "Exports/Librarian" page
    And the user selects "AFGHANISTAN" from "9060: country drop down" drop down on "Exports/Librarian" page
    #select final destination Country
    And the user selects "AFGHANISTAN" from "9060: final destination country drop down" drop down on "Exports/Librarian" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Click on Exit Menu from the left navigation
    And the user clicks on "exit menu left nav" element on "Exports/Librarian" page
    #Delete the application you just started.
    #Click on 9060 from the left navigation.
    And the user clicks on "9060 left nav" element on "Exports/Librarian" page
    #enter the application id to filter the application.
    And the user enters current value of "application_number" into "application number filter text box" on "Exports/Librarian" page
    #And the user enters "application_number" into "application number filter text box" on "Exports/Librarian" page
    And the user clicks on "application number filter icon" element on "Exports/Librarian" page
    And the user clicks on "application number filter contains" element on "Exports/Librarian" page
    #And the user click on the delete icon for the application started
    And the user waits for 9 seconds
    And the user clicks on "9060: delete icon" element on "Exports/Librarian" page
    And the user waits for 3 seconds
    And the user clicks on "9060: ok button" element on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User       | Role                 | Role1            | EA User          | Shipment Type        | Application Type | Test Document           | Company Name        | Required Indicator | Address Line              |
      | Seebohm, Scott | Reference Data Admin | Export Applicant | Applicant, Afzal | Personal Consumption | New              | Automation_Test_Doc.pdf | Test Alliance Data  | (Required)         | 8765 Montana Test data dr |


  @TC_61.18
  Scenario Outline: Publication and Submitted Dates.
   #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Delete any existing collection.
    And the user delete all existing collection
    #Click on Add New Collection.
    And the user clicks the link with text "Add New Collection"
    #Enter collection name and description.
    And the user enters "<Rule Collection Name>" into "rule collection: name" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "rule collection: description" on "Exports/Librarian" page
    #Click on the Save button.
    And the user clicks on "rule collection: save button" element on "Exports/Librarian" page
    #Verify the added collection.
    And the user must see "<Rule Collection Name>" text in "rule collection: new collection added" field on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the Create a Validator link.
    And the user clicks the link with text "Create a Validator"
    #Enter validator name and description.
    And the user enters "<Rule Collection Name>" into "validator name text box" on "Exports/Librarian" page
    And the user enters "<Rule Collection Description>" into "validator description text box" on "Exports/Librarian" page
    #Click on the create button.
    And the user clicks on "validator create button" element on "Exports/Librarian" page
    #Verify the added validator.
    And the user must see "<Rule Collection Name>" text in "new validated added" field on "Exports/Librarian" page
    #Locate and click on the edit button on the added validator record.
    And the user click on the added validator record to be edited
    #Select class from the class drop down.
    And the user selects "<Validator Class>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    And the user selects "<Validator Class1>" from "validator class drop down" combo box on "Exports/Librarian" page
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "The Species criteria is invalid. No values were selected." text in "species not added alert message: validator" field on "Exports/Librarian" page
    #Select species from the species drop down.
    And the user selects "<Validator Species>" from "validator species drop down" combo box on "Exports/Librarian" page
    And the user clicks on "species select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    And the user must see "No validators were selected. At least one criterion has to be selected as a validator." text in "vendor not added alert message: validator" field on "Exports/Librarian" page
    And the user must see "Chicken" text in "species selected section" field on "Exports/Librarian" page
    #Click on the NA check box and select validator.
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Selector" text in "selector check box" field on "Exports/Librarian" page
    And the user clicks on "check box to select validator" element on "Exports/Librarian" page
    And the user must see "Validator" text in "validator check box" field on "Exports/Librarian" page
    #Select operation and Category fields.
    And the user selects "<Operation Option>" from "operation field drop down" combo box on "Exports/Librarian" page
    And the user selects "<Validator Category>" from "validator category drop down" combo box on "Exports/Librarian" page
    And the user clicks on "category select drop down arrow" element on "Exports/Librarian" page
    And the user waits for 1 seconds
    And the user clicks on "save button: validator" element on "Exports/Librarian" page
    #Verify that the record is successfully saved.
    And the user must see "Validator rule set is updated successfully." text in "validator rule set update success alert" field on "Exports/Librarian" page
    #Clcik on the submit button.
    And the user clicks on "submit button: validator record for approval" element on "Exports/Librarian" page
    #Verify that the validator rule set is submitted successfully.Scenario:
    And the user must see "Validator rule set is submitted successfully." text in "validator rule set submit success alert" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on the pending radio button and verify that the submitted validator is in pending for approval.
    And the user clicks on "pending validator radio button" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "pending validator record" field on "Exports/Librarian" page
    #Select role as Export Librarian Approval.
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian Approval role.
    And the user selects "<Approval Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country Approvals Admin from the left navigation.
    And the user clicks on "country approval admin: left navigation" element on "Exports/Librarian" page
    #Click on Rule Set Approval.
    And the user clicks on "rule set approval: left navigation" element on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Click on the approve icon for the validator record.
    And the user click on the approve icon for the submitted validator to be approve
    #Verify that record is successfully approved.
    And the user must see "The operation was completed successfully." text in "approval confirmation for approved validator" field on "Exports/Librarian" page
    And the user waits for 2 seconds
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #click on rule collection.
    And the user clicks on "rule collection: create a rule collection" element on "Exports/Librarian" page
    #Locate and click on the edit button.
    And the user click on the added rule collection to be edited
    #Click on published.Scenario:
    And the user clicks on "published: validator record" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "approved validator record" field on "Exports/Librarian" page
    #Click on the open icon and validate the status of the approved validator record.
    And the user clicks on the open icon for validator records created by test
    And the user must see "Approved" text in "9060: approved validator status" field on "Exports/Librarian" page
    #click on cancel button.
    And the user clicks on "9060: cancel button" element on "Exports/Librarian" page
    #Click on published.Scenario:
    And the user clicks on "published: validator record" element on "Exports/Librarian" page
    And the user must see "Automation_Test_Date112" text in "approved validator record" field on "Exports/Librarian" page
    #Delete the publish or approved validator.
    And the user delete validator records created by test
    #Verify that the validator is successfully deleted.
    And the user must see "Validator deleted successfully." text in "validator delete success message" field on "Exports/Librarian" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added | Rule Collection Name    | Rule Collection Description       | Validator Class | Validator Class1 | Validator Species | Operation Option | Validator Category          | Approval Role           |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             | Automation_Test_Date112 | Automation Test Description data. |  Egg Products   | Poultry          | Chicken           | Is In            | Heat Treated - Shelf Stable | Export Library Approver |


  @TC_61.19
  Scenario Outline: 61.19 Test Rule Sets for Instructions.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #Click on test rule set from the left nav.
    And the user clicks on "9060: test rule sets left nav" element on "Exports/Librarian" page
    #Select shipping type.
    And the user selects "Commercial Sale" from "9060: shipping type drop down" combo box on "Exports/Librarian" page
    #Click on add a product link.
    And the user clicks the link with text "Add a Product"
    And the user selects "Chicken" from "9060: species type drop down" combo box on "Exports/Librarian" page
    And the user selects "Raw - Intact" from "9060: haccp type drop down" combo box on "Exports/Librarian" page
    And the user selects "0-30 Months" from "9060: maturity type drop down" combo box on "Exports/Librarian" page
    And the user clicks the link with text "Insert"
    #click on the run test button.
    And the user clicks on "9060: run test button" element on "Exports/Librarian" page
    #Verify run result.
    And the user must see "Pass" text in "9060: run test result status" field on "Exports/Librarian" page
    And the user clicks on "9060: update test button" element on "Exports/Librarian" page
    And the user click on the delete link for the added product
    #Click on the generate product link.
    And the user clicks the link with text "Generate Products"
    #click on the run test button.
    And the user clicks on "9060: run test button" element on "Exports/Librarian" page
    And the user clicks on "9060: update test button" element on "Exports/Librarian" page
    #Click on the delete link for the added product.
    And the user click on the delete link for the added product
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             |


  @TC_61.20
  Scenario Outline: 61.20 Test Rule Sets for Validators.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on Country from the left menu.
    And the user clicks on "country drop down" element on "Exports/Librarian" page
    #click on select country.
    And the user clicks on "select country" element on "Exports/Librarian" page
    #verify country selection page.
    And the user must see "<Page Header>" text in "country selection page" field on "Exports/Librarian" page
    #Select ANDORRA from the country drop down.
    And the user selects "<Country to be Added>" from "country selection drop down" drop down on "Exports/Librarian" page
    #Verify selected country profile.
    And the user must see "<Country to be Added>" text in "country profile page" field on "Exports/Librarian" page
    #Click on test rule set from the left nav.
    And the user clicks on "9060: test rule sets left nav" element on "Exports/Librarian" page
    #Click on the validator radio button.
    And the user click "rule test: instruction radio button" radio button on "Exports/Librarian" page
    #Select shipping type.
    And the user selects "Commercial Sale" from "9060: shipping type drop down" combo box on "Exports/Librarian" page
    #Delete existing instruction records.
    And the user deletes existing instruction record if any
    #Click on add a product link.
    And the user clicks the link with text "Add a Product"
    And the user selects "Chicken" from "9060: species type drop down" combo box on "Exports/Librarian" page
    And the user selects "Raw - Intact" from "9060: haccp type drop down" combo box on "Exports/Librarian" page
    And the user selects "0-30 Months" from "9060: maturity type drop down" combo box on "Exports/Librarian" page
    And the user clicks the link with text "Insert"
    #click on the run test button.
    And the user clicks on "9060: run test button" element on "Exports/Librarian" page
    #Verify run result.
    And the user must see "PHV Signatures required." text in "rule test: instruction result signature" field on "Exports/Librarian" page
    And the user must see "No PHV Signatures are required." text in "rule test: instruction result transit signature" field on "Exports/Librarian" page
    And the user must see "No Certificates are required." text in "rule test: instruction result transit certificate" field on "Exports/Librarian" page
    And the user clicks on "9060: update test button" element on "Exports/Librarian" page
    And the user click on the delete link for the added product
    #Click on the generate product link.
    And the user clicks the link with text "Generate Products"
    #click on the run test button.
    And the user clicks on "9060: run test button" element on "Exports/Librarian" page
    And the user clicks on "9060: update test button" element on "Exports/Librarian" page
    #Delete existing instruction records.
    And the user deletes existing instruction record if any
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User    | Role             | Page Header       | Country to be Added |
      | Riden, Mary | Export Librarian | Country Selection | ANDORRA             |
