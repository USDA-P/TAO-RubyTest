Feature:  Tests the user management workflow.

  @Anet_CUM
  Scenario: Test the ability of Anet Application
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "RYAN CAST" into "Full Name" on "Anet Login" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anet Login" page
    And the user can see text "RYAN CAST"
    And the user selects "P: User Super Admin" from "role" drop down on "User Management" page
    And the user clicks on "Manage User" element on "User Management" page
    And the user enters "Lucy" into "First Name" on "User Management" page
    And the user enters "Anthenill" into "Last Name" on "User Management" page
    And the user clicks on "submit button" element on "User Management" page
    And the user clicks on "Name" element on "User Management" page
    And the user clicks on "Permissions tab" element on "User Management" page
    And the user checks the "Email ID" and enters the email on "User Management"
    And the user waits for 3 seconds
    And the user clicks on "Submit" element on "User Management" page
    And the user can see text "Please select User Role"
    And the user selects "User Admin" from "User Role" drop down on "User Management" page
    And the user clicks on "Submit" element on "User Management" page
    And the user can see "User Admin" text in "current role" table on "User Management" page
    And the user can see text "Role added successfully."


  @Anet_AUM
  Scenario: Test the ability of add user in User Management
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "RYAN CAST" into "Full Name" on "Anet Login" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anet Login" page
    And the user can see text "RYAN CAST"
    And the user selects "P: User Super Admin" from "role" drop down on "User Management" page
    And the user clicks on "Manage User" element on "User Management" page
    And the user enters "Lucy" into "First Name" on "User Management" page
    And the user enters "Anthenill" into "Last Name" on "User Management" page
    And the user clicks on "submit button" element on "User Management" page
    And the user clicks on "Name" element on "User Management" page
    And the user clicks on "Permissions tab" element on "User Management" page
    And the user checks the "Email ID" and enters the email on "User Management"
    And the user waits for 3 seconds
    And the user clicks on "Submit" element on "User Management" page
    And the user can see text "Please select User Role"
    And the user selects "User Admin" from "User Role" drop down on "User Management" page
    And the user clicks on "Submit" element on "User Management" page
    And the user can see "User Admin" text in "current role" table on "User Management" page
    And the user can see text "Role added successfully."
    And the user selects "OIEA" from "gram Area" drop down on "User Management" page
    And the user enters "78945" into "Eauth id" on "User Management" page
    And the user enters "Test123" into "NT Login Id" on "User Management" page
    And the user selects "2. EARO (OFO)" from "user level" drop down on "User Management" page
    And the user enters "test@test.com" into "Email ID" on "User Management" page
    And the user selects "ABRAMOWICZ, CHRISTINA" from "supervisor" drop down on "User Management" page
    And the user selects "Southwest" from "region code" drop down on "User Management" page
    And the user selects "San Antonio, TX (211)" from "assignment code" drop down on "User Management" page
    And the user clicks on "submit button" element on "User Management" page
    And the user can see text "User details saved successfully."




  @Anet_CPRA
  Scenario: Test the ability of add user in User Management
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "RYAN CAST" into "Full Name" on "Anet Login" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anet Login" page
    And the user can see text "RYAN CAST"
    And the user selects "P: User Super Admin" from "role" drop down on "User Management" page
    And the user clicks on "Manage User" element on "User Management" page
    And the user enters "Lucy" into "First Name" on "User Management" page
    And the user enters "Anthenill" into "Last Name" on "User Management" page
    And the user clicks on "submit button" element on "User Management" page
    And the user clicks on "Name" element on "User Management" page
    And the user checks the value of "NT Login ID" of "Email" and enters the value on "User Management" page
    And the user checks the value of "Email ID" of "Email" and enters the value on "User Management" page
    And the user checks the value of "eauth id" of "eAuth ID" and enters the value on "User Management" page
    And the user checks the value of "NT Login ID" of "NT Login ID" and enters the value on "User Management" page
    And the user selects "OFO" from "program area" drop down on "User Management" page
    And the user selects "54. MIS SUPV (Misconduct)" from "User Level" drop down on "User management" page
    And the user waits for 3 seconds
    And the user clicks on "Submit" element on "User Management" page
    And the user can see text "User details saved successfully."
