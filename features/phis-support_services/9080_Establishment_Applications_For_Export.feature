@9080_ESTABLISHMENT_APPLICATIONS_FOR_EXPORT
Feature:9080 establishment application

  @Tc_66.1
  Scenario: 66.1 Submit 9080 as Export Applicant.
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9080-3" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user selects "AUSTRALIA" from "Importing: Country" drop down on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Micheal Jordan" into "Applicant Name" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Next" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "category of product: meat" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "type of operation(s): grinding" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "class of product(s) to be exported: 03b raw product-ground" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "Species: Beef" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Next" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the link with text "Add New File"
    And user attached "sample_attachment1.pdf" file into "browse" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Automation Test Doc" into "document title 2" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Upload 2" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "submit" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user dismisses browser pop-ups
    And the user clicks the link with text "View 9080-3 Application"
    And the user clicks on "Exit Menu" element on "ExportApplication.web/9080EstablishmentApplication" page
    #Logout
    And the user sign out and close the browser


  @Tc_66.2
  Scenario: 66.2 9080 Approval.
    # Login and submit application as an Export Applicant
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9080-3" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user selects "AUSTRALIA" from "Importing: Country" drop down on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Micheal Jordan" into "Applicant Name" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Next" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "category of product: meat" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "type of operation(s): grinding" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "class of product(s) to be exported: 03b raw product-ground" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "Species: Beef" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Next" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the link with text "Add New File"
    And user attached "sample_attachment1.pdf" file into "browse" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Automation Test Doc" into "document title 2" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Upload 2" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "submit" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user dismisses browser pop-ups
    And the user clicks the link with text "View 9080-3 Application"
    And the user clicks on "Exit Menu" element on "ExportApplication.web/9080EstablishmentApplication" page
    #Logout
    And the user sign out and close the browser

    # Login and approve application as a Consumer Safety Inspector
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Export 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "9080-3 view establishment application" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user waits for 10 seconds
    And the user enters "Submitted" into "application status filter textbox" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Filter Application Status icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Afzal" into "Filter Submitted By" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user waits for 3 seconds
    And the user clicks on "Submitted By Filter icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains Filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Review Application icon" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the link with text "AUSTRALIA"
    And the user waits for 5 seconds
    And the user clicks the "Approve Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user must see "The current 9080-3 Application was successfully approved !" text in "confirmation message for submitting 9080 application" field on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Close Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user sign out and close the browser

    # Login and approve application as a FrontLine Supervisor
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Luedtke, Anne" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "FrontLine Supervisor" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9080-3 view establishment application 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Approved By CSI" into "application status filter textbox" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Filter Application Status icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Afzal" into "Filter Submitted By" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user waits for 3 seconds
    And the user clicks on "Submitted By Filter icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains Filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Review Application icon" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Approve Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user must see "The current 9080-3 Application was successfully approved !" text in "confirmation message for submitting 9080 application" field on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Close Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user sign out and close the browser

    # Login and approve application as a District Manager/Deputy District Manager
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Saucier, Kara" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "District Manager/Deputy District Manager" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Export 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "9080-3 view establishment application" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Approved By FLS" into "application status filter textbox" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Filter Application Status icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Afzal" into "Filter Submitted By" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user waits for 3 seconds
    And the user clicks on "Submitted By Filter icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains Filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Review Application icon" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Approve Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user must see "The current 9080-3 Application was successfully approved !" text in "confirmation message for submitting 9080 application" field on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Close Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user sign out and close the browser

    # Login and approve application as a District Manager/Deputy District Manager
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Saucier, Kara" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "IECPDS User" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Export 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "9080-3 view establishment application" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Approved By DM" into "application status filter textbox" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Filter Application Status icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Afzal" into "Filter Submitted By" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user waits for 3 seconds
    And the user clicks on "Submitted By Filter icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains Filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Review Application icon" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Received Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Approve Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Rescind Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "close Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    #Logout
    And the user sign out and close the browser

  @TC_66.3
  Scenario: 66.3 9080-3 Application grid on Type of Inspection section.
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Establishment Profile" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "select establishment" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Search tab" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "10828" into "select establishment number textbox" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "search select establishment" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "establishment home icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "types of inspection" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user can see "9080-3 application header" header in table on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "view 9080-3 applications" element on "ExportApplication.web/9080EstablishmentApplication" page
    #Logout
    And the user sign out and close the browser


  @TC_66.4
  Scenario: 66.4 Submission of 9080-3 records for European group
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9080-3" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user selects "EUROPEAN GROUP" from "Importing: Country" drop down on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Micheal Jordan" into "Applicant Name" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Next" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "category of product: meat" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "type of operation(s): grinding" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "class of product(s) to be exported: 03b raw product-ground" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "Species: Beef" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Next" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the link with text "Add New File"
    And user attached "sample_attachment1.pdf" file into "browse" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Automation Test Doc" into "document title 2" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Upload 2" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "submit" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user dismisses browser pop-ups
    And the user clicks the link with text "View 9080-3 Application"
    And the user clicks on "Exit Menu" element on "ExportApplication.web/9080EstablishmentApplication" page
    #Logout
    And the user sign out and close the browser

  @TC_66.5
  Scenario: 66.5 Approval of 9080-3 records for European group
    # Login and submit application as an Export Applicant
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9080-3" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user selects "EUROPEAN GROUP" from "Importing: Country" drop down on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Micheal Jordan" into "Applicant Name" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Next" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "category of product: meat" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "type of operation(s): grinding" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "class of product(s) to be exported: 03b raw product-ground" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user check "Species: Beef" checkbox on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Next" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the link with text "Add New File"
    And user attached "sample_attachment1.pdf" file into "browse" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Automation Test Doc" into "document title 2" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Upload 2" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "submit" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user dismisses browser pop-ups
    And the user clicks the link with text "View 9080-3 Application"
    And the user clicks on "Exit Menu" element on "ExportApplication.web/9080EstablishmentApplication" page
    #Logout
    And the user sign out and close the browser

    # Login and approve application as a Consumer Safety Inspector
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Export 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "9080-3 view establishment application" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user waits for 10 seconds
    And the user enters "Submitted" into "application status filter textbox" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Filter Application Status icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Afzal" into "Filter Submitted By" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user waits for 3 seconds
    And the user clicks on "Submitted By Filter icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains Filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Review Application icon" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the link with text "EUROPEAN GROUP"
    And the user waits for 5 seconds
    And the user clicks the "Approve Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user must see "The current 9080-3 Application was successfully approved !" text in "confirmation message for submitting 9080 application" field on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Close Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user sign out and close the browser

    # Login and approve application as a FrontLine Supervisor
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Luedtke, Anne" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "FrontLine Supervisor" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9080-3 view establishment application 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Approved By CSI" into "application status filter textbox" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Filter Application Status icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Afzal" into "Filter Submitted By" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user waits for 3 seconds
    And the user clicks on "Submitted By Filter icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains Filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Review Application icon" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Approve Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user must see "The current 9080-3 Application was successfully approved !" text in "confirmation message for submitting 9080 application" field on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Close Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user sign out and close the browser

    # Login and approve application as a District Manager/Deputy District Manager
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Saucier, Kara" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "District Manager/Deputy District Manager" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Export 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "9080-3 view establishment application" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Approved By FLS" into "application status filter textbox" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Filter Application Status icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Afzal" into "Filter Submitted By" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user waits for 3 seconds
    And the user clicks on "Submitted By Filter icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains Filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Review Application icon" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Approve Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user must see "The current 9080-3 Application was successfully approved !" text in "confirmation message for submitting 9080 application" field on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Close Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user sign out and close the browser

    # Login and approve application as a District Manager/Deputy District Manager
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Saucier, Kara" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "IECPDS User" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Export 1" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "9080-3 view establishment application" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Approved By DM" into "application status filter textbox" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Filter Application Status icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user enters "Afzal" into "Filter Submitted By" on "ExportApplication.web/9080EstablishmentApplication" page
    And the user waits for 3 seconds
    And the user clicks on "Submitted By Filter icon" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks on "Contains Filter link" element on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Review Application icon" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Received Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Approve Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "Rescind Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    And the user clicks the "close Application" button on "ExportApplication.web/9080EstablishmentApplication" page
    #Logout
    And the user sign out and close the browser