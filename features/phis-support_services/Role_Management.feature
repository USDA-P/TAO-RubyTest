@Role_Management
Feature: Role Management

  @Tc_61a.1

  Scenario Outline: 61a.1 Add a "Service Account Administrator" role under the "MISC" business area.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on user management.
    And the user clicks on "user management: left nav" element on "Role/Management" page
    #Click on manage user.
    And the user clicks on "manage user: left nav" element on "Role/Management" page
    #Select account type.
    And the user selects "<Account Type>" from "account type drop down" drop down on "Role/Management" page
    #Select the user you wish to manage the role.
    And the user click on the user to manage his or her role
    #click on the role tab.
    And the user clicks on "user profile: role tab" element on "Role/Management" page
    #Delete role added by test.
    And the user deletes any existing saa role added by the test
    #Click on Add role link. 
    And the user clicks the link with text "Add a Role..."
    #Verify that user navigate to the right page. 
    And the user can see "Add a New Role (FELICITAS ABDEEN)" text in "add a role: page title" field on "Role/Management" page
    #Click on the save button to validate required fields.
    And the user clicks on "add a role: save button" element on "Role/Management" page
    And the user can see "Business area is required." text in "add a role: required filed alert business area" field on "Role/Management" page
    And the user can see "Role is required." text in "add a role: required alert role" field on "Role/Management" page
    #Select business area.
    And the user selects "<Business Area>" from "add a role: business area drop down" drop down on "Role/Management" page
    And the user selects "<Role Type>" from "add a role: role drop down" drop down on "Role/Management" page
    #Click on the save  and go back button.
    And the user clicks on "add a role: save and go back button" element on "Role/Management" page
    And the user clicks the link with text "Run PHIS Data Feed"
    And the user can see "The PHIS Data Feed was executed successfully." text in "add a role: phis data feed success message" field on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<SAA User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role1>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on service account from the left navigation.
    And the user clicks on "service account: left nav" element on "Role/Management" page
    And the user can see "Select Organization" text in "select organization: page title" field on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User         | Role         | Account Type          | Business Area | Role Type                     | SAA User          | Role1                         |
      | Westgerdes, Neal | System Admin | FSIS Federal Employee | MISC          | Service Account Administrator | Glodowske, Angela | Service Account Administrator |

  @Tc_61a.2

  Scenario Outline: 61a.2 Add a "Export Viewer" role under the "MISC" business area.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on user management.
    And the user clicks on "user management: left nav" element on "Role/Management" page
    #Click on manage user.
    And the user clicks on "manage user: left nav" element on "Role/Management" page
    #Select account type.
    And the user selects "<Account Type>" from "account type drop down" drop down on "Role/Management" page
    #Select the user you wish to manage the role.
    And the user click on the user to manage his or her role
    #click on the role tab.
    And the user clicks on "user profile: role tab" element on "Role/Management" page
    #Delete role added by test.
    And the user deletes any existing export viewer role added by the test
    #Click on Add role link.
    And the user clicks the link with text "Add a Role..."
    #Verify that user navigate to the right page.
    And the user can see "Add a New Role (FELICITAS ABDEEN)" text in "add a role: page title" field on "Role/Management" page
    #Click on the save button to validate required fields.
    And the user clicks on "add a role: save button" element on "Role/Management" page
    And the user can see "Business area is required." text in "add a role: required filed alert business area" field on "Role/Management" page
    And the user can see "Role is required." text in "add a role: required alert role" field on "Role/Management" page
    #Select business area.
    And the user selects "<Business Area>" from "add a role: business area drop down" drop down on "Role/Management" page
    And the user selects "<Role Type>" from "add a role: role drop down" drop down on "Role/Management" page
    #Click on the save  and go back button.
    And the user clicks on "add a role: save and go back button" element on "Role/Management" page
    And the user clicks the link with text "Run PHIS Data Feed"
    And the user can see "The PHIS Data Feed was executed successfully." text in "add a role: phis data feed success message" field on "Role/Management" page
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
    And the user clicks on "9060: left navigation bar" element on "Role/Management" page
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
    #And the user clicks on "9060: unique identifier check" element on "Exports/Librarian" page
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
    #Click on add product link.
    And the user clicks the link with text "Add Product"
    #Complete all required fields.
    And the user enters "Poultry Food" into "9060: product name text box" on "Role/Management" page
    And the user enters "Test001" into "9060: product code text box" on "Role/Management" page
    And the user selects "Raw - Intact" from "9060: ahccp category drop down" drop down on "Role/Management" page
    And the user selects "Chicken" from "9060: species drop down" drop down on "Role/Management" page
    And the user clicks on "9060: frozen self stable check" element on "Role/Management" page
    And the user enters "500" into "9060: market net weight text box" on "Role/Management" page
    And the user enters "55" into "9060: number of package in lott text box" on "Role/Management" page
    And the user selects "Box" from "9060: package type drop down" drop down on "Role/Management" page
    And the user clicks on "9060: number of product pencil icon" element on "Role/Management" page
    And the user switch to iframe
    And the user enters "10828" into "9060: establishment number text box" on "Role/Management" page
    And the user clicks on "9060: search button" element on "Role/Management" page
    And the user clicks on "9060: establishment home icon" element on "Role/Management" page
    And the user switch back to main window
    And the user selects "M10828" from "9060: number of product drop down" drop down on "Role/Management" page
    And the user clicks on "9060: finish button" element on "Role/Management" page
    And the user enters "5004" into "9060: total net weight text box" on "Role/Management" page
    And the user clicks on "9060: certify statement check box inspection" element on "Role/Management" page
    And the user clicks on "9060: certify statement check box" element on "Role/Management" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Accept submit application button.
    And the user clicks on "9060: submit application button" element on "Role/Management" page
    #Verify application is successfully submitted.
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "9060: submit application confirmation" field on "Role/Management" page
    #Note application number
    And the user remembers the value of "9060: submit application id" field into "application_id1" on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<EV User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role Type>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on 9060 from the left navigation.
    And the user clicks on "9060 left nav" element on "Exports/Librarian" page
    And the user enters current value of "application_id1" into "9060: application number filter text box" on "Role/Management" page
    And the user clicks on "9060: application number filter icon" element on "Role/Management" page
    And the user clicks on "9060: application number filter contains" element on "Role/Management" page
    And the user waits for 7 seconds
    And the user clicks on "app magnifying glass" element on "Role/Management" page
    And the user can see "9060 Application Header" text in "9060: application application page" field on "Role/Management" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Verify importer information
    And the user can see "Importer" text in "9060: application header" field on "Role/Management" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Verify product summary page.
    And the user can see "Products Summary" text in "9060: application header" field on "Role/Management" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Verify Shipment Information page.
    And the user can see "9060-6 Shipment Information" text in "9060: application header" field on "Role/Management" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Verify the Access Control page.
    And the user can see "Access Control" text in "9060: application header" field on "Role/Management" page
    #Click Next.
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Click on Exit Menu from the left navigation
    And the user clicks on "exit menu left nav" element on "Exports/Librarian" page
    #Click on 9080-3 from the left navigation.
    And the user clicks on "9080-3: left nav" element on "Role/Management" page
    #click the magnifying glass for any of the app.
    And the user clicks on "9080: magnifying glass" element on "Role/Management" page
    And the user clicks on "next button" element on "Exports/Librarian" page
    #Click on Exit Menu from the left navigation
    And the user clicks on "exit menu left nav" element on "Exports/Librarian" page
    #click on batch result from the left nav.
    And the user clicks on "left nav: batch results" element on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser
    #Delete the application you just created.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<EA User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role1>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on 9060 from the left navigation.
    And the user clicks on "9060: left navigation bar" element on "Role/Management" page
    And the user clicks on "9060 left nav" element on "Exports/Librarian" page
    And the user enters current value of "application_id1" into "9060: id number filter text box" on "Role/Management" page
    And the user clicks on "99060: id number filter icon" element on "Role/Management" page
    And the user clicks on "9060: application number filter contains" element on "Role/Management" page
    And the user waits for 7 seconds
    And the user deletes the 9060 created by the test
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User         | Role         | Account Type          | Business Area | Role Type     | EV User           | Role1            | Company Name           | Required Indicator | Address Line              | Shipment Type        | Application Type | EA User          |
      | Westgerdes, Neal | System Admin | FSIS Federal Employee | MISC          | Export Viewer | Glodowske, Angela | Export Applicant | Test Alliance Data Inc | (Required)         | 8765 Montana Test data dr | Personal Consumption | New              | Applicant, Afzal |


  @Tc_61a.3

  Scenario Outline: 61a.3 Add a "User Administration (Federal)" role under the "MISC" business area.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<SA User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on user management.
    And the user clicks on "user management: left nav" element on "Role/Management" page
    #Click on manage user.
    And the user clicks on "manage user: left nav" element on "Role/Management" page
    #Select account type.
    And the user selects "<Account Type>" from "account type drop down" drop down on "Role/Management" page
    #Select the user you wish to manage the role.
    And the user click on the user to manage his or her role
    #click on the role tab.
    And the user clicks on "user profile: role tab" element on "Role/Management" page
    #Delete role added by test.
    And the user deletes any existing user administrator role added by the test
    #Click on Add role link.
    And the user clicks the link with text "Add a Role..."
    #Verify that user navigate to the right page.
    And the user can see "Add a New Role (FELICITAS ABDEEN)" text in "add a role: page title" field on "Role/Management" page
    #Click on the save button to validate required fields.
    And the user clicks on "add a role: save button" element on "Role/Management" page
    And the user can see "Business area is required." text in "add a role: required filed alert business area" field on "Role/Management" page
    And the user can see "Role is required." text in "add a role: required alert role" field on "Role/Management" page
    #Select business area.
    And the user selects "<Business Area>" from "add a role: business area drop down" drop down on "Role/Management" page
    And the user selects "<Role Type>" from "add a role: role drop down" drop down on "Role/Management" page
    #Click on the save  and go back button.
    And the user clicks on "add a role: save and go back button" element on "Role/Management" page
    And the user clicks the link with text "Run PHIS Data Feed"
    And the user can see "The PHIS Data Feed was executed successfully." text in "add a role: phis data feed success message" field on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<UA User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role Type>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on user management.
    And the user clicks on "user management: left nav" element on "Role/Management" page
    #Click on manage user.
    And the user clicks on "manage user: left nav" element on "Role/Management" page
    #Verify account type drop down display FISI Federal Employee.
    And the user sees "FSIS Federal Employee" selected in "manage user: account type drop down" drop down on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | SA User          | Role         | Account Type          | Business Area | Role Type                    | UA User           |
      | Westgerdes, Neal | System Admin | FSIS Federal Employee | MISC          | User Administrator (Federal) | Abdeen, Felicitas |


  @Tc_61a.4

  Scenario Outline: 61a.4 Changes needed for the Select Organization page when FSIS admin users are managing service accounts.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<SA User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on service account from the left nav.
    And the user clicks on "left nav: service accounts" element on "Role/Management" page
    #Enter an organization name to review.
    And the user enters "<Organization Name>" into "organization filter text box" on "Role/Management" page
    #Click on the filter icon.
    And the user clicks on "organization filter icon" element on "Role/Management" page
    #Select contains.
    And the user clicks on "filter contains" element on "Role/Management" page
    And the user waits for 3 seconds
    #Click on select for the filter organization.
    And the user clicks on "select link for organization" element on "Role/Management" page
    #Click on the change link.
    And the user clicks the link with text "[Change...]"
    #click the organization link.
    And the user clicks the link with text "Organization"
    And the user waits for 2 seconds
    #click on the expiration date link.
    And the user clicks the link with text "Expiration Date"
    #Enter an organization name to review. 
    And the user enters "<Organization Name>" into "organization filter text box" on "Role/Management" page
    #Click on the filter icon.
    And the user clicks on "organization filter icon" element on "Role/Management" page
    #Select contains.
    And the user clicks on "filter contains" element on "Role/Management" page
    #And the user verify the filtered organization on the table
    And the user can see "Hillside Turkey Farm (M10828; P10828) \n E-FCLT-2406" text in "organization filter table" field on "Role/Management" page
    #Click on the reset link.
    And the user clicks on "reset filter link" element on "Role/Management" page
    #Enter the review date to filter.
    And the user enters "<Review Expiration date>" into "expiration date filter text box" on "Role/Management" page
    #Click on the filter icon.
    And the user clicks on "expiration date filter icon" element on "Role/Management" page
    #Select contains.
    And the user clicks on "expiration date filter contains" element on "Role/Management" page
    #Verify the filtered organization in the table.
    And the user can see "Hillside Turkey Farm (M10828; P10828) \n E-FCLT-2406" text in "organization filter table" field on "Role/Management" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | SA User          | Role         | Organization Name                     | Review Expiration date |
      | Westgerdes, Neal | System Admin | Hillside Turkey Farm (M10828; P10828) | 04/03/2021             |

  @Tc_61a.5

  Scenario Outline: 61a.5 Display additional Federal and State user information in the user management page for administrator
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on user management.
    And the user clicks on "user management: left nav" element on "Role/Management" page
    #Click on manage user.
    And the user clicks on "manage user: left nav" element on "Role/Management" page
    #Select account type.
    And the user selects "<Account Type>" from "account type drop down" drop down on "Role/Management" page
    #Select the user you wish to manage the role.
    And the user click on the user to manage his or her role
    #click on the role tab.
    And the user clicks on "user profile: role tab" element on "Role/Management" page
    #Delete role added by test.
    And the user deletes any existing saa role added by the test
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | CSI User         | Role         | Account Type          |
      | Westgerdes, Neal | System Admin | FSIS Federal Employee |
