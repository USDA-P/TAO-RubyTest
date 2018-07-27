@OCFO_For_Export_Certificate
Feature: OCFO For Export Certificate

  @Tc_88.1

  Scenario Outline: 88.1 Search parameters, report title, and menu name for report of export application submittals for OCFO.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<OCFO User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on OCFO Report.
    And the user clicks on "left nav: ocfo report" element on "Ocfo/Export/Certificate" page
    #Click on export applicant.
    And the user clicks on "left nav: export applications" element on "Ocfo/Export/Certificate" page
    #verify page.
    And the user can see "Submitted Export Applications" text in "page verify: submitted export applications" field on "Ocfo/Export/Certificate" page
    #click on the date range radio button.
    And the user clicks on "radio button: date range" element on "Ocfo/Export/Certificate" page
    #Enter date range from and to.
    And the user enters "01/02/2018" into "date range: from text box" on "Ocfo/Export/Certificate" page
    And the user enters "07/26/2018" into "date range: to text box" on "Ocfo/Export/Certificate" page
    #Click on the search button.
    And the user clicks on "date range: search button" element on "Ocfo/Export/Certificate" page
    #Copy one of the application number.
    And the user remembers the value of "search result: application number" field into "application_number" on "Ocfo/Export/Certificate" page
    And the user enters current value of "application_number" into "application number text box" on "Ocfo/Export/Certificate" page
    #Click on the search button.
    And the user clicks on "date range: search button" element on "Ocfo/Export/Certificate" page
    #click on the check box in the first column of the return application.
    And the user waits for 3 seconds
    And the user clicks on "radio button: check box" element on "Ocfo/Export/Certificate" page
    #Verify data.
    And the user must see "FY-2018" text in "filter result: year" field on "Ocfo/Export/Certificate" page
    #Click on the pulled radio button.
    And the user clicks on "radio button: pulled" element on "Ocfo/Export/Certificate" page
    #Verify data.
    And the user must see "FY-2018" text in "filter result: year" field on "Ocfo/Export/Certificate" page
    #Sign out.
    And the user sign out and close the browser


    Examples:
      | OCFO User      | Role |
      | Alqassab, Lori | OCFO |

  @Tc_88a.1

  Scenario Outline: 88a.1 Search parameters, report title, and menu name for report of export application for OCFO.
    #Login to the system.
    Given the user navigates to /Login.aspx on browser
    And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
    #Select user name.
    And the user selects "<OCFO User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    #Select Export Librarian role.
    And the user selects "<Role>" from "role drop down" drop down on "Exports/Librarian" page
    #Click on OCFO Report.
    And the user clicks on "left nav: ocfo report" element on "Ocfo/Export/Certificate" page
    #Click on export applicant.
    And the user clicks on "left nav: export applications" element on "Ocfo/Export/Certificate" page
    #verify page.
    And the user can see "Submitted Export Applications" text in "page verify: submitted export applications" field on "Ocfo/Export/Certificate" page
    #click on the date range radio button.
    And the user clicks on "radio button: date range" element on "Ocfo/Export/Certificate" page
    #Enter date range from and to.
    And the user enters "01/02/2018" into "date range: from text box" on "Ocfo/Export/Certificate" page
    And the user enters "07/26/2018" into "date range: to text box" on "Ocfo/Export/Certificate" page
    #Click on the search button.
    And the user clicks on "date range: search button" element on "Ocfo/Export/Certificate" page
    #Copy one of the application number.
    And the user remembers the value of "search result: application number" field into "application_number" on "Ocfo/Export/Certificate" page
    And the user enters current value of "application_number" into "application number text box" on "Ocfo/Export/Certificate" page
    #Click on the search button.
    And the user clicks on "date range: search button" element on "Ocfo/Export/Certificate" page
    #click on the check box in the first column of the return application.
    And the user waits for 3 seconds
    And the user clicks on "radio button: check box" element on "Ocfo/Export/Certificate" page
    #Verify data.
    And the user must see "FY-2018" text in "filter result: year" field on "Ocfo/Export/Certificate" page
    #Click on the pulled radio button.
    And the user clicks on "radio button: pulled" element on "Ocfo/Export/Certificate" page
    #Verify data.
    And the user must see "FY-2018" text in "filter result: year" field on "Ocfo/Export/Certificate" page
    #Sign out.
    And the user sign out and close the browser

    Examples:
      | OCFO User      | Role |
      | Alqassab, Lori | OCFO |

