@9060_APPLICATIONS1
Feature:9060-6 application

  @TC-23050
  Scenario: 23050.1	ENTER ESTABLISHMENT PROFILE DATA
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
#    And the user clicks the "show all users option" button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
#  TC-23050.2 SELECT ESTABLISHMENT AND ENTER APPLICATION FIELDS
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks button with text "Next" on "ExportApplication.Web/9060application" page
#    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
#   TC-23050.3 ENTER IMPORTER AND EXPORTER IN CREATE 9060 APPLICATION PROCESS
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
#And the user waits for 20 seconds
  #
  # And the user enters importers information on "9060 Applications > Import Country Information" page
    And the user enters "Alisca Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "99 Green ln" into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Martinsville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
  #   And the user adds products on "9060 Applications > Product Summary"
#  verify the four checkboxes for (meat, poultry, Siluriformes Fish  and none of above
    And the user can see "I CERTIFY that the meat, meat food product or meat byproduct specified hereon is from animals that received both antemortem and postmortem inspection and were found sound and healthy and that it has been inspected and passed as provided by law and regulations of the Department and is sound and wholesome." text in "certification statement for meat" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the poultry, poultry products or poultry food products specified above came from birds that were officially given an antemortem and postmortem inspection and passed in accordance with applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for poultry" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the Siluriformes fish and fish products specified on this form have been inspected and passed in accordance with the applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for siluriformes fish" field on "ExportApplication.Web/9060application" page
    And the user can see "None of the above" text in "certification statement for none the above" field on "ExportApplication.Web/9060application" page

# TC-23050.4 ADD PRODUCT IN PRODUCT SUMMARY PAGE

    And the user clicks the link with text "Add Product"
    And the user enters "Seafoods" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Heat Treated - Shelf Stable" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Siluriformes Fish" from "species" drop down on "ExportApplication.Web/9060application" page
#    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060applications" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "150000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "1500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
#    And the user clicks on "pencil icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
#    And the user find and switch to "Establishment Search:frame" frame on "ExportApplication.Web/9060application" page
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
#    And the user enters "5401" into "number" on "ExportApplication.Web/9060application" page
#    And the user waits for 10 seconds
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
#    And the user waits for 5 seconds
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
    And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
#     And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page
    
#  Scenario:23050.5 Login with applicant Afzal and creates  new applications for meat products and poultry products
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
#    And the user clicks the "show all users option" button on "FSISDashBoard/Shared/Login" page
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
#  #   And the user enters importers information on "9060 Applications > Import Country Information" page
    And the user enters "Jayson Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "975 First ln." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Centreville" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user waits for 2 seconds
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
  #   And the user adds a meat products on "9060 Applications > Product Summary"
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
#    And the user find and switch to "Establishment Search:frame" frame on "ExportApplication.Web/9060application" page
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
#    And the user enters "5401" into "number" on "ExportApplication.Web/9060application" page
#    And the user waits for 10 seconds
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
#    And the user waits for 5 seconds
    And the user switch back to main window
    And the user selects "M10828" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page
#    And the user adds a poultry product.
    And the user clicks the link with text "Add Product"
    And the user enters "chickenjoe" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Raw - Intact" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Chicken" from "species" drop down on "ExportApplication.Web/9060application" page
#    And the user click "Is the Maturity Less than 30 Months:" radio button on "<060 Applications Page" page
    And the user click "is the maturity less than 30 months: yes" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "25000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "2500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Package" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
#    And the user find and switch to "Establishment Search:frame" frame on "ExportApplication.Web/9060application" page
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
#    And the user enters "5401" into "number" on "ExportApplication.Web/9060application" page
#    And the user waits for 5 seconds
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
    And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page


#  @TC-23049


   #@TC-23049
  Scenario: 23049.1	LOGIN AN EXPORT APPLICANT
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
#    And the user clicks the "show all users option" button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Beebe" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
#  TC-23049.2 SELECT ESTABLISHMENT AND ENTER APPLICATION FIELDS
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks button with text "Next" on "ExportApplication.Web/9060application" page
#    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
#   TC-23049.3 ENTER IMPORTER AND EXPORTER IN CREATE 9060 APPLICATION PROCESS
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
    # And the user enters importers information on "9060 Applications > Import Country Information" page
    And the user enters "Benisco Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "81 Maxson Ave." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Canton" into "import:City" on "ExportApplication.Web/9060application" page
    And the user selects "CAPE VERDE" from "import:Country" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page

