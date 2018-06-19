@Imports_Regression
Feature: Phis Feature

  @Imports

Scenario Outline: 9.0 Imports sample feature test.
  #Login to the system.
  Given the user navigates to /Login.aspx on browser
  And the user click "Show all users option" radio button on "FSISDashBoard/Shared/Login" page
  #Select user name.
  And the user selects "<CSI User>" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page

  #Sign out.
  And the user sign out and close the browser


  Examples:
    | CSI User   |
    | Lee, Aaron |