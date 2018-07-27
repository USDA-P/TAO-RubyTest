@9060_APPLICATIONS1
Feature:9060-6 application

  @TC_23050
  Scenario: 23050.1	ENTER ESTABLISHMENT PROFILE DATA
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks button with text "Next" on "ExportApplication.Web/9060application" page
    And the user enters "Kingston Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "555 Test Ave" into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Sterling" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user enters "34587" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Alisca Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "99 Green ln" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Martinsville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the meat, meat food product or meat byproduct specified hereon is from animals that received both antemortem and postmortem inspection and were found sound and healthy and that it has been inspected and passed as provided by law and regulations of the Department and is sound and wholesome." text in "certification statement for meat" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the poultry, poultry products or poultry food products specified above came from birds that were officially given an antemortem and postmortem inspection and passed in accordance with applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for poultry" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the Siluriformes fish and fish products specified on this form have been inspected and passed in accordance with the applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for siluriformes fish" field on "ExportApplication.Web/9060application" page
    And the user can see "None of the above" text in "certification statement for none the above" field on "ExportApplication.Web/9060application" page
    # TC-23050.4 ADD PRODUCT IN PRODUCT SUMMARY PAGE
    And the user clicks the link with text "Add Product"
    And the user enters "Seafoods" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Siluriformes Fish" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "150000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "1500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page
    And the user enters "150000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Submit Application" button on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser

    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks button with text "Next" on "ExportApplication.Web/9060application" page
    #  ENTER IMPORTER AND EXPORTER IN CREATE 9060 APPLICATION PROCESS
    And the user enters "Johnsons Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "345 Test Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user clicks the link with text "Add Product"
    And the user enters "chunky beef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "chickenjoe" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Raw - Intact" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Chicken" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: yes" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "25000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "2500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Package" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page
    And the user enters "80000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the meat, meat food product or meat byproduct specified hereon is from animals that received both antemortem and postmortem inspection and were found sound and healthy and that it has been inspected and passed as provided by law and regulations of the Department and is sound and wholesome." text in "certification statement for meat" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the poultry, poultry products or poultry food products specified above came from birds that were officially given an antemortem and postmortem inspection and passed in accordance with applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for poultry" field on "ExportApplication.Web/9060application" page
    And the user can see "None of the above" text in "certification statement for none the above" field on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "poultry: i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Submit Application" button on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser

  @TC_23049
  Scenario: 23049.1	LOGIN AN EXPORT APPLICANT
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Beebe" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks button with text "Next" on "ExportApplication.Web/9060application" page
    And the user enters "Celtic Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "123 small Ave" into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Petersburg" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Maine" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user enters "22233" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M5401" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Benisco Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "81 Maxson Ave." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Canton" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the meat, meat food product or meat byproduct specified hereon is from animals that received both antemortem and postmortem inspection and were found sound and healthy and that it has been inspected and passed as provided by law and regulations of the Department and is sound and wholesome." text in "certification statement for meat" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the poultry, poultry products or poultry food products specified above came from birds that were officially given an antemortem and postmortem inspection and passed in accordance with applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for poultry" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the Siluriformes fish and fish products specified on this form have been inspected and passed in accordance with the applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for siluriformes fish" field on "ExportApplication.Web/9060application" page
    And the user can see "None of the above" text in "certification statement for none the above" field on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Poulchicks" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Raw - Intact" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Chicken" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: yes" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "5000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Package" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "5401" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M5401" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the meat, meat food product or meat byproduct specified hereon is from animals that received both antemortem and postmortem inspection and were found sound and healthy and that it has been inspected and passed as provided by law and regulations of the Department and is sound and wholesome." text in "certification statement for meat" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the poultry, poultry products or poultry food products specified above came from birds that were officially given an antemortem and postmortem inspection and passed in accordance with applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for poultry" field on "ExportApplication.Web/9060application" page
    And the user can see "None of the above" text in "certification statement for none the above" field on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user sign out and close the browser

  @TC-26418
  Scenario: 26418.1	LOGIN AN EXPORT APPLICANT AND VERIFY IF ONLY MY ESTABLISHMENT TAB IS PRESENT
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Carpenter" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user must see the "My Establishments 1" link on "ExportApplication.Web/9060application" on page
    And the user sign out and close the browser

  @TC-26451
  Scenario: 26451.1	LOGIN AN EXPORT APPLICANT AND DELETE AN APPLICATION AND VERIFY THE CONFIRMATION MESSAGE
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
    And the user enters "Kingston Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "555 Test Ave" into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Sterling" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "34587" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Alisca Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "99 Green ln" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Martinsville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Seafoods" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Siluriformes Fish" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "is the product frozen/shelf-stable: no" element on "ExportApplication.Web/9060application" page
    And the user enters "150000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "1500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page
    And the user enters "150000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "next" element on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Submit Application" button on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters current value of "applicant id" into "Application Number" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter icon application number" element on "ExportApplication.Web/9060application" page
    And the user clicks on "contains filter link" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    Then the user clicks on "Delete icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user sign out and close the browser

  @TC-26545
  Scenario: 26545.1	ADDING NEW FILES ON 9060 6 APPLICATION SUBMIT PAGE
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Flores" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks button with text "Next" on "ExportApplication.Web/9060application" page
    And the user enters "Louis Co." into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "30 Crestol rd." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Bethesda" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Florida" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user enters "68794" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M6066" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Malvin Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "862 Lakewood St." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Sariki" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "GAMBIA" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "GroundBeef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Thermally Processed/Commercially Sterile" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Horse" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "3000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "1500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Bucket" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "6066" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M6066" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page
    And the user enters "3000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add New File"
    And the user enters "file:///C:/MyFrameWork/features/support/Documents/sample_attachment1.pdf" into "browse 1" on "ExportApplication.Web/9060application" page
    And the user waits for 35 seconds
    And the user enters "Automation Test Doc" into "document title 1" on "ExportApplication.Web/9060application" page
    And the user clicks the "Upload 1" button on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "add new file 2" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user enters "file:///C:/MyFrameWork/features/support/Documents/sample_attachment2.pdf" into "browse 2" on "ExportApplication.Web/9060application" page
    And the user waits for 35 seconds
    And the user enters "Automation Test Doc" into "document title 2" on "ExportApplication.Web/9060application" page
    And the user clicks the "Upload 2" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Submit Application" button on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Flores" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters current value of "applicant id" into "Application Number" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter icon application number" element on "ExportApplication.Web/9060application" page
    And the user clicks on "contains filter link" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    Then the user clicks on "Delete icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user sign out and close the browser

  @TC-25409
  Scenario: TC-225409.1 LOCATE A 9060 APPLICATION IN ; SUBMIT, UNSUBMITTED, REVIEWED BY CSI, PENDING UPLOAD AND APPROVED STATUS MAKE A COPY AND RE-SUBMIT THEM
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Mccoy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "U.S. Military Installation" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks button with text "Next" on "ExportApplication.Web/9060application" page
    And the user enters "Burney Co." into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "106 Hampton rd." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Norfolksville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "California" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user enters "55119" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M8271" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Malvin Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "23 Concord St." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Anderabat" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "AFGHANISTAN" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Conbeef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Fully Cooked - Not Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Pork" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: yes" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "6000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "3000" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Foodtainer" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "8271" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M8271" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page
    And the user enters "6000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Submit Application" button on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Mccoy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks on "copy" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user waits for 5 seconds
    And the user can see text "Unsubmitted"
    And the user clicks on "Edit 1" element on "ExportApplication.Web/9060application" page
    And the user enters "Julio Co." into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "122 Mass Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Mayfiled" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Kentucky" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "56482" into "postal code" on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Previous" button on "ExportApplication.Web/9060application" page
    And the user can see "Julio Co." text in "company name" field on "ExportApplication.Web/9060application" page
    And the user can see "122 Mass Ave." text in "Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user can see "Mayfiled" text in "City" field on "ExportApplication.Web/9060application" page
    And the user can see "56482" text in "postal code" field on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "Malvin Ent." text in "import:company name" field on "ExportApplication.Web/9060application" page
    And the user can see "23 Concord St." text in "import:Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user enters "Paulino Meat Ent." into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "28910 cross bridge" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Afghaniwest" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "AFGHANISTAN" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Previous" button on "ExportApplication.Web/9060application" page
    And the user can see "Paulino Meat Ent." text in "import:company name" field on "ExportApplication.Web/9060application" page
    And the user can see "28910 cross bridge" text in "import:Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user can see "Afghaniwest" text in "import:City" field on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "6000" text in "Total Net Weight" field on "ExportApplication.Web/9060application" page
    And the user enters "5000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Mccoy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks on "Edit 1" element on "ExportApplication.Web/9060application" page
    And the user enters "Maxson and son." into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "18 Enterprise rd." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Arlington" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New Jersey" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "17896" into "postal code" on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Previous" button on "ExportApplication.Web/9060application" page
    And the user can see "Maxson and son." text in "company name" field on "ExportApplication.Web/9060application" page
    And the user can see "618 Enterprise rd" text in "Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user can see "Arlington" text in "City" field on "ExportApplication.Web/9060application" page
    And the user can see "17896" text in "postal code" field on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "Malvin Ent." text in "import:company name" field on "ExportApplication.Web/9060application" page
    And the user can see "23 Concord St." text in "import:Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user enters "Sergio Co." into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "706 Olympic Rd." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Minna" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "AFGHANISTAN" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Previous" button on "ExportApplication.Web/9060application" page
    And the user can see "Sergio Co." text in "import:company name" field on "ExportApplication.Web/9060application" page
    And the user can see "706 Olympic Rd." text in "import:Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user can see "Minna" text in "import:City" field on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "5000" text in "Total Net Weight" field on "ExportApplication.Web/9060application" page
    And the user enters "7000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    #    Get a 9060 application that has been reviewed by company CSI and make a copy and verify the fields are editable.
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Mccoy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user can see text "Reviewed by CSI"
    And the user clicks on "copy 1" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user can see text "Unsubmitted"
    And the user clicks on "Edit 1" element on "ExportApplication.Web/9060application" page
    And the user enters "Jordan Ent." into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "1008 Industry ln." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Brighton" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Connecticut" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "09658" into "postal code" on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Previous" button on "ExportApplication.Web/9060application" page
    And the user can see "Jordan Ent." text in "company name" field on "ExportApplication.Web/9060application" page
    And the user can see "1008 Industry ln." text in "Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user can see "Brighton" text in "City" field on "ExportApplication.Web/9060application" page
    And the user can see "09658" text in "postal code" field on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "Malvin Ent." text in "import:company name" field on "ExportApplication.Web/9060application" page
    And the user can see "23 Concord St." text in "import:Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user enters "Derico Ltd" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "2365 Valley rd." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Umtity" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "BURUNDI" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Previous" button on "ExportApplication.Web/9060application" page
    And the user can see "Derico Ltd" text in "import:company name" field on "ExportApplication.Web/9060application" page
    And the user can see "2365 Valley rd." text in "import:Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user can see "Umtity" text in "import:City" field on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "6000" text in "Total Net Weight" field on "ExportApplication.Web/9060application" page
    And the user enters "4000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Mccoy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user can see text "Approved"
    And the user clicks on "copy 1" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user can see text "Unsubmitted"
    And the user clicks on "edit unsubmited" element on "ExportApplication.Web/9060application" page
    And the user enters "Maccelo Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "788 Cohannet st." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Burlington" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Louisiana" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "99001" into "postal code" on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Previous" button on "ExportApplication.Web/9060application" page
    And the user can see "Maccelo Ltd" text in "company name" field on "ExportApplication.Web/9060application" page
    And the user can see "788 Cohannet st." text in "Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user can see "Burlington" text in "City" field on "ExportApplication.Web/9060application" page
    And the user can see "99001" text in "postal code" field on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "Malvin Ent." text in "import:company name" field on "ExportApplication.Web/9060application" page
    And the user can see "23 Concord St." text in "import:Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user enters "Ronaldo Ltd." into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "79873 Greensboro rd." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Piket" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "COOK ISLANDS" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Previous" button on "ExportApplication.Web/9060application" page
    And the user can see "Ronaldo Ltd." text in "import:company name" field on "ExportApplication.Web/9060application" page
    And the user can see "79873 Greensboro rd." text in "import:Address Line 1" field on "ExportApplication.Web/9060application" page
    And the user can see "Piket" text in "import:City" field on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "5000" text in "Total Net Weight" field on "ExportApplication.Web/9060application" page
    And the user enters "2500" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser



  @TC-21935
  Scenario: 21935.1	LOGIN TO 9060 APPLICATION AND SUBMIT AN APPLICATION ON BEHALF OF AN FSIS PROXY
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Riden, Mary" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "FSIS Proxy" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    #  TC-21935.2 VERIFY IF ONLY MY ESTABLISHMENT TAB IS PRESENT
    And the user clicks the link with text "Create Application"
    And the user must see "Search Establishments" text in "search establishments" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Search Establishments" element on "ExportApplication.Web/9060application" page
    And the user enters "10828" into "establishment search number" on "ExportApplication.Web/9060application" page
    And the user clicks on "search button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment home icon 1" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
    And the user enters "Applicant Afzal" into "export applicant name" on "ExportApplication.Web/9060application" page
    And the user enters "Nde Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "737 Nkumkum St." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Bangulap" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "District Of Columbia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "19681" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jamais Ent." into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "44 Bastos Rd" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Bertua" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "BURUNDI" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Bestmbappy" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "is the maturity less than 30 months: no" element on "ExportApplication.Web/9060application" page
    And the user clicks on "is the product frozen/shelf-stable: no" element on "ExportApplication.Web/9060application" page
    And the user enters "2500" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "2500" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Riden, Mary" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "FSIS Proxy" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks on "pdf icon" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Riden, Mary" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "FSIS Proxy" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters current value of "applicant id" into "Application Number" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter icon application number" element on "ExportApplication.Web/9060application" page
    And the user clicks on "contains filter link" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    Then the user clicks on "Delete icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user sign out and close the browser



  @Submit_New_9060_APPLICATION
  Scenario: 62.1 Submit a 9060-6 New Application for Export Certificate
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks button with text "Next" on "ExportApplication.Web/9060application" page
    And the user enters "Kingston Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "555 Test Ave" into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Sterling" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user enters "34587" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Alisca Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "99 Green ln" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Martinsville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the meat, meat food product or meat byproduct specified hereon is from animals that received both antemortem and postmortem inspection and were found sound and healthy and that it has been inspected and passed as provided by law and regulations of the Department and is sound and wholesome." text in "certification statement for meat" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the poultry, poultry products or poultry food products specified above came from birds that were officially given an antemortem and postmortem inspection and passed in accordance with applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for poultry" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the Siluriformes fish and fish products specified on this form have been inspected and passed in accordance with the applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for siluriformes fish" field on "ExportApplication.Web/9060application" page
    And the user can see "None of the above" text in "certification statement for none the above" field on "ExportApplication.Web/9060application" page
    # TC-23050.4 ADD PRODUCT IN PRODUCT SUMMARY PAGE
    And the user clicks the link with text "Add Product"
    And the user enters "Seafoods" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Siluriformes Fish" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "150000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "1500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page
    And the user enters "150000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Submit Application" button on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters current value of "applicant id" into "Application Number" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter icon application number" element on "ExportApplication.Web/9060application" page
    And the user clicks on "contains filter link" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    Then the user clicks on "Delete icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user sign out and close the browser


  @Save_9060_APPLICATION_Draft
  Scenario: 62.2 Save a Draft 9060-6 Application for Export Certificate
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Kingston Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "555 Test Ave" into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Sterling" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "34587" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Alisca Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "99 Green ln" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Martinsville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "AFGHANISTAN" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user clicks on "show all users option" element on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Kingston Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "555 Test Ave" into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Sterling" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "34587" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Alisca Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "99 Green ln" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Martinsville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "AFGHANISTAN" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user clicks on "show all users option" element on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters "Unsubmitted" into "application status filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    Then the user clicks on "Delete icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user sign out and close the browser

  @Edit_9060APPLICATION_Draft
  Scenario: 62.4 Edit a Draft 9060-6 Application for Export Certificate
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks button with text "Next" on "ExportApplication.Web/9060application" page
    And the user enters "Kingston Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "555 Test Ave" into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Sterling" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user enters "34587" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Alisca Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "99 Green ln" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Martinsville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the meat, meat food product or meat byproduct specified hereon is from animals that received both antemortem and postmortem inspection and were found sound and healthy and that it has been inspected and passed as provided by law and regulations of the Department and is sound and wholesome." text in "certification statement for meat" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the poultry, poultry products or poultry food products specified above came from birds that were officially given an antemortem and postmortem inspection and passed in accordance with applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for poultry" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the Siluriformes fish and fish products specified on this form have been inspected and passed in accordance with the applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for siluriformes fish" field on "ExportApplication.Web/9060application" page
    And the user can see "None of the above" text in "certification statement for none the above" field on "ExportApplication.Web/9060application" page
    # TC-23050.4 ADD PRODUCT IN PRODUCT SUMMARY PAGE
    And the user clicks the link with text "Add Product"
    And the user enters "Seafoods" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Siluriformes Fish" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "150000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "1500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page
    And the user enters "150000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Submit Application" button on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser

    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters current value of "applicant id" into "Application Number" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter icon application number" element on "ExportApplication.Web/9060application" page
    And the user clicks the "application number filter button" button on "ExportApplication.Web/9060application" page
    And the user clicks on "number filter dropdown contains" element on "ExportApplication.Web/9060application" page
    And the user waits for 3 seconds
    And the user clicks on "application edit icon" element on "ExportApplication.Web/9060application" page
    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
    And the user enters "Monacco Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "25 Rally Rd." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Brighten" into "import:City" on "ExportApplication.Web/9060application" page
    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user enters current value of "applicant id" into "Application Number" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter icon application number" element on "ExportApplication.Web/9060application" page
    And the user clicks on "application number filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "number filter dropdown contains" element on "ExportApplication.Web/9060application" page
    And the user waits for 3 seconds
    And the user clicks on "Edit 1" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters current value of "applicant id" into "Application Number" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter icon application number" element on "ExportApplication.Web/9060application" page
    And the user clicks on "contains filter link" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    Then the user clicks on "Delete icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user sign out and close the browser


  @Delete_9060APPLICATION_Draft
  Scenario: 62.3 Delete a Draft 9060-6 Application for Export Certificate
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters "Unsubmitted" into "application status filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    Then the user clicks on "Delete icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user sign out and close the browser


  @CSI_Review_9060_APPLICATION
  Scenario: 62.5 COMPLETE A 9060-6 REVIEW TASK FOR CSI APPROVAL
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Johnsons Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "345 Test Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "chunky beef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-03" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 4 seconds
    And the user enters current value of "applicant id" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on add link for directed task-"Current Value of#applicant id" on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user waits for 10 seconds
    And the user enters "1" on "5" in Assign Task window
    And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user switch back to main window
    And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Kandy Evans" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "select hill side turky farm" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Day Button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user right-click "Export Task CSI" task with current value of "applicant id" and selects "Document" on Task Calendar page
    And the user waits for 30 seconds
    And the user switch to iframe
    And the user waits for 5 seconds
    And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
    And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 30 seconds
    And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
    And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user sign out and close the browser

  @Review_PHV_Approval
  Scenario: COMPLETE A 9060-6 REVIEW TASK FOR PHV APPROVAL
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Johnsons Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "345 Test Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "chunky beef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
     And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
     And the user selects "Dua, Suresh" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
     And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
     And the user selects "Public Health Veterinarian" from "role" drop down on "FSISDashBoard/Default" page
     And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
     And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-01" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
     And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 4 seconds
     And the user enters current value of "applicant id" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 2 seconds
     And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
    And the user clicks on add link for directed task-"Current Value of#applicant id" on "TaskCalendar/EstablishmentTaskList" page
     And the user switch to iframe
     And the user waits for 25 seconds
     And the user enters "1" on "5" in Assign Task window
     And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user switch back to main window
     And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks on "Dua Suresh" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks on "hill side turkey farm" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks the link with text "today"
     And the user waits for 15 seconds
     And the user right-click "Export Task CSI" task with current value of "applicant id" and selects "Document" on Task Calendar page
     And the user waits for 10 seconds
     And the user switch to iframe
     And the user waits for 10 seconds
     And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 10 seconds
     And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 10 seconds
     And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 15 seconds
     And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
     And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "upload button" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 10 seconds
     And the user clicks the "yes button action required" button on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 30 seconds
     And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
     And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
     And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 10 seconds
     And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
     And the user switch back to main window
     And the user sign out and close the browser


  @Test_Print_Certificate
  Scenario: 62.7 Print a 9060-5 Export Certificate
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters "Approved" into "application status filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user waits for 15 seconds
    And the user clicks on "adobe image icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 15 seconds
    And the user sign out and close the browser

  @Test_Rescind_9060_APPLICATION
  Scenario: 62.8 Rescind the Approval of a 9060-6 Application for Export Certificate
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Johnsons Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "345 Test Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "chunky beef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-03" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 4 seconds
    And the user enters current value of "applicant id" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on add link for directed task-"Current Value of#applicant id" on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user waits for 10 seconds
    And the user enters "1" on "5" in Assign Task window
    And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user switch back to main window
    And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Kandy Evans" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "hill side turkey farm" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Day Button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user right-click "Export Task CSI" task with current value of "applicant id" and selects "Document" on Task Calendar page
    And the user waits for 10 seconds
    And the user switch to iframe
    And the user waits for 5 seconds
    And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
    And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "upload button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks the "yes button action required" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 30 seconds
    And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
    And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user sign out and close the browser
    #========>   the CSI rescinds the application    =============>
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-03" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 4 seconds
    And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Kandy Evans" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "hill side turkey farm" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 25 seconds
    And the user clicks the link with text "today"
    And the user waits for 10 seconds
    And the user right-click "Export Task CSI" task with current value of "applicant id" and selects "Document" on Task Calendar page
    And the user switch to iframe
    And the user waits for 15 seconds
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 35 seconds
    And the user clicks the link with text "here"
    And the user selects "Correcting a factual error" from "Justification reason" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user waits for 2 seconds
    And the user press downkey and enter
    And the user clicks on "reason to edit text area" element on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "Testing CWC" into "Reason to Edit Inspection Result" text area box on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user clicks on "unlock button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Rescind" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Marking of tanks cars with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks the link with text " Export Certificate"
    And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 30 seconds
    And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
    And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user sign out and close the browser

   @Reject_9060_APPLICATION
   Scenario: 62.9 Reject a 9060-6 Application for Export Certificate
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Johnsons Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "345 Test Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "chunky beef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    # ==========>  CSI logs in and rejects the application     ==========>
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-03" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 4 seconds
    And the user enters current value of "applicant id" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on add link for directed task-"Current Value of#applicant id" on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user waits for 10 seconds
    And the user enters "1" on "5" in Assign Task window
    And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user switch back to main window
    And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Kandy Evans" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "select hill side turky farm" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Day Button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user right-click "Export Task CSI" task with current value of "applicant id" and selects "Document" on Task Calendar page
    And the user waits for 30 seconds
    And the user switch to iframe
    And the user waits for 5 seconds
    And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user enters "Testing CWC" into "approval reason" text area box on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Reject button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user enters "Testing CWC" into "approval reason" text area box on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "reject button" button on "TaskCalendar/EstablishmentTaskList" page
    And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user sign out and close the browser

  @Replace_9060
  Scenario: 62.10 Replace Approved 9060-5 Certificate for Export
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Johnsons Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "345 Test Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "chunky beef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 3 seconds
    And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-03" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 4 seconds
    And the user enters current value of "applicant id" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on add link for directed task-"Current Value of#applicant id" on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user waits for 10 seconds
    And the user enters "1" on "5" in Assign Task window
    And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user switch back to main window
    And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on "Kandy Evans" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "select hill side turky farm" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Day Button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user right-click "Export Task CSI" task with current value of "applicant id" and selects "Document" on Task Calendar page
    And the user waits for 10 seconds
    And the user switch to iframe
    And the user waits for 10 seconds
    And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
    And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "upload button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks the "yes button action required" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
    And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user sign out and close the browser
