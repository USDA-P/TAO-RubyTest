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
