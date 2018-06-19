Feature:  Tests the Anet module.

  @Anet_CDA
  Scenario: Test the ability of Anet Application
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Ryan cast" into "Full Name" on "Anetdoa/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anetdoa/displayloginaction.do" page
    And the user can see text "Ryan cast"
    And the user selects "P: SUPERUSER" from "Role" drop down on "Anetdoa/displayloginaction.do" page
    And the user clicks on "Delegation of Authority" element on "Anetdoa/displayloginaction.do" page
   And the user enters "Natalie" into "First name" on "Anetdoa/displayloginaction.do" page
     And the user enters "Martin" into "Last Name" on "Anetdoa/displayloginaction.do" page
    And the user clicks on "Name Search" element on "Anetdoa/displayloginaction.do" page
    Then the user clicks on "Select Radio Button" element on "Anetdoa/displayloginaction.do" page
    And the user selects "OIEA" from "program area" drop down on "Anetdoa/displayloginaction.do" page
    And the user selects "Primary" from "Role type" drop down on "Anetdoa/displayloginaction.do" page
#    And the user clicks on "Role Name" element on anetdoa/displayloginaction.do" page
    And the user selects "Assistant Administrator" from "role name" drop down on "Anetdoa/displayloginaction.do" page
    And the user clicks the link with text "Submit"
    And the user can see "Assistant Administrator" text in "role table" field on "Anetdoa/displayloginaction.do" page