#=======>          Replacing the approved application    =============================>
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Replacement" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Certificate Missing Required Information" from "Why are you replacing this certificate" drop down on "ExportApplication.Web/9060application" page
    And the user enters current value of "applicant id" into "which certificate are you replacing" on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "edit product icon" button on "ExportApplication.Web/9060application" page
    And the user enters "55005" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    Then the user can see text "Marked net weight of lot(lb) cannot exceed the original value."
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5505" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user can see text "The number of packages in lot cannot exceed the original value."
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user clicks the "yes button" button on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    # ============>   The CSI approves the replaced application     ============>
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-03" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 4 seconds
    And the user enters current value of "applicant id" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on add link for directed task-"Current Value of#applicant id" on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user waits for 10 seconds
    And the user enters "1" on "5" in Assign Task window
    And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user switch back to main window
    And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Kandy Evans" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "select hill side turky farm" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Day Button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user right-click "Export Task CSI" task with current value of "applicant id" and selects "Document" on Task Calendar page
    And the user waits for 10 seconds
    And the user switch to iframe
    And the user waits for 5 seconds
    And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
    And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "upload button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks the "yes button action required" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 30 seconds
    And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
    And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user sign out and close the browser

  @Split_9060
  Scenario: 62.11 Split Approved 9060-5 Certificate for Export
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Johnsons Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "345 Test Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "chunky beef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-03" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 4 seconds
    And the user enters current value of "applicant id" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on add link for directed task-"Current Value of#applicant id" on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user waits for 10 seconds
    And the user enters "1" on "5" in Assign Task window
    And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user switch back to main window
    And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Kandy Evans" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "select hill side turky farm" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Day Button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user right-click "Export Task CSI" task with current value of "applicant id" and selects "Document" on Task Calendar page
    And the user waits for 10 seconds
    And the user switch to iframe
    And the user waits for 5 seconds
    And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
    And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "upload button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks the "yes button action required" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 30 seconds
    And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
    And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user sign out and close the browser