#  TC-23049.4 VERIFY THAT UNDER THE CERTIFICATION STATEMENT FOUR CHECKBOXES ARE PRESENT FOR MEAT, SILURIFORMS, POULTRY AND NONE OF THE ABOVE
    And the user can see "I CERTIFY that the meat, meat food product or meat byproduct specified hereon is from animals that received both antemortem and postmortem inspection and were found sound and healthy and that it has been inspected and passed as provided by law and regulations of the Department and is sound and wholesome." text in "certification statement for meat" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the poultry, poultry products or poultry food products specified above came from birds that were officially given an antemortem and postmortem inspection and passed in accordance with applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for poultry" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the Siluriformes fish and fish products specified on this form have been inspected and passed in accordance with the applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for siluriformes fish" field on "ExportApplication.Web/9060application" page
    And the user can see "None of the above" text in "certification statement for none the above" field on "ExportApplication.Web/9060application" page
#  TC-23049.5 THE USER ADDS A POULTRY PRODUCT AND PROCEEDS TO PRODUCT SUMMARY PAGE TO VERIFY CHECKBOXES PRESENT
    And the user clicks the link with text "Add Product"
    And the user enters "Poulchicks" into "product name" on "ExportApplication.Web/9060application" page
    And the user selects "Raw - Intact" from "haccp category" drop down on "ExportApplication.Web/9060application" page
    And the user selects "Chicken" from "species" drop down on "ExportApplication.Web/9060application" page
#    And the user click "Is the Maturity Less than 30 Months:" radio button on "<060 Applications Page" page
    And the user click "is the maturity less than 30 months: yes" radio button on "ExportApplication.Web/9060application" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "5000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Package" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
#    And the user find and switch to "Establishment Search:frame" frame on "ExportApplication.Web/9060application" page
    And the user enters "5401" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user switch back to main window
    And the user selects "M5401" from "est. number on product: select one" drop down on "ExportApplication.Web/9060application" page
    And the user clicks the "Finish" button on "ExportApplication.Web/9060application" page

    And the user can see "I CERTIFY that the meat, meat food product or meat byproduct specified hereon is from animals that received both antemortem and postmortem inspection and were found sound and healthy and that it has been inspected and passed as provided by law and regulations of the Department and is sound and wholesome." text in "certification statement for meat" field on "ExportApplication.Web/9060application" page
    And the user can see "I CERTIFY that the poultry, poultry products or poultry food products specified above came from birds that were officially given an antemortem and postmortem inspection and passed in accordance with applicable laws and regulations of the United States Department of Agriculture and are wholesome and fit for human consumption." text in "certification statement for poultry" field on "ExportApplication.Web/9060application" page
    And the user can see "None of the above" text in "certification statement for none the above" field on "ExportApplication.Web/9060application" page
    And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page
    And the user waits for "10" seconds

#      @TC-26418


   #@TC-26418
  Scenario: 26418.1	LOGIN AN EXPORT APPLICANT AND VERIFY IF ONLY MY ESTABLISHMENT TAB IS PRESENT
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
#    And the user clicks the "show all users option" button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Carpenter" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
#  TC-26418.2 VERIFY IF ONLY MY ESTABLISHMENT TAB IS PRESENT
    And the user clicks the link with text "Create Application"
#    Then the user must see text "My Establishments"
    And the user must see the "My Establishments" link on "ExportApplication.Web/9060application" on page
#    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page

#      @TC-26451


  @TC-26451
  Scenario: 26451.1	LOGIN AN EXPORT APPLICANT AND DELETE AN APPLICATION AND VERIFY THE CONFIRMATION MESSAGE
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
#    And the user clicks the "show all users option" button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
#    And the user clicks the "show all users option" button on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
#   TC-26451.2 CREATE A 9060 APPLICATION
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
#    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
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
#    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060applications" page
    And the user clicks on "is the product frozen/shelf-stable: no" element on "ExportApplication.Web/9060application" page
    And the user enters "150000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "1500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Pallet, box" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
#    And the user clicks on "pencil icon" element on "ExportApplication.Web/9060application" page
   And the user switch to iframe
#    And the user find and switch to "Establishment Search:frame" frame on "ExportApplication.Web/9060application" page
    And the user enters "10828" into "number" on "ExportApplication.Web/9060application" page
#    And the user enters "5401" into "number" on "ExportApplication.Web/9060application" page
#    And the user waits for 10 seconds
    And the user clicks on "Search" element on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
#    And the user waits for 5 seconds
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
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser


