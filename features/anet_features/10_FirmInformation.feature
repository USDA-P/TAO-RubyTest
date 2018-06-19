Feature:  Tests the Firm Information workflow.

  @Anet_CFR
  Scenario: Test the ability of Firm Information Workflow

    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Ryan Cast" into "Full Name" on "Anet Login" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anet Login" page
    And the user can see text "Ryan Cast"
    And the user waits for 2 seconds
    And the user selects "P: ELDDRMGR 600" from "Role" drop down on "Firm Information" page
    Then the user clicks on "New Firm Information" element on "Firm Information" page
    And the user enters "Automation test" into "Firm Name" on "Firm Information" page
    And the user enters "Test" into "Address1" on "Firm Information" page
    And the user enters "testing" into "City" on "Firm Information" page
    And the user selects "Alabama" from "State" drop down on "Firm Information" page
    And the user enters "12345" into "Zip Code" on "Firm Information" page
    And the user selects "Autauga" from "County" drop down on "Firm Information" page
    And the user selects "Processor" from "Primary Buiseness Type" drop down on "Firm Information" page
    And the user clicks on "Owner Info" element on "Firm Information" page
    And the user enters "Test Owner" into "Owner Name" on "Firm Information" page
    And the user enters "1234569870" into "Owner Phone" on "Firm Information" page
    And the user clicks on "Managing Officials Info tab" element on "Firm Information" page
    And the user enters "Test Managing official name" into "MAnaging Official Name" on "Firm Information" page
    And the user enters "MD" into "Managing official Title" on "Firm Information" page
    And the user enters "7412589632" into "Managing official Phone" on "Firm Information" page
    And the user enters "test@gmail.com" into "Managing official Email" on "Firm Information" page
    And the user clicks on "Save Managing Officials Info" element on "Firm Information" page
    Then the user clicks on "Organization Structure tab" element on "Firm Information" page
    And the user enters "Test Organization" into "Organization Name" on "Firm Information" page
    And the user enters "Test Official name" into "Official Name" on "Firm Information" page
    And the user selects "Corporation" from "Organization type" drop down on "Firm Information" page
#    And the user clicks on "save organization type" element on "Firm Information" page
    Then the user clicks on "Product Info" element on "Firm Information" page
    And the user check "Poultry" checkbox on "Firm Information" page
    And the user check "Imported" checkbox on "Firm Information" page
    And the user selects "0-50,000" from "volume of amenable products" drop down on "Firm Information" page
#    And the user clicks on "Country" element on "Firm Information" page
    And the user selects "Albania" from "Country" drop down on "Firm Information" page
    And the user waits for 3 seconds
    And the user clicks on "Save Product Info" element on "Firm Information" page
    Then the user clicks on "Additional Info" element on "Firm Information" page
#  And the user enters "<string>" into "<string>" text area box on "<string>" page
    And the user enters "Automation test" into "regulatory agency contact information" text area box on "Firm Information" page
    And the user enters "Automation Pest" into "Pest Control Provider Information" text area box on "Firm Information" page
    And the user enters "Automation Comments" into "Additional Comments" text area box on "Firm Information" page
    Then the user clicks on "Registration Info" element on "Firm Information" page
    And the user enters "Test name" into "Registrant Name" on "Firm Information" page
    And the user enters "Todays Date" into "Registration Date" on "Firm Information" page
    And the user selects "Submit" from "Action" drop down on "Firm Information" page
    And the user clicks on "Go" element on "Firm Information" page
    And the user clicks on "General Info" element on "Firm Information" page
    And the user remembers the current value of "Firm Id" field on "Firm Information" page
    And the user waits for 3 seconds
    And the user can see text "The record has been successfully submitted to the system."
    And the user selects "Initiate Surveillance" from "Action" drop down on "Firm Information" page
    And the user clicks on "Go" element on "Firm Information" page
    And the user can see text "Surveillance"
    And the user selects "Consumer Complaint" from "Reason" drop down on "Firm Information" page
    And the user selects "Submit" from "Action" drop down on "Firm Information" page
    And the user clicks on "Go" element on "Firm Information" page
    And the user can see text "The record has been successfully submitted to the system."
    And the user clicks on "View Firm Information" element on "Firm Information" page
    And the user enters current value of "Firm Id" into "Firm Identifier" on "Firm Information" page
    And the user clicks on "Submit" element on "Firm Information" page
    And the user clicks on "Firm Link" element on "Firm Information" page
    And the user selects "Initiate Product Control" from "Action" drop down on "Firm Information" page
    And the user clicks on "Go" element on "Firm Information" page
    And the user can see text "Product Control"
    And the user clicks on "Notice of Detention" element on "product control" page
    And the user enters "Todays Date" into "date detained" on "product control" page
    And the user enters "500" into "Product weight" on "Product control" page
    And the user enters "MDA1" into "Detention code" on "product control" page
    And the user enters "Automation test" into "Description" on "product control" page
    And the user clicks on "save notice of detention" element on "product control" page
    And the user clicks on "notice of termination of detention" element on "product control" page
    And the user enters "50" into "product weight ntd" on "product control" page
    And the user clicks on "save notice of termination of detention" element on "product control" page
    And the user clicks on "personal use notice" element on "product control" page
    And the user enters "Todays Date" into "date product released" on "product control" page
    And the user enters "50" into "product weight pun" on "product control" page
    And the user enters "Automation test" into "owner name pun" on "product control" page
    And the user clicks on "save personal use" element on "product control" page
    Then the user clicks on "voluntay destruction of human food notice" element on "product control" page
    And the user enters "50" into "product weight vdhfn" on "product control" page
    And the user enters "Automation test" into "owner name vdhfn" on "product control" page
    And the user clicks on "save voluntay destruction of human food notice" element on "product control" page
    And the user selects "Submit" from "Action" drop down on "Firm Information" page
    And the user can see text "The record has been successfully submitted to the system."
    And the user clicks on "View Firm Information" element on "Firm Information" page
    And the user enters current value of "Firm Id" into "Firm Identifier" on "Firm Information" page
    And the user clicks on "Submit" element on "Firm Information" page
    And the user clicks on "Firm Link" element on "Firm Information" page
    And the user selects "Initiate Investigation" from "Action" drop down on "Firm Information" page
    And the user clicks on "Go" element on "Firm Information" page
    And the user selects "Criminal" from "primary type" drop down on "Investigation" page
    And the user selects "Adulterated - Food Safety" from "primary vtype" drop down on "Investigation" page
    And the user clicks on "save genearl info" element on "Investigation" page
    And the user selects "Yes" from "food safety related" drop down on "Investigation" page
    And the user selects "Submit" from "Action" drop down on "Firm Information" page
    And the user clicks on "Go" element on "Firm Information" page
    And the user can see text "The record has been successfully submitted to the system."