#=======>          Spliting the approved application    ============>
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Split" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Certificate Missing Required Information" from "Why are you replacing this certificate" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user enters current value of "applicant id" into "split certificate number" on "ExportApplication.Web/9060application" page
    And the user enters "2" into "Number of Splits" on "ExportApplication.Web/9060application" page
    And the user clicks the "Set Split Data" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    Then the user must see text "Please enter export establishment's information."
    And the user waits for 5 seconds
    And the user can see text "Click on the weight or packages column cells to edit."
    And the user waits for 5 seconds
    And the user clicks on "split1 export establishment name and number icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
#    And the user can see text "Export Establishment Details"
    And the user waits for 2 seconds
    And the user clicks on "export establishment number 1" element on "ExportApplication.Web/9060application" page
    And the user press downkey and enter
    And the user waits for 2 seconds
    And the user clicks the "establishment details summit button" button on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user waits for 10 seconds
    And the user clicks on "split1 net weight column:div" element on "ExportApplication.Web/9060application" page
    And the user enters "27500" into "split1 net weight" on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "split1 number of packages:div" element on "ExportApplication.Web/9060application" page
    And the user enters "2750" into "split1 number of packages" on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user enters "27500" into "Total weight for new Application 1" on "ExportApplication.Web/9060application" page
    And the user clicks on "split2 export establishment name and number icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user can see text "Export Establishment Details"
    And the user clicks on "export establishment number 1" element on "ExportApplication.Web/9060application" page
    And the user press downkey and enter
    And the user waits for 2 seconds
    And the user clicks the "establishment details summit button" button on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user waits for 15 seconds
    And the user clicks on "split2 net weight column:div" element on "ExportApplication.Web/9060application" page
    And the user enters "27501.75" into "split weight pounds 2" on "ExportApplication.Web/9060application" page
    And the user clicks on "split2 number of packages:div" element on "ExportApplication.Web/9060application" page
    And the user enters "2751" into "split2 number of packages" on "ExportApplication.Web/9060application" page
    And the user enters "27501.75" into "Total weight for new Application 2" on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user can see text "The total amount of product on the new applications exceeds the amount on the original certificate"
    And the user clicks on "split2 net weight column:div" element on "ExportApplication.Web/9060application" page
    And the user enters "27500" into "split weight pounds 2" on "ExportApplication.Web/9060application" page
    And the user clicks on "split2 number of packages:div" element on "ExportApplication.Web/9060application" page
    And the user enters "2750" into "split2 number of packages" on "ExportApplication.Web/9060application" page
    And the user enters "27500" into "Total weight for new Application 2" on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user check "Remark statement" checkbox on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish 1" button on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser


  @Consolidate_9060_APPLICATION
  Scenario: 62.12 Consolidate Approved 9060-5 Certificates for Export
 #=========> CREATE AND APPROVE THE FIRST APPLICATION, REMEMBER THE CERT.No: AND USED IT FOR THE CONSOLIDATION
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Johnsons Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "345 Test Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "chunky beef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "1st application number 62.12" field into "consolidate 1st application number 62.12" on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-03" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 4 seconds
    And the user enters current value of "consolidate 1st application number 62.12" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on add link for directed task-"Current Value of#consolidate 1st application number 62.12" on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user waits for 10 seconds
    And the user enters "1" on "5" in Assign Task window
    And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user switch back to main window
    And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Kandy Evans" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "select hill side turky farm" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Day Button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user right-click "Export Task CSI" task with current value of "consolidate 1st application number 62.12" and selects "Document" on Task Calendar page
    And the user waits for 10 seconds
    And the user switch to iframe
    And the user waits for 5 seconds
    And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
    And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "upload button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks the "yes button action required" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 30 seconds
    And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
    And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user sign out and close the browser