#    TC-26451.3 DELETE 9060 APPLICATION
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
#    And the user clicks the "show all users option" button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
 #   And the user must see "Hillside Turkey Farm" text in "export establishment name" field on "<ExportApplication.Web/9060application" page
    Then the user clicks on "Delete icon" element on "ExportApplication.Web/9060application" page


  @TC-26545
  Scenario: 26545.1	ADDING NEW FILES ON 9060 6 APPLICATION SUBMIT PAGE
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
  #    And the user clicks the "show all users option" button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Flores" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page

  #   TC-26451.2 CREATE A 9060 APPLICATION
    And the user clicks the link with text "Create Application"
    And the user clicks on "establishment home icon" element on "ExportApplication.Web/9060application" page
    And the user selects "Commercial Sale" from "shipment type" drop down on "ExportApplication.Web/9060application" page
    And the user selects "New" from "application Type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks button with text "Next" on "ExportApplication.Web/9060application" page
  #    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
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
#    And the user click "is the maturity less than 30 months: no" radio button on "ExportApplication.Web/9060applications" page
    And the user click "is the product frozen/shelf-stable: no" radio button on "ExportApplication.Web/9060application" page
    And the user enters "3000" into "marked net weight of lot" on "ExportApplication.Web/9060application" page
    And the user enters "1500" into "number of packages in lot" on "ExportApplication.Web/9060application" page
    And the user selects "Bucket" from "package type" drop down on "ExportApplication.Web/9060application" page
    And the user clicks on "est. number on product icon" element on "ExportApplication.Web/9060application" page
#    And the user clicks on "pencil icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
#    And the user find and switch to "Establishment Search:frame" frame on "ExportApplication.Web/9060application" page
    And the user enters "6066" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
#    And the user waits for 5 seconds
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
    And the user enters "C:\phis_automation_regression_suite\features\support\Downloads\ExportCertificate.pdf" into "browse 1" on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user enters "Automation Test Doc" into "document title 1" on "ExportApplication.Web/9060application" page
    And the user clicks the "Upload 1" button on "ExportApplication.Web/9060application" page
    And the user waits for 10 seconds
    And the user clicks on "add new file 2" element on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user enters "C:\phis_automation_regression_suite\features\support\Downloads\eAuthentication.pdf" into "browse 2" on "ExportApplication.Web/9060application" page
    And the user waits for 5 seconds
    And the user enters "Automation Test Doc" into "document title 2" on "ExportApplication.Web/9060application" page
    And the user clicks the "Upload 2" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Submit Application" button on "ExportApplication.Web/9060application" page
    And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page


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
#    And the user clicks on "pencil icon" element on "ExportApplication.Web/9060application" page
    And the user switch to iframe
#    And the user find and switch to "Establishment Search:frame" frame on "ExportApplication.Web/9060application" page
    And the user enters "8271" into "number" on "ExportApplication.Web/9060application" page
    And the user clicks the "Search" button on "ExportApplication.Web/9060application" page
    And the user clicks on "establishment search control: establishment home icon" element on "ExportApplication.Web/9060application" page
#    And the user waits for 5 seconds
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
    And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page

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
#    And the user clicks the "Submit Application" button on "ExportApplication.Web/9060application" page
    And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page

    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Mccoy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    Then the user can see text "Home"
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
#    And the user clicks on "copy" element on "ExportApplication.Web/9060application" page
#    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
#    And the user can see text "Unsubmitted"
#    And the user clicks on "copy" element on "ExportApplication.Web/9060application" page
#    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
#    And the user can see text "Unsubmitted"
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
#    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
    And the user can see "5000" text in "Total Net Weight" field on "ExportApplication.Web/9060application" page
    And the user enters "7000" into "Total Net Weight" on "ExportApplication.Web/9060application" page
    And the user clicks on "terms and agreement" element on "ExportApplication.Web/9060application" page
    And the user clicks on "meat:i certify statement" element on "ExportApplication.Web/9060application" page
    And the user clicks the "next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "shipment information 9060: next" button on "ExportApplication.Web/9060application" page
    And the user clicks the "Next" button on "ExportApplication.Web/9060application" page
    And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page

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
    And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page

    #    Get an PHV Approved 9060 application that reviewed by company CSI and make a copy and verify the fields are editable.
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
    And the user clicks on "sign out" element on "ExportApplication.Web/9060application" page


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
  # And the user enters importers information on "9060 Applications > Import Country Information" page
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
    And the user selects "Riden, Mary" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "FSIS Proxy" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user clicks on "pdf icon" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser

  @US_53453
  Scenario: SAVE A DRAFT 9060-6 APPLICATION FOR EXPORT CERTIFICATE
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
    And the user sign out and close the browser

  @US_53464
  Scenario: EDIT A DRAFT 9060-6 APPLICATION FOR EXPORT CERTIFICATE
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters "Unsubmitted" into "application status filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks the "filter button" button on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user waits for 3 seconds
    And the user clicks on "Edit 1" element on "ExportApplication.Web/9060application" page
    And the user gets the application number and verify the application
    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
    And the user enters "Monacco Ent" into "import:company name" on "ExportApplication.Web/9060application" page
    And the user enters "25 Rally Rd." into "import:Address Line 1" on "ExportApplication.Web/9060application" page
    And the user enters "Brighten" into "import:City" on "ExportApplication.Web/9060application" page
    And the user clicks on "Next" element on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user enters "0005956" into "application number filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "application number filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "number filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user waits for 3 seconds
    And the user clicks on "Edit 1" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser

  @US_53456
  Scenario: DELETE A DRAFT 9060-6 APPLICATION FOR EXPORT CERTIFICATE
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Applicant, Afzal" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Export Applicant" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "9060" element on "FSISDashBoard/Default" page
    And the user enters "Unsubmitted" into "application status filter text box" on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button" element on "ExportApplication.Web/9060application" page
    And the user clicks on "filter button dropdown" element on "ExportApplication.Web/9060application" page
    And the user waits for 3 seconds
    Then the user clicks on "Delete icon" element on "ExportApplication.Web/9060application" page
    And the user clicks on "ok" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser



#Stare to edit wanji

  @US_53458
  Scenario: COMPLETE A 9060-6 REVIEW TASK FOR CSI APPROVAL
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
    And the user clicks the link with text "Add New File"
    And the user enters "C:\Phis-Ruby-Automation-Test\features\support\Downloads\ExportCertificate.pdf" into "browse 1" on "ExportApplication.Web/9060application" page
    And the user enters "Automation Test Doc" into "document title 1" on "ExportApplication.Web/9060application" page
    And the user clicks the "Upload 1" button on "ExportApplication.Web/9060application" page
    And the user clicks on "add new file 2" element on "ExportApplication.Web/9060application" page
    And the user enters "C:\Phis-Ruby-Automation-Test\features\support\Downloads\ExportCertificate.pdf" into "browse 2" on "ExportApplication.Web/9060application" page
#    And the user types in to an empty text box or upload "file:///C:/Phis-Ruby-Automation-Test/features/support/Documents/Certificate.pdf" into "browse 2" on "ExportApplication.Web/9060application" page
    And the user enters "Automation Test Doc" into "document title 2" on "ExportApplication.Web/9060application" page
    And the user clicks the "Upload 2" button on "ExportApplication.Web/9060application" page
    And the user clicks on "Submit Application" element on "ExportApplication.Web/9060application" page
    And the user must see "Export Application 9060 - 6 has been submitted successfully" text in "confirmation message for submitting 9060 application" field on "ExportApplication.Web/9060application" page
    And the user clicks on "Exit Menu" element on "ExportApplication.Web/9060application" page
    And the user sign out and close the browser

#    Login as a CSI and review the application that has been submitted
  @test_CSI
  Scenario: Test CSI
    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    And the user selects "Evans, Kandy" from "select a user dropdown" drop down on "FSISDashBoard/Shared/Login" page
    And the user must see "Home" text in "home dashboard" field on "FSISDashBoard/Shared/Login" page
    And the user selects "Consumer Safety Inspector" from "role" drop down on "FSISDashBoard/Default" page
    And the user clicks on "Task Calendar" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "assignment drop down" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "assignment drop down" element on "TaskCalendar/EstablishmentTaskList" page
#    And the user clicks "assignments dropdown" on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Hillside Turkey Farm Shift:1 (M10828 P10828)" from "select establishment dropdown" drop down on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "select establishment dropdown" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Export" from "Filter task by dropdown" drop down on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Add" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch to iframe
    And the user clicks on "task date" element on "TaskCalendar/EstablishmentTaskList" page
    And the user enters "1" into "task date" on "ExportApplication.Web/9060application" page
    And the user clicks on "reason" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "reason arrow" element on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Unplanned Routine Task" from "reason dropdown" drop down on "TaskCalendar/EstablishmentTaskList" page
    And the user selects "Response to Alert Notification" from "Reason dropdown" drop down on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Unplanned Routine Task" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "Response to Alert Notification" element on "TaskCalendar/EstablishmentTaskList" page
    And the user clicks on "save 1" element on "TaskCalendar/EstablishmentTaskList" page
    And the user switch back to main window
    And the user enters "Kandy Evans" into "select inspector" on "TaskCalendar/EstablishmentTaskList" page

    Given the user navigates to /Login.aspx on browser
    And the user click "show all users option" radio button on "FSISDashBoard/Shared/Login" page
    