#=========> CREATE AND APPROVE THE SECOND APPLICATION, REMEMBER THE CERT.No: AND USED IT FOR THE CONSOLIDATION
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Johnsons Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "345 Test Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "chunky beef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "2nd application number 62.12" field into "consolidate 2nd application number 62.12" on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-03" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 4 seconds
    And the user enters current value of "consolidate 2nd application number 62.12" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on add link for directed task-"Current Value of#consolidate 2nd application number 62.12" on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user waits for 10 seconds
    And the user enters "1" on "5" in Assign Task window
    And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user switch back to main window
    And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Kandy Evans" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "select hill side turky farm" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Day Button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user right-click "Export Task CSI" task with current value of "consolidate 2nd application number 62.12" and selects "Document" on Task Calendar page
    And the user waits for 10 seconds
    And the user switch to iframe
    And the user waits for 5 seconds
    And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
    And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "upload button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks the "yes button action required" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 30 seconds
    And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
    And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user sign out and close the browser
 #=========> CREATE CONSOLIDATION FOR THE 2 APPROVED APPLICATIONS ABOVE
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Consolidate" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Certificate Missing Required Information" from "Why are you replacing this certificate" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    Then the user enters the consolidate application number for current value of "application number of 62.12 for consolidate" into "Which certificate are you replacing" on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "edit product icon" element on "ExportApplication.Web/9060application" page
    And the user clicks the "cancel button" button on "ExportApplication.Web/9060application" page
    And the user enters "110000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user clicks the "yes button" button on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user clicks on "unlock image icon" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "edit product icon" element on "ExportApplication.Web/9060application" page
    And the user enters "54990" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5490" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user clicks on "edit product icon" element on "ExportApplication.Web/9060application" page
    And the user clicks the "cancel button" button on "ExportApplication.Web/9060application" page
    And the user waits for 30 seconds
    And the user enters "109990" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user clicks the "yes button" button on "ExportApplication.Web/9060application" page
    And the user clicks the "yes button" button on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser

   @Submit_Enrollment_Export_applicant
   Scenario: 62.13 Submit an Enrollment Request as an Export Applicant
     Given the user navigates to /EnrollementDMZ on browser
     And the user waits for 10 seconds
     Then the user enters "Micheal" into "First Name" on "ExportApplication.Web/9060application" page
     And the user enters "Jordan" into "Last Name" on "ExportApplication.Web/9060application" page
     And the user enters "wanjisms@gmail.com" into "email address" on "ExportApplication.Web/9060application" page
     And the user clicks on "Login Button" element on "ExportApplication.Web/9060application" page
     And the user waits for 3 seconds
     And the user clicks on "Submit Enrollment Request" element on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user clicks on "Account Type" element on "ExportApplication.Web/9060application" page
     And the user selects "Industry" from "Account Type" drop down on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user selects "Export Applicant" from "Select Role" drop down on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user enters "10828" into "Number: Establishment number" on "ExportApplication.Web/9060application" page
     And the user clicks the "Find Button" button on "ExportApplication.Web/9060application" page
     And the user clicks the link with text "Select"
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user clicks on "Finish Button" element on "ExportApplication.Web/9060application" page
     And the user remembers the value of "Enrollment Request No" field into "Enrollment Request No" on "ExportApplication.Web/9060application" page
     And the user clicks the link with text "Logout eAuth"


   @Approve_Export_Applicant
   Scenario: 62.14 Approve an Export Applicant Request
     Given the user navigates to /EnrollementDMZ on browser
     Then the user enters "Johntest123" into "First Name" on "ExportApplication.Web/9060application" page
     And the user enters "Johntest345" into "Last Name" on "ExportApplication.Web/9060application" page
     And the user enters "johntest123@mailinator.com" into "email address" on "ExportApplication.Web/9060application" page
     And the user clicks on "Login Button" element on "ExportApplication.Web/9060application" page
     And the user waits for 3 seconds
     And the user clicks on "Submit Enrollment Request" element on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user clicks on "Account Type" element on "ExportApplication.Web/9060application" page
     And the user selects "Industry" from "Account Type" drop down on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user selects "Export Applicant" from "Select Role" drop down on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user enters "10828" into "Number: Establishment number" on "ExportApplication.Web/9060application" page
     And the user waits for 10 seconds
     And the user clicks the "Find Button" button on "ExportApplication.Web/9060application" page
     And the user waits for 10 seconds
     And the user clicks the link with text "Select"
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user waits for 10 seconds
     And the user clicks on "Finish Button" element on "ExportApplication.Web/9060application" page
     And the user clicks the link with text "Logout eAuth"
#     And the user clicks the link with text "Home"
     And the user waits for 5 seconds
     Given the user navigates to /Login.aspx on browser
     And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
     And the user selects "Westgerdes, Neal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
     Then the user can see text "Home"
     And the user selects "System Admin" from "role" drop down on "FSISDashBoard/Default" page
     And the user clicks on "User Management" element on "FSISDashBoard/Default" page
     And the user clicks on "manage requests" element on "ExportApplication.Web/9060application" page

     And the user enters "johntest123@mailinator.com" into "requestor email" on "ExportApplication.Web/9060application" page
     And the user clicks the "find requestor" button on "ExportApplication.Web/9060application" page
     And the user waits for 5 seconds
     And the user click on the added requester edit icon to be edited
     And the user waits for 10 seconds
#     And the user clicks on "approve image icon" element on "ExportApplication.Web/9060application" page
     Then the user clicks the link with text "Approve"
#     And the user clicks on "Approve Button" element on "ExportApplication.Web/9060application" page
     And the user clicks on "User Management" element on "FSISDashBoard/Default" page
     And the user clicks on "manage users" element on "ExportApplication.Web/9060application" page
     And the user selects "Industry" from "Account Type 2" drop down on "ExportApplication.Web/9060application" page
     And the user enters "johntest123@mailinator.com" into "user (fsis federal employee)" on "ExportApplication.Web/9060application" page
     And the user clicks the "filter user icon" button on "ExportApplication.Web/9060application" page
     And the user clicks on "contains link" element on "ExportApplication.Web/9060application" page
     And the user click on the added requester edit icon to be edited
     And the user clicks on "Run PHIS Data Feed" element on "<ExportApplication.Web/9060application" page
     And the user sign out and close the browser


   @Copy_9060-6_NewApplication
   Scenario: 62.15 Copy a 9060-6 New Application for Export Certificate
     Given the user navigates to /Login.aspx on browser
     And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
     And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
     Then the user can see text "Home"
     And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
     And the user clicks on "9060" element on "FSISDashBoard/Default" page
     And the user clicks on "copy" element on "ExportApplication.Web/9060application" page
     And the user waits for 10 seconds
     And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
     And the user waits for 5 seconds
     And the user can see text "Unsubmitted"
     And the user clicks on "Edit 1" element on "ExportApplication.Web/9060application" page
     And the user enters "Julio Co." into "company name" on "ExportApplication.Web/9060application" page
     And the user enters "122 Mass Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
     And the user enters "Mayfiled" into "City" on "ExportApplication.Web/9060application" page
     And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
     And the user selects "Kentucky" from "State/Province" drop down on "ExportApplication.Web/9060application" page
     And the user enters "56482" into "postal code" on "ExportApplication.Web/9060application" page
     And the user click "export mark to be used" radio button on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user clicks the "Previous" button on "ExportApplication.Web/9060application" page
     And the user can see "Julio Co." text in "company name" field on "ExportApplication.Web/9060application" page
     And the user can see "122 Mass Ave." text in "Address Line 1" field on "ExportApplication.Web/9060application" page
     And the user can see "Mayfiled" text in "City" field on "ExportApplication.Web/9060application" page
     And the user can see "56482" text in "postal code" field on "ExportApplication.Web/9060application" page
     And the user waits for 2 seconds
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user can see "Malvin Ent." text in "import:company name" field on "ExportApplication.Web/9060application" page
     And the user can see "23 Concord St." text in "import:Address Line 1" field on "ExportApplication.Web/9060application" page
     And the user enters "Paulino Meat Ent." into "import:company name" on "ExportApplication.Web/9060application" page
     And the user enters "28910 cross bridge" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
     And the user enters "Afghaniwest" into "import:City" on "ExportApplication.Web/9060application" page
     And the user selects "AFGHANISTAN" from "import:Country" drop down on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user clicks the "Previous" button on "ExportApplication.Web/9060application" page
     And the user can see "Paulino Meat Ent." text in "import:company name" field on "ExportApplication.Web/9060application" page
     And the user can see "28910 cross bridge" text in "import:Address Line 1" field on "ExportApplication.Web/9060application" page
     And the user can see "Afghaniwest" text in "import:City" field on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user can see "6000" text in "Total Net Weight" field on "ExportApplication.Web/9060application" page
     And the user enters "5000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
     And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
     And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
     And the user clicks the "next" button on "ExportApplication.Web/9060application" page
     And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
     And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
     And the user sign out and close the browser

   @Two_PHV_Approval_Workflow
   Scenario: 62.16 Complete a 9060 approvals workflow to accommodate up to two PHV approvals
     Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Johnsons Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "345 Test Ave." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "AFGHANISTAN" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "chunky beef" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "5500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "55000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-03" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 4 seconds
    And the user enters current value of "applicant id" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 2 seconds
    And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 20 seconds
    And the user clicks on add link for directed task-"Current Value of#applicant id" on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user waits for 10 seconds
    And the user enters "1" on "5" in Assign Task window
    And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user switch back to main window
    And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Kandy Evans" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "select hill side turky farm" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Day Button" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user right-click "Export Task CSI" task with current value of "applicant id" and selects "Document" on Task Calendar page
    And the user waits for 30 seconds
    And the user switch to iframe
    And the user waits for 5 seconds
    And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 5 seconds
    And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
#    And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 15 seconds
    And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
    And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
    And the user waits for 10 seconds
    And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user sign out and close the browser
##=======> PHV 01 APPROVALS ==========>
     Given the user navigates to /Login.aspx on browser
     And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
     And the user selects "Dua, Suresh" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
     And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
     And the user selects "Public Health Veterinarian" from "role" drop down on "FSISDashBoard/Default" page
     And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
     And the user selects "Office of Field Operations | Raleigh, NC | 8014 Mount Airy, MD | 8014-03-Supervisory | 8014-03-01" from "assignments dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
     And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user selects "Export" from "Filter task by dropdown" combo box on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 4 seconds
     And the user enters current value of "applicant id" into "filter id textbox" on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 2 seconds
     And the user clicks on "filter icon" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks on "filter value" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "Add link" element on "TaskCalendar/EstablishmentTaskList" page
#     And the user clicks on add link for directed task-"Current Value of#applicant id" on "TaskCalendar/EstablishmentTaskList" page
     And the user switch to iframe
     And the user waits for 25 seconds
     And the user enters "1" on "5" in Assign Task window
     And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user switch back to main window
     And the user clicks on "Inspector Arrow" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks on "Dua Suresh" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "establishment arrow" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks on "hill side turkey farm" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks the link with text "today"
#     And the user clicks on "Day Button" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 15 seconds
     And the user right-click "Export Task PHV" task with current value of "applicant id" and selects "Document" on Task Calendar page
     And the user waits for 10 seconds
     And the user switch to iframe
     And the user waits for 10 seconds
     And the user clicks on "Activity Tab" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 10 seconds
     And the user click "verification activity: both" radio button on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "Regulations Tab" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "Issuance of official export certificates and reinspection verified check box" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks on "marking of product with official export stamp verified check box" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "save inspection result" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 10 seconds
     And the user clicks on "Approvals Tab" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 15 seconds
     And the user clicks the "approve and sign" button on "TaskCalendar/EstablishmentTaskList" page
     And user attached "Certificate.pdf" file into "signed document" on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 5 seconds
     And the user clicks on "upload button" element on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 10 seconds
     And the user clicks the "yes button action required" button on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 30 seconds
     And the user clicks on "Add New File" element on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks the "select file" button on "TaskCalendar/EstablishmentTaskList" page
     And the user enters "Automation doc" into "Document Title" on "TaskCalendar/EstablishmentTaskList" page
     And the user check "Inspection Complete" checkbox on "TaskCalendar/EstablishmentTaskList" page
     And the user clicks the "save inspection result" button on "TaskCalendar/EstablishmentTaskList" page
     And the user waits for 10 seconds
     And the user clicks on "close inspection result" element on "TaskCalendar/EstablishmentTaskList" page
     And the user switch back to main window
     And the user sign out and close the browser



  @Expand_Product_Name
  Scenario:62.17 Expand Product Name field to increase the number of characters allowed to maximum 100 (Total 100 for Product Name and Product Code)- 9060-6/9050-5/9060-5A PDF
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Bratton" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Alicia Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "107 Bright ln." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M7211" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Brian Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "375 third St." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Niceville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "LIBERIA" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Meat_jerky_from_the_one_and_only_meet_jerky_company_founded_in_the_United_States_of_America_and_supplied_worldwide" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Buffalo" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "5000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "7211" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M7211" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Bush Meat_from_the_one_and_only_Bush_Meat_company_founded_in_the_United_States_of_America_and_supplied_worldwide" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Antelope" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "2000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "200" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Foodtainer" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "7211" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M7211" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Spicy_Hajal_from_the_one_and_only_Spicy_Hajal_company_founded_in_the_United_States_of_America_and_supplied_worldwide" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Lamb" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "1000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "100" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "7211" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M7211" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Spicy_Hajal_from_the_one_and_only_Spicy_Hajal_company_founded_in_the_United_States_of_America_and_supplied_worldwide" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Lamb" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "1000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "100" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "7211" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M7211" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Bush Meat_from_the_one_and_only_Bush_Meat_company_founded_in_the_United_States_of_America_and_supplied_worldwide" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Antelope" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "2000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "200" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Foodtainer" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "7211" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M7211" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "14000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user enters "Unsubmitted" into "application status filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user waits for 15 seconds
    And the user clicks on "adobe image icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 15 seconds
    Then the user enters current value of "applicant id" into "application number filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "application number filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user clicks on "edit icon" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user enters "Submitted" into "application status filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user waits for 15 seconds
    And the user clicks on "adobe image icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 15 seconds
    And the user sign out and close the browser



  @Expand_Product_Name_For_Siluriformes_Fish
  Scenario:62.18 Expand Product Name field to increase the number of characters allowed to 100 – 9060 – 5S PDF
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Bratton" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Alicia Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "107 Bright ln." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Gainsville" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Virginia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "20108" into "Postal Code" on "ExportApplication.Web/9060application" page
    And the user selects "M7211" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Brian Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "375 third St." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Niceville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "LIBERIA" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Seagoodiesfromtheoneandonlyseegoodiesproducerfoundedintheunitedstatesofamericaandsuppliesalloverthew" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Thermally Processed/Commercially Sterile" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Siluriformes Fish" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "7000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "1400" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Vacuum-packed" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "7211" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M7211" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "7000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "certification statement for siluriformes fish" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user enters "Unsubmitted" into "application status filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user clicks on "adobe image icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 3 seconds
    Then the user enters current value of "applicant id" into "application number filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "application number filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user clicks on "edit icon" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "7000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "siluriformes fish: i certify checkbox" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
#    And the user clicks on "siluriformes fish: i certify checkbox" element on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user remembers the value of "applicant name" field into "applicant id" on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user enters "Submitted" into "application status filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user waits for 15 seconds
    And the user clicks on "adobe image icon" element on "ExportApplication.Web/9060application" page
    And the user waits for 15 seconds
    And the user sign out and close the browser


  @Product_Details_Data_Entry_Page_View_Mode
  Scenario: 62.19 Product Details data entry page for View mode
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Saucier, Kara" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Viewer" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks on "view image link" element on "ExportApplication.Web/9060application" page
    And the user waits for 6 seconds
    Then the user clicks on "Products Summary" element on "ExportApplication.Web/9060application" page
    And the user waits for 6 seconds
    And the user clicks on "view product summary icon" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Cancel Button" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user clicks on "9080-3" element on "FSISDashBoard/Default" page
    And the user clicks on "View Application" element on "ExportApplication.Web/9060application" page
    And the user clicks on "Product Information" element on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application For Establishment" element on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "exit menu product summary" element on "ExportApplication.Web/9060application" page
    And the user clicks on "Batch Results" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user click "Date Range: Two days 1" radio button on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user click "Date Range: One Week 1" radio button on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user click "Date Range: one month 1" radio button on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser


  @Verify_FSIS_Proxy_Recored_is_viewed_By_FSIS_Proxy_only
  Scenario: 62.20 FSIS users with the FSIS Proxy role should only be able to view 9060 records that were created by someone with the FSIS Proxy role
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Riden, Mary" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "FSIS Proxy" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
#  TC-21935.2 VERIFY IF ONLY MY ESTABLISHMENT TAB IS PRESENT
    And the user clicks the link with text "Create Application"
    And the user must see "Search Establishments" text in "search establishments" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Search Establishments" element on "ExportApplication.Web/9060application" page
    And the user enters "10828" into "establishment search number" on "ExportApplication.Web/9060application" page
    And the user clicks on "search button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment home icon 1" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
    And the user enters "Applicant Afzal" into "export applicant name" on "ExportApplication.Web/9060application" page
    And the user enters "Nde Ltd" into "company name" on "ExportApplication.Web/9060application" page
    And the user enters "737 Nkumkum St." into "Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Bangulap" into "City" on "ExportApplication.Web/9060application" page
    And the user selects "UNITED STATES" from "Country" drop down on "ExportApplication.Web/9060application" page
    And the user selects "District Of Columbia" from "State/Province" drop down on "ExportApplication.Web/9060application" page
    And the user enters "19681" into "postal code" on "ExportApplication.Web/9060application" page
    And the user selects "M10828" from "Export Establishment Number" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "export mark to be used" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user enters "Jamais Ent." into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "44 Bastos Rd" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Bertua" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "BURUNDI" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks the link with text "Add Product"
    And the user enters "Bestmbappy" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Beef" from "species" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "is the maturity less than 30 months: no" element on "ExportApplication.Web/9060application" page
    And the user clicks on "is the product frozen/shelf-stable: no" element on "ExportApplication.Web/9060application" page
    And the user enters "2500" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Finish" element on "ExportApplication.Web/9060application" page
    And the user enters "2500" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "shipment information 9060: next" element on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user sign out and close the browser
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Saucier, Kara" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "FSIS Proxy" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks on "pdf icon" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser
