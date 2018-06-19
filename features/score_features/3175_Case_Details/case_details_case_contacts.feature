@SCORE_REGRESSION
@3175_CASE_DETAILS
@SCORE_CASE_DETAILS_CASE_CONTACTS
Feature: Verify the functionality of Case Contacts page when navigating from Case Details on CCMS
  Total Test cases automated - 4
  User Story 5290:'Case Details' > 'Case Contacts' > Accordion row title [TC-7367,TC-7368] Completed - 2
  User Story 5258:'Case Details' > 'Case Contacts' > Edit Case contacts [TC-7365] Completed - 1
  User Story 5289:'Case Details' > 'Case Contacts' > Delete Case contacts [TC-7366] Completed - 1

  @US_5290_1
  Scenario: Verify Submit Case with Complaint Type and Product then Edit Complainant Case Contact
  Condition 1 Anonymous Checkbox - unchecked with First name and Last name but on behalf of first name is blank,
  Verify in case contact shows as anonymous FirstName lastname - complainant in contact title and verify edit First Name and Last Name in Case Contact will update in Anonymous First Name and last Name in Complaint data
    Given the user navigates to /score on browser
    And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
    And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
    And the user clicks the "Login" button on "Score/User/User/Login" page
    And the user clicks the link with text "CCMS"
    And the user can see text "Cases by Status"
    And the user clicks the link with text "Create New Case"
    And the user can see text "Create Case"
    And the user clicks the link with text "Complaint Data"
    And the user enters "Todays date" into "Incident Date:" on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Mr." from "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Last Name" into "Last Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test Address 1" into "Address1" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test Address 2" into "Address2" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test City" into "City" on "Score/CCMS/Case/ComplainantData" page
    And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Alaska" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "23101" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
    And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
    And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Last Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address1" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address2" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "City" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Zip Code" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "District" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Create New Case:Case Number" field on "Score/CCMS" page
    And the user remembers the value of "Create New Case:Date Created" field on "Score/CCMS" page
    # Add Case Contacts in Complaint Data
    And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Email" from "Complaint Data:Add Contact:Contact Type-field" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test@test.com" into "Complaint Data:Add Contact:Contact Details-field" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Type-field" drop down into "Complaint Data:Add Contact:Contact Type1" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Details-field" text box into "Complaint Data:Add Contact:Contact Details1" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Complaint Data:Add Contact:Add-field" button on "Score/CCMS/Case/ComplainantData" page
    #    Add second contact
    And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Telephone (Mobile)" from "Complaint Data:Add Contact:Contact Type-field" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "4356785721" into "Complaint Data:Add Contact:Contact Details-field" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Type-field" drop down into "Complaint Data:Add Contact:Contact Type2" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Details-field" text box into "Complaint Data:Add Contact:Contact Details2" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Complaint Data:Add Contact:Add-field" button on "Score/CCMS/Case/ComplainantData" page
        # Add Complaint Type to Submit the Case
    And the user clicks the link with text "Complaint Type"
    And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
    And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
    And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
    And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
    And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
        # Add Product to Submit case
    And the user clicks the link with text "Products"
    And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
    And the user enters "M46051" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est State",Establishment number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name"and Closed-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Closed" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Brand-field" text box on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Name/Type-field" text box on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
    And the user can "see" Product with Brand Name-"Current Value of#Products:Product Brand-field",Product Name-"Current Value of#Products:Product Name/Type-field",Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Products table
    And the user clicks the "Create New Case:Submit for Review" button on "Score/CCMS" page
    And the user clicks the link with text "Case List"
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" created case at "first 10 rows" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"New" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
    And the user clicks the link with text "Case Contacts"
    And the user sees current value of "First Name" "Last Name" - "Complainant" in "Case Contacts:Complainant Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "First Name" in "Case Contacts:Complainant First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Last Name" in "Case Contacts:Complainant Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "Complainant" text in "Case Contacts:Complainant Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "" text in "Case Contacts:Complainant Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address1" in "Case Contacts:Complainant Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address2" in "Case Contacts:Complainant Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "City" in "Case Contacts:Complainant City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Country" in "Case Contacts:Complainant Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "State" in "Case Contacts:Complainant State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Zip Code" in "Case Contacts:Complainant Zip Code" field on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type1" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details1" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user "edit" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "6734567675" into "Case Contacts:Add Contact Details" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Contact Type" drop down into "Complaint Data:Add Contact:Contact Type2" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Add Contact Details" text box into "Complaint Data:Add Contact:Contact Details2" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Add Contact:Add" button on "Score/CCMS/Case/CaseContacts" page
        # Create case without Anonymous contact details and Verify contacts in case contacts Add Contacts, Delete and Edit
    And the user clicks the "Case Contacts:Complainant Edit" button on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 3" into "Case Contacts:Complainant Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 4" into "Case Contacts:Complainant Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test City" into "Case Contacts:Complainant City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "ANDORRA" from "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "California" from "Case Contacts:Complainant USState" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "24512" into "Case Contacts:Complainant Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant USState" drop down into "Case Contacts:Complainant State" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant Save" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the link with text "Complainant Data"
    And the user can see current value of "Case Contacts:Complainant First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Last Name" in "Last Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 1" in "Address1" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 2" in "Address2" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant City" in "City" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Country" in "Country" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant State" in "State" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Zip Code" in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
        # Reopen the case after saved edit contacts and verify changes are present
    And the user clicks the link with text "Case List"
    And the user clicks the "Discard" button on "Score/Dialog" page if opens
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" created case at "first 10 rows" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"New" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
    And the user clicks the link with text "Complainant Data"
    And the user can see current value of "Case Contacts:Complainant First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Last Name" in "Last Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 1" in "Address1" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 2" in "Address2" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant City" in "City" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Country" in "Country" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant State" in "State" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Zip Code" in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" on Complaint Data page
    And the user sign out from the score application and if pop up opens click discard button

  @US_5290_2
  Scenario: Verify Submit Case with Complaint Type and Product then Edit Complainant Case Contact
  Condition 2 Anonymous Checkbox - unchecked with First name and Last name but also having on behalf of first name and last name,
  Verify in case contact shows as on behalf of FirstName lastname - On Behalf Of Complainant in contact title and verify edit First Name and Last Name in Case Contacts update First Name and Last name in On Behalf of in Complaint Data
    Given the user navigates to /score on browser
    And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
    And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
    And the user clicks the "Login" button on "Score/User/User/Login" page
    And the user clicks the link with text "CCMS"
    And the user can see text "Cases by Status"
    And the user clicks the link with text "Create New Case"
    And the user can see text "Create Case"
    And the user clicks the link with text "Complaint Data"
    And the user enters "Todays date" into "Incident Date:" on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Mr." from "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Last Name" into "Last Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique First Name" into "On Behalf Of: First Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Last Name" into "On Behalf Of: Last Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test Address 1" into "Address1" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test Address 2" into "Address2" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test City" into "City" on "Score/CCMS/Case/ComplainantData" page
    And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Alaska" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "23101" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
    And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
    And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Last Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "On Behalf Of: First Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "On Behalf Of: Last Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address1" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address2" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "City" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Zip Code" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "District" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Create New Case:Case Number" field on "Score/CCMS" page
    And the user remembers the value of "Create New Case:Date Created" field on "Score/CCMS" page
    # Add Case Contacts in Complaint Data
    And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Email" from "Complaint Data:Add Contact:Contact Type-field" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test@test.com" into "Complaint Data:Add Contact:Contact Details-field" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Type-field" drop down into "Complaint Data:Add Contact:Contact Type1" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Details-field" text box into "Complaint Data:Add Contact:Contact Details1" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Complaint Data:Add Contact:Add-field" button on "Score/CCMS/Case/ComplainantData" page
#    Add second contact
    And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Telephone (Mobile)" from "Complaint Data:Add Contact:Contact Type-field" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "2345678322" into "Complaint Data:Add Contact:Contact Details-field" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Type-field" drop down into "Complaint Data:Add Contact:Contact Type2" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Details-field" text box into "Complaint Data:Add Contact:Contact Details2" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Complaint Data:Add Contact:Add-field" button on "Score/CCMS/Case/ComplainantData" page
        # Add Complaint Type to Submit the Case
    And the user clicks the link with text "Complaint Type"
    And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
    And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
    And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
    And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
    And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
        # Add Product to Submit case
    And the user clicks the link with text "Products"
    And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
    And the user enters "M46051" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est State",Establishment number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name"and Closed-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Closed" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Brand-field" text box on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Name/Type-field" text box on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
    And the user can "see" Product with Brand Name-"Current Value of#Products:Product Brand-field",Product Name-"Current Value of#Products:Product Name/Type-field",Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Products table
    And the user clicks the "Create New Case:Submit for Review" button on "Score/CCMS" page
    And the user clicks the link with text "Case List"
    And the user waits for 2 seconds
    And the user "clicks" created case at "first 10 rows" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"New" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
    And the user clicks the link with text "Case Contacts"
    And the user sees current value of "On Behalf Of: First Name" "On Behalf Of: Last Name" - "On Behalf Of Complainant" in "Case Contacts:Complainant Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "On Behalf Of: First Name" in "Case Contacts:Complainant First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "On Behalf Of: Last Name" in "Case Contacts:Complainant Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "Complainant" text in "Case Contacts:Complainant Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "" text in "Case Contacts:Complainant Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address1" in "Case Contacts:Complainant Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address2" in "Case Contacts:Complainant Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "City" in "Case Contacts:Complainant City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Country" in "Case Contacts:Complainant Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "State" in "Case Contacts:Complainant State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Zip Code" in "Case Contacts:Complainant Zip Code" field on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type1" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details1" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user "edit" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "5454545445" into "Case Contacts:Add Contact Details" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Contact Type" drop down into "Complaint Data:Add Contact:Contact Type2" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Add Contact Details" text box into "Complaint Data:Add Contact:Contact Details2" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Add Contact:Add" button on "Score/CCMS/Case/CaseContacts" page
        # Create case without Anonymous contact details and Verify contacts in case contacts Add Contacts, Delete and Edit
    And the user clicks the "Case Contacts:Complainant Edit" button on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 3" into "Case Contacts:Complainant Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 4" into "Case Contacts:Complainant Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test City" into "Case Contacts:Complainant City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "ANDORRA" from "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "California" from "Case Contacts:Complainant USState" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "24512" into "Case Contacts:Complainant Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant USState" drop down into "Case Contacts:Complainant State" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant Save" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the link with text "Complainant Data"
    And the user can see current value of "Case Contacts:Complainant First Name" in "On Behalf Of: First Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Last Name" in "On Behalf Of: Last Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 1" in "Address1" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 2" in "Address2" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant City" in "City" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Country" in "Country" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant State" in "State" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Zip Code" in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
        # Reopen the case after saved edit contacts and verify changes are present
    And the user clicks the link with text "Case List"
    And the user clicks the "Discard" button on "Score/Dialog" page if opens
    And the user waits for 2 seconds
    And the user "clicks" created case at "first 10 rows" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"New" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
    And the user clicks the link with text "Complainant Data"
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" on Complaint Data page
    And the user can see current value of "Case Contacts:Complainant First Name" in "On Behalf Of: First Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Last Name" in "On Behalf Of: Last Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 1" in "Address1" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 2" in "Address2" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant City" in "City" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Country" in "Country" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant State" in "State" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Zip Code" in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
    And the user sign out from the score application and if pop up opens click discard button

  @US_5290_3
  Scenario: Verify Submit Case with Complaint Type and Product then Edit Complainant Case Contact
  Condition 3 Anonymous Checkbox - checked with First name and Last name but also having on behalf of first name and last name,
  Verify in case contact shows as on behalf of FirstName lastname - On Behalf Of Complainant in contact title and verify edit First name and Last Name in Case Contact update First Name and Last Name for On Behalf of First name and Last Name in Complaint Data
    Given the user navigates to /score on browser
    And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
    And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
    And the user clicks the "Login" button on "Score/User/User/Login" page
    And the user clicks the link with text "CCMS"
    And the user can see text "Cases by Status"
    And the user clicks the link with text "Create New Case"
    And the user can see text "Create Case"
    And the user clicks the link with text "Complaint Data"
    And the user selects "Mr." from "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Last Name" into "Last Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique First Name" into "On Behalf Of: First Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Last Name" into "On Behalf Of: Last Name" on "Score/CCMS/Case/ComplainantData" page
#    And the user clicks on "Anonymous Complainant" element on "Score/CCMS/Case/ComplainantData" page
    And the user check "Anonymous Complainant" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplainantData" page
    And the user sees "Anonymous Complainant" checkbox with hidden or overlapped the input field is "Checked" on "Score/CCMS/Case/ComplainantData" page
    # Bug check Anonymous check box does not clears first name and Last Name field values
    And the user enters "Test Address 1" into "Address1" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test Address 2" into "Address2" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test City" into "City" on "Score/CCMS/Case/ComplainantData" page
    And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Alaska" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "23101" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
    And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
    And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Last Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "On Behalf Of: First Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "On Behalf Of: Last Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address1" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address2" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "City" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Zip Code" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "District" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Create New Case:Case Number" field on "Score/CCMS" page
    And the user remembers the value of "Create New Case:Date Created" field on "Score/CCMS" page
     # Add Case Contacts in Complaint Data
    And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Email" from "Complaint Data:Add Contact:Contact Type-field" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test@test.com" into "Complaint Data:Add Contact:Contact Details-field" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Type-field" drop down into "Complaint Data:Add Contact:Contact Type1" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Details-field" text box into "Complaint Data:Add Contact:Contact Details1" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Complaint Data:Add Contact:Add-field" button on "Score/CCMS/Case/ComplainantData" page
#    Add second contact
    And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Telephone (Mobile)" from "Complaint Data:Add Contact:Contact Type-field" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "8776567765" into "Complaint Data:Add Contact:Contact Details-field" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Type-field" drop down into "Complaint Data:Add Contact:Contact Type2" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Details-field" text box into "Complaint Data:Add Contact:Contact Details2" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Complaint Data:Add Contact:Add-field" button on "Score/CCMS/Case/ComplainantData" page
        # Add Complaint Type to Submit the Case
    And the user clicks the link with text "Complaint Type"
    And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
    And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
    And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
    And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
    And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
        # Add Product to Submit case
    And the user clicks the link with text "Products"
    And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
    And the user enters "M46051" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est State",Establishment number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name"and Closed-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Closed" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Brand-field" text box on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Name/Type-field" text box on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
    And the user can "see" Product with Brand Name-"Current Value of#Products:Product Brand-field",Product Name-"Current Value of#Products:Product Name/Type-field",Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Products table
    And the user clicks the "Create New Case:Submit for Review" button on "Score/CCMS" page
    And the user clicks the link with text "Case List"
    And the user waits for 2 seconds
    And the user "clicks" created case at "first 10 rows" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"New" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
    And the user clicks the link with text "Case Contacts"
    And the user sees current value of "On Behalf Of: First Name" "On Behalf Of: Last Name" - "On Behalf Of Complainant" in "Case Contacts:Complainant Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "On Behalf Of: First Name" in "Case Contacts:Complainant First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "On Behalf Of: Last Name" in "Case Contacts:Complainant Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "Complainant" text in "Case Contacts:Complainant Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "" text in "Case Contacts:Complainant Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address1" in "Case Contacts:Complainant Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address2" in "Case Contacts:Complainant Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "City" in "Case Contacts:Complainant City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Country" in "Case Contacts:Complainant Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "State" in "Case Contacts:Complainant State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Zip Code" in "Case Contacts:Complainant Zip Code" field on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type1" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details1" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user "edit" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "6554543344" into "Case Contacts:Add Contact Details" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Contact Type" drop down into "Complaint Data:Add Contact:Contact Type2" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Add Contact Details" text box into "Complaint Data:Add Contact:Contact Details2" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Add Contact:Add" button on "Score/CCMS/Case/CaseContacts" page
        # Create case without Anonymous contact details and Verify contacts in case contacts Add Contacts, Delete and Edit
    And the user clicks the "Case Contacts:Complainant Edit" button on "Score/CCMS/Case/CaseContacts" page
    # Failing as Field is read only
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 3" into "Case Contacts:Complainant Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 4" into "Case Contacts:Complainant Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test City" into "Case Contacts:Complainant City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "ANDORRA" from "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "California" from "Case Contacts:Complainant USState" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "24512" into "Case Contacts:Complainant Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant USState" drop down into "Case Contacts:Complainant State" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant Save" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the link with text "Complainant Data"
    And the user can see current value of "Case Contacts:Complainant First Name" in "On Behalf Of: First Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Last Name" in "On Behalf Of: Last Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 1" in "Address1" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 2" in "Address2" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant City" in "City" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Country" in "Country" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant State" in "State" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Zip Code" in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
        # Reopen the case after saved edit contacts and verify changes are present
    And the user clicks the link with text "Case List"
    And the user clicks the "Discard" button on "Score/Dialog" page if opens
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" created case at "first 10 rows" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"New" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
    And the user clicks the link with text "Complainant Data"
    And the user can see current value of "Case Contacts:Complainant First Name" in "On Behalf Of: First Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Last Name" in "On Behalf Of: Last Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 1" in "Address1" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 2" in "Address2" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant City" in "City" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Country" in "Country" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant State" in "State" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Zip Code" in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" on Complaint Data page
    And the user sign out from the score application and if pop up opens click discard button

  @US_5290_4
  Scenario: Verify Submit Case with Complaint Type and Product then Edit Complainant Case Contact
  Condition 4 Anonymous Checkbox - checked with First name and Last name but not having on behalf of first name and last name,
  Verify in case contact shows as on Anonymous - Complainant in contact title and verify edit Case Contacts First Name and Last name update Anonymous First name and Last Name in Complaint Data
    Given the user navigates to /score on browser
    And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
    And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
    And the user clicks the "Login" button on "Score/User/User/Login" page
    And the user clicks the link with text "CCMS"
    And the user can see text "Cases by Status"
    And the user clicks the link with text "Create New Case"
    And the user can see text "Create Case"
    And the user clicks the link with text "Complaint Data"
    And the user selects "Mr." from "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Last Name" into "Last Name" on "Score/CCMS/Case/ComplainantData" page
    And the user check "Anonymous Complainant" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplainantData" page
    And the user sees "Anonymous Complainant" checkbox with hidden or overlapped the input field is "Checked" on "Score/CCMS/Case/ComplainantData" page
    #    Bug - Check Anonymous checkbox should clear the First name and Last Name Values
    And the user enters "Test Address 1" into "Address1" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test Address 2" into "Address2" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test City" into "City" on "Score/CCMS/Case/ComplainantData" page
    And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Alaska" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "23101" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
    And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
    And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Last Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "On Behalf Of: First Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "On Behalf Of: Last Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address1" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address2" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "City" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Zip Code" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "District" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Create New Case:Case Number" field on "Score/CCMS" page
    And the user remembers the value of "Create New Case:Date Created" field on "Score/CCMS" page
     # Add Case Contacts in Complaint Data
    And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Email" from "Complaint Data:Add Contact:Contact Type-field" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test@test.com" into "Complaint Data:Add Contact:Contact Details-field" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Type-field" drop down into "Complaint Data:Add Contact:Contact Type1" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Details-field" text box into "Complaint Data:Add Contact:Contact Details1" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Complaint Data:Add Contact:Add-field" button on "Score/CCMS/Case/ComplainantData" page
#    Add second contact
    And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Telephone (Mobile)" from "Complaint Data:Add Contact:Contact Type-field" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "3456444343" into "Complaint Data:Add Contact:Contact Details-field" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Type-field" drop down into "Complaint Data:Add Contact:Contact Type2" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Details-field" text box into "Complaint Data:Add Contact:Contact Details2" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Complaint Data:Add Contact:Add-field" button on "Score/CCMS/Case/ComplainantData" page
        # Add Complaint Type to Submit the Case
    And the user clicks the link with text "Complaint Type"
    And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
    And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
    And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
    And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
    And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
        # Add Product to Submit case
    And the user clicks the link with text "Products"
    And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
    And the user enters "M46051" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est State",Establishment number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name"and Closed-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Closed" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Brand-field" text box on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Name/Type-field" text box on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
    And the user can "see" Product with Brand Name-"Current Value of#Products:Product Brand-field",Product Name-"Current Value of#Products:Product Name/Type-field",Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Products table
    And the user clicks the "Create New Case:Submit for Review" button on "Score/CCMS" page
    And the user clicks the link with text "Case List"
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" created case at "first 10 rows" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"New" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
    And the user clicks the link with text "Case Contacts"
    And the user sees current value of "" "Anonymous" - "Complainant" in "Case Contacts:Complainant Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "First Name" in "Case Contacts:Complainant First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Last Name" in "Case Contacts:Complainant Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "Complainant" text in "Case Contacts:Complainant Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "" text in "Case Contacts:Complainant Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address1" in "Case Contacts:Complainant Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address2" in "Case Contacts:Complainant Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "City" in "Case Contacts:Complainant City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Country" in "Case Contacts:Complainant Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "State" in "Case Contacts:Complainant State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Zip Code" in "Case Contacts:Complainant Zip Code" field on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type1" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details1" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user "edit" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "8976667676" into "Case Contacts:Add Contact Details" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Contact Type" drop down into "Complaint Data:Add Contact:Contact Type2" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Add Contact Details" text box into "Complaint Data:Add Contact:Contact Details2" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Add Contact:Add" button on "Score/CCMS/Case/CaseContacts" page
        # Create case without Anonymous contact details and Verify contacts in case contacts Add Contacts, Delete and Edit
    And the user clicks the "Case Contacts:Complainant Edit" button on "Score/CCMS/Case/CaseContacts" page
#    And the user enters unique "Unique First Name" into "Case Contacts:Complainant First Name" on "Score/CCMS/Case/CaseContacts" page
#    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 3" into "Case Contacts:Complainant Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 4" into "Case Contacts:Complainant Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test City" into "Case Contacts:Complainant City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "ANDORRA" from "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "California" from "Case Contacts:Complainant USState" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "24512" into "Case Contacts:Complainant Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant USState" drop down into "Case Contacts:Complainant State" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant Save" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the link with text "Complainant Data"
    And the user can see current value of "Case Contacts:Complainant First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Last Name" in "Last Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 1" in "Address1" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 2" in "Address2" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant City" in "City" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Country" in "Country" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant State" in "State" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Zip Code" in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
        # Reopen the case after saved edit contacts and verify changes are present
    And the user clicks the link with text "Case List"
    And the user clicks the "Discard" button on "Score/Dialog" page if opens
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" created case at "first 10 rows" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"New" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
    And the user clicks the link with text "Complainant Data"
    And the user can see current value of "Case Contacts:Complainant First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Last Name" in "Last Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 1" in "Address1" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 2" in "Address2" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant City" in "City" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Country" in "Country" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant State" in "State" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Zip Code" in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" on Complaint Data page
    And the user sign out from the score application and if pop up opens click discard button

  @US_5290_5
  Scenario: Verify Submit Case with Complaint Type and Product then Edit Complainant Case Contact
  Condition 5 Anonymous Checkbox - unchecked blank anonymous and On Behalf of First name and Last name,
  Verify in case contact shows as on Anonymous - Complainant in contact title and verify add edit Case contact names will also update Anonymous first and Last Name in complaint data
    Given the user navigates to /score on browser
    And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
    And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
    And the user clicks the "Login" button on "Score/User/User/Login" page
    And the user clicks the link with text "CCMS"
    And the user can see text "Cases by Status"
    And the user clicks the link with text "Create New Case"
    And the user can see text "Create Case"
    And the user clicks the link with text "Complaint Data"
    And the user enters "Todays date" into "Incident Date:" on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Mr." from "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test Address 1" into "Address1" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test Address 2" into "Address2" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test City" into "City" on "Score/CCMS/Case/ComplainantData" page
    And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Alaska" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "23101" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
    And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
    And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Last Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "On Behalf Of: First Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "On Behalf Of: Last Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address1" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address2" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "City" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Zip Code" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "District" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Create New Case:Case Number" field on "Score/CCMS" page
    And the user remembers the value of "Create New Case:Date Created" field on "Score/CCMS" page
      # Add Case Contacts in Complaint Data
    And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Email" from "Complaint Data:Add Contact:Contact Type-field" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test@test.com" into "Complaint Data:Add Contact:Contact Details-field" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Type-field" drop down into "Complaint Data:Add Contact:Contact Type1" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Details-field" text box into "Complaint Data:Add Contact:Contact Details1" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Complaint Data:Add Contact:Add-field" button on "Score/CCMS/Case/ComplainantData" page
#    Add second contact
    And the user clicks the "Complaint Data:Contact Information:Add Contact" button on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Telephone (Mobile)" from "Complaint Data:Add Contact:Contact Type-field" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "7765656565" into "Complaint Data:Add Contact:Contact Details-field" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Type-field" drop down into "Complaint Data:Add Contact:Contact Type2" on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Complaint Data:Add Contact:Contact Details-field" text box into "Complaint Data:Add Contact:Contact Details2" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Complaint Data:Add Contact:Add-field" button on "Score/CCMS/Case/ComplainantData" page
          # Add Complaint Type to Submit the Case
    And the user clicks the link with text "Complaint Type"
    And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
    And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
    And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
    And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
    And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
          # Add Product to Submit case
    And the user clicks the link with text "Products"
    And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
    And the user enters "M46051" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est State",Establishment number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name"and Closed-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Closed" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Brand-field" text box on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Name/Type-field" text box on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
    And the user can "see" Product with Brand Name-"Current Value of#Products:Product Brand-field",Product Name-"Current Value of#Products:Product Name/Type-field",Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Products table
    And the user clicks the "Create New Case:Submit for Review" button on "Score/CCMS" page
    And the user clicks the link with text "Case List"
    And the user waits for 2 seconds
    And the user "clicks" created case at "first 10 rows" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"New" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
    And the user clicks the link with text "Case Contacts"
    And the user sees current value of "" "Anonymous" - "Complainant" in "Case Contacts:Complainant Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "First Name" in "Case Contacts:Complainant First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Last Name" in "Case Contacts:Complainant Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "Complainant" text in "Case Contacts:Complainant Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "" text in "Case Contacts:Complainant Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address1" in "Case Contacts:Complainant Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address2" in "Case Contacts:Complainant Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "City" in "Case Contacts:Complainant City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Country" in "Case Contacts:Complainant Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "State" in "Case Contacts:Complainant State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Zip Code" in "Case Contacts:Complainant Zip Code" field on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type1" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details1" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user "edit" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" for "Case Contacts:Complainant Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "5675663564" into "Case Contacts:Add Contact Details" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Contact Type" drop down into "Complaint Data:Add Contact:Contact Type2" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Add Contact Details" text box into "Complaint Data:Add Contact:Contact Details2" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Add Contact:Add" button on "Score/CCMS/Case/CaseContacts" page
          # Create case without Anonymous contact details and Verify contacts in case contacts Add Contacts, Delete and Edit
    And the user clicks the "Case Contacts:Complainant Edit" button on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 3" into "Case Contacts:Complainant Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 4" into "Case Contacts:Complainant Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test City" into "Case Contacts:Complainant City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "ANDORRA" from "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "California" from "Case Contacts:Complainant USState" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "24512" into "Case Contacts:Complainant Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant USState" drop down into "Case Contacts:Complainant State" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant Save" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the link with text "Complainant Data"
    And the user can see current value of "Case Contacts:Complainant First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Last Name" in "Last Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 1" in "Address1" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 2" in "Address2" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant City" in "City" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Country" in "Country" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant State" in "State" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Zip Code" in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
          # Reopen the case after saved edit contacts and verify changes are present
    And the user clicks the link with text "Case List"
    And the user clicks the "Discard" button on "Score/Dialog" page if opens
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" created case at "first 10 rows" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"New" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
    And the user clicks the link with text "Complainant Data"
    And the user can see current value of "Case Contacts:Complainant First Name" in "First Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Last Name" in "Last Name" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 1" in "Address1" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Address Line 2" in "Address2" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant City" in "City" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Country" in "Country" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant State" in "State" field on "Score/CCMS/Case/ComplainantData" page
    And the user can see current value of "Case Contacts:Complainant Zip Code" in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data:Add Contact:Contact Details2" on Complaint Data page
    And the user sign out from the score application and if pop up opens click discard button

  @US_5258_1_US5289_1
  Scenario: Verify Submit Case with Complaint Type and Product then Edit Complainant Case Contact
  Verify in user can add only 4 more contacts and edit contacts, also verify delete contacts on case contact
  Automate US- 5258: 'Case Details' > 'Case Contacts' > Edit Case contacts
  Automate User Story 5289: 'Case Details' > 'Case Contacts' > Delete Case contacts
  Automate US 5290:'Case Details' > 'Case Contacts' > Accordion row title
    Given the user navigates to /score on browser
    And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
    And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
    And the user clicks the "Login" button on "Score/User/User/Login" page
    And the user clicks the link with text "CCMS"
    And the user can see text "Cases by Status"
    And the user clicks the link with text "Create New Case"
    And the user can see text "Create Case"
    And the user clicks the link with text "Complaint Data"
    And the user enters "Todays date" into "Incident Date:" on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Mr." from "Salutation" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Complaint Description" into "Complaint Description" text area box on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique First Name" into "First Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters unique "Unique Last Name" into "Last Name" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test Address 1" into "Address1" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test Address 2" into "Address2" on "Score/CCMS/Case/ComplainantData" page
    And the user enters "Test City" into "City" on "Score/CCMS/Case/ComplainantData" page
    And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Alaska" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "23101" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
    And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
    And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
    And the user remembers the value of "First Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Last Name" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address1" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Address2" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "City" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Zip Code" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "District" text box on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "Create New Case:Case Number" field on "Score/CCMS" page
    And the user remembers the value of "Create New Case:Date Created" field on "Score/CCMS" page
        # Add Complaint Type to Submit the Case
    And the user clicks the link with text "Complaint Type"
    And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
    And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
    And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
    And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
    And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
        # Add Product to Submit case
    And the user clicks the link with text "Products"
    And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
    And the user enters "M46051" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est State",Establishment number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name"and Closed-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Closed" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Brand-field" text box on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Name/Type-field" text box on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
    And the user can "see" Product with Brand Name-"Current Value of#Products:Product Brand-field",Product Name-"Current Value of#Products:Product Name/Type-field",Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number",Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Products table
    And the user clicks the "Create New Case:Submit for Review" button on "Score/CCMS" page
    And the user clicks the link with text "Case List"
  #      And the user clicks the "Discard" button on "Score/Dialog" page
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" the "Current Value of#Create New Case:Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
    And the user clicks the link with text "Case Contacts"
    And the user sees current value of "First Name" "Last Name" - "Complainant" in "Case Contacts:Complainant Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "First Name" in "Case Contacts:Complainant First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Last Name" in "Case Contacts:Complainant Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "Complainant" text in "Case Contacts:Complainant Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see "" text in "Case Contacts:Complainant Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address1" in "Case Contacts:Complainant Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Address2" in "Case Contacts:Complainant Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "City" in "Case Contacts:Complainant City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Country" in "Case Contacts:Complainant Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "State" in "Case Contacts:Complainant State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Zip Code" in "Case Contacts:Complainant Zip Code" field on "Score/CCMS/Case/CaseContacts" page
        # Add 4 More Contacts  # Add Complaint contact 1
    And the user clicks the "Case Contacts:Add Contacts" button on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant1 First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant1 Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Company" from "Case Contacts:Complainant1 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Company Name1" into "Case Contacts:Complainant1 Company Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 3" into "Case Contacts:Complainant1 Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 4" into "Case Contacts:Complainant1 Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test City1" into "Case Contacts:Complainant1 City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant1 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Delaware" from "Case Contacts:Complainant1 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "25512" into "Case Contacts:Complainant1 Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Company Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "case contacts:complainant1 save" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see "The contact was saved." text in "case contacts:success alert" field on "Score/CCMS/Case/CaseContacts" page
    And the user sees current value of "Case Contacts:Complainant1 First Name" "Case Contacts:Complainant1 Last Name" - "Test Company Name1" in "Case Contacts:Complainant1 Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
     # Add Contact Details    # Add Case Contacts in Complaint Data
    And the user clicks the "Case Contacts:Complainant Data1:Add Contact Type" button on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Telephone (Mobile)" from "Case Contacts:Contact Type" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "5675663564" into "Case Contacts:Add Contact Details" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Contact Type" drop down into "Complaint Data1:Add Contact:Contact Type2" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Add Contact Details" text box into "Complaint Data1:Add Contact:Contact Details2" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Add Contact:Add" button on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data1:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data1:Add Contact:Contact Details2" for "Case Contacts:Complainant1 Accordion Name" on "Score/CCMS/Case/CaseContacts" page
        # Add Complaint Contact 2
    And the user clicks the "Case Contacts:Add Contacts" button on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant2 First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant2 Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Family Member" from "Case Contacts:Complainant2 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Company Name2" into "Case Contacts:Complainant2 Company Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 5" into "Case Contacts:Complainant2 Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 6" into "Case Contacts:Complainant2 Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test City2" into "Case Contacts:Complainant2 City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant2 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Colorado" from "Case Contacts:Complainant2 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "26622" into "Case Contacts:Complainant2 Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Company Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "case contacts:complainant2 save" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see "The contact was saved." text in "case contacts:success alert" field on "Score/CCMS/Case/CaseContacts" page
    And the user sees current value of "Case Contacts:Complainant2 First Name" "Case Contacts:Complainant2 Last Name" - "Test Company Name2" in "Case Contacts:Complainant2 Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
    # Add Contact Details
    And the user clicks the "Case Contacts:Complainant Data2:Add Contact Type" button on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Telephone (Mobile)" from "Case Contacts:Contact Type" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "2233232233" into "Case Contacts:Add Contact Details" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Contact Type" drop down into "Complaint Data2:Add Contact:Contact Type2" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Add Contact Details" text box into "Complaint Data2:Add Contact:Contact Details2" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Add Contact:Add" button on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data2:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data2:Add Contact:Contact Details2" for "Case Contacts:Complainant2 Accordion Name" on "Score/CCMS/Case/CaseContacts" page
        # Add Complaint Contact 3
    And the user clicks the "Case Contacts:Add Contacts" button on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant3 First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant3 Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Lawyer" from "Case Contacts:Complainant3 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Company Name3" into "Case Contacts:Complainant3 Company Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 7" into "Case Contacts:Complainant3 Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 8" into "Case Contacts:Complainant3 Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test City2" into "Case Contacts:Complainant3 City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant3 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Arizona" from "Case Contacts:Complainant3 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "27733" into "Case Contacts:Complainant3 Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Company Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "case contacts:complainant3 save" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see "The contact was saved." text in "case contacts:success alert" field on "Score/CCMS/Case/CaseContacts" page
    And the user sees current value of "Case Contacts:Complainant3 First Name" "Case Contacts:Complainant3 Last Name" - "Test Company Name3" in "Case Contacts:Complainant3 Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
     # Add Contact Details
    And the user clicks the "Case Contacts:Complainant Data3:Add Contact Type" button on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Telephone (Mobile)" from "Case Contacts:Contact Type" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "2233232233" into "Case Contacts:Add Contact Details" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Contact Type" drop down into "Complaint Data3:Add Contact:Contact Type2" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Add Contact Details" text box into "Complaint Data3:Add Contact:Contact Details2" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Add Contact:Add" button on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data3:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data3:Add Contact:Contact Details2" for "Case Contacts:Complainant3 Accordion Name" on "Score/CCMS/Case/CaseContacts" page
        # Add Complaint Contact 4
    And the user clicks the "Case Contacts:Add Contacts" button on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant4 First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant4 Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Medical Personnel" from "Case Contacts:Complainant4 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Company Name4" into "Case Contacts:Complainant4 Company Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 9" into "Case Contacts:Complainant4 Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Address 10" into "Case Contacts:Complainant4 Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test City2" into "Case Contacts:Complainant4 City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant4 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "American Samoa" from "Case Contacts:Complainant4 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "28844" into "Case Contacts:Complainant4 Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant4 First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant4 Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant4 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant4 Company Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant4 Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant4 Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant4 City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant4 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant4 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant4 Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "case contacts:complainant4 save" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see "The contact was saved." text in "case contacts:success alert" field on "Score/CCMS/Case/CaseContacts" page
    And the user sees current value of "Case Contacts:Complainant4 First Name" "Case Contacts:Complainant4 Last Name" - "Test Company Name4" in "Case Contacts:Complainant4 Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
     # Add Contact Details
    And the user clicks the "Case Contacts:Complainant Data4:Add Contact Type" button on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Telephone (Mobile)" from "Case Contacts:Contact Type" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "7765658865" into "Case Contacts:Add Contact Details" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Contact Type" drop down into "Complaint Data4:Add Contact:Contact Type2" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Add Contact Details" text box into "Complaint Data4:Add Contact:Contact Details2" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Add Contact:Add" button on "Score/CCMS/Case/CaseContacts" page
    And the user "sees" contact details with contact type-"Current Value of#Complaint Data4:Add Contact:Contact Type2" and contact info-"Current Value of#Complaint Data4:Add Contact:Contact Details2" for "Case Contacts:Complainant4 Accordion Name" on "Score/CCMS/Case/CaseContacts" page
    And the user can see the "Case Contacts:Add Contacts" button is "Disabled" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant1 Accordion Name" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant1 Edit" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 First Name" in "Case Contacts:Complainant1 First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Last Name" in "Case Contacts:Complainant1 Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Relation To Case" in "Case Contacts:Complainant1 Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Company Name" in "Case Contacts:Complainant1 Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Address Line 1" in "Case Contacts:Complainant1 Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Address Line 2" in "Case Contacts:Complainant1 Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 City" in "Case Contacts:Complainant1 City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Country" in "Case Contacts:Complainant1 Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 State" in "Case Contacts:Complainant1 State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Zip Code" in "Case Contacts:Complainant1 Zip Code" field on "Score/CCMS/Case/CaseContacts" page
        # Contact 1 Enter new values , save and remember new values
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant1 First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant1 Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Point of Purchase" from "Case Contacts:Complainant1 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit Company Name1" into "Case Contacts:Complainant1 Company Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit Address 1" into "Case Contacts:Complainant1 Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit Address 2" into "Case Contacts:Complainant1 Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit City1" into "Case Contacts:Complainant1 City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant1 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Alabama" from "Case Contacts:Complainant1 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "21234" into "Case Contacts:Complainant1 Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Company Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant1 Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "case contacts:complainant1 save" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see "The contact was saved." text in "case contacts:success alert" field on "Score/CCMS/Case/CaseContacts" page
    And the user sees current value of "Case Contacts:Complainant1 First Name" "Case Contacts:Complainant1 Last Name" - "Test Edit Company Name1" in "Case Contacts:Complainant1 Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
        # Click on Contact 2 Edit and Verify saved changes then edit with new values and save
    And the user clicks the "Case Contacts:Complainant2 Accordion Name" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant2 Edit" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant2 First Name" in "Case Contacts:Complainant2 First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant2 Last Name" in "Case Contacts:Complainant2 Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant2 Relation To Case" in "Case Contacts:Complainant2 Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant2 Company Name" in "Case Contacts:Complainant2 Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant2 Address Line 1" in "Case Contacts:Complainant2 Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant2 Address Line 2" in "Case Contacts:Complainant2 Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant2 City" in "Case Contacts:Complainant2 City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant2 Country" in "Case Contacts:Complainant2 Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant2 State" in "Case Contacts:Complainant2 State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant2 Zip Code" in "Case Contacts:Complainant2 Zip Code" field on "Score/CCMS/Case/CaseContacts" page
        # Contact 2 Enter new values , save and remember new values
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant2 First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant2 Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Point of Purchase" from "Case Contacts:Complainant2 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit Company Name2" into "Case Contacts:Complainant2 Company Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit Address 3" into "Case Contacts:Complainant2 Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit Address 4" into "Case Contacts:Complainant2 Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit City2" into "Case Contacts:Complainant2 City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant2 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Hawaii" from "Case Contacts:Complainant2 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "23394" into "Case Contacts:Complainant2 Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Company Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant2 Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "case contacts:complainant2 save" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see "The contact was saved." text in "case contacts:success alert" field on "Score/CCMS/Case/CaseContacts" page
    And the user sees current value of "Case Contacts:Complainant2 First Name" "Case Contacts:Complainant2 Last Name" - "Test Edit Company Name2" in "Case Contacts:Complainant2 Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
        # Click on Contact 3 Edit and Verify saved changes then edit with new values and save
    And the user clicks the "Case Contacts:Complainant3 Accordion Name" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant3 Edit" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant3 First Name" in "Case Contacts:Complainant3 First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant3 Last Name" in "Case Contacts:Complainant3 Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant3 Relation To Case" in "Case Contacts:Complainant3 Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant3 Company Name" in "Case Contacts:Complainant3 Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant3 Address Line 1" in "Case Contacts:Complainant3 Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant3 Address Line 2" in "Case Contacts:Complainant3 Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant3 City" in "Case Contacts:Complainant3 City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant3 Country" in "Case Contacts:Complainant3 Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant3 State" in "Case Contacts:Complainant3 State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant3 Zip Code" in "Case Contacts:Complainant3 Zip Code" field on "Score/CCMS/Case/CaseContacts" page
        # Contact 3 Enter new values , save and remember new values
    And the user enters unique "Unique First Name" into "Case Contacts:Complainant3 First Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters unique "Unique Last Name" into "Case Contacts:Complainant3 Last Name" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Company" from "Case Contacts:Complainant3 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit Company Name3" into "Case Contacts:Complainant3 Company Name" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit Address 5" into "Case Contacts:Complainant3 Address Line 1" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit Address 6" into "Case Contacts:Complainant3 Address Line 2" on "Score/CCMS/Case/CaseContacts" page
    And the user enters "Test Edit City3" into "Case Contacts:Complainant3 City" on "Score/CCMS/Case/CaseContacts" page
    And the user selects "UNITED STATES" from "Case Contacts:Complainant3 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user selects "Florida" from "Case Contacts:Complainant3 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user enters "34567" into "Case Contacts:Complainant3 Zip Code" on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 First Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Last Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Relation To Case" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Company Name" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Address Line 1" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Address Line 2" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 City" text box on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Country" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 State" drop down on "Score/CCMS/Case/CaseContacts" page
    And the user remembers the value of "Case Contacts:Complainant3 Zip Code" text box on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "case contacts:complainant3 save" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see "The contact was saved." text in "case contacts:success alert" field on "Score/CCMS/Case/CaseContacts" page
    And the user sees current value of "Case Contacts:Complainant3 First Name" "Case Contacts:Complainant3 Last Name" - "Test Edit Company Name3" in "Case Contacts:Complainant3 Accordion Name" accordion row on "Score/CCMS/Case/CaseContacts" page
     # Click on Contact 4 Edit and Verify saved changes then edit with new values and save
    And the user clicks the "Case Contacts:Complainant4 Accordion Name" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant4 Edit" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant4 First Name" in "Case Contacts:Complainant4 First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant4 Last Name" in "Case Contacts:Complainant4 Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant4 Relation To Case" in "Case Contacts:Complainant4 Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant4 Company Name" in "Case Contacts:Complainant4 Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant4 Address Line 1" in "Case Contacts:Complainant4 Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant4 Address Line 2" in "Case Contacts:Complainant4 Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant4 City" in "Case Contacts:Complainant4 City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant4 Country" in "Case Contacts:Complainant4 Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant4 State" in "Case Contacts:Complainant4 State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant4 Zip Code" in "Case Contacts:Complainant4 Zip Code" field on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "case contacts:complainant4 save" button on "Score/CCMS/Case/CaseContacts" page
    # Contact 4 Delete record
    And the user clicks the "case contacts:complainant4 delete" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Delete Dialog:Yes" button on "Score/Dialog" page
    And the user can see "The contact was deleted." text in "case contacts:success alert" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see the "Case Contacts:Add Contacts" button is "Enabled" on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
    # Reopen the case after saved edit contacts and verify changes are present
    And the user clicks the link with text "Case List"
    And the user clicks the "Discard" button on "Score/Dialog" page if opens
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" the "Current Value of#Create New Case:Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
    And the user clicks the link with text "Case Contacts"
    And the user clicks the "Case Contacts:Complainant1 Accordion Name" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Case Contacts:Complainant1 Edit" button on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 First Name" in "Case Contacts:Complainant1 First Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Last Name" in "Case Contacts:Complainant1 Last Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Relation To Case" in "Case Contacts:Complainant1 Relation to Case" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Company Name" in "Case Contacts:Complainant1 Company Name" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Address Line 1" in "Case Contacts:Complainant1 Address Line 1" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Address Line 2" in "Case Contacts:Complainant1 Address Line 2" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 City" in "Case Contacts:Complainant1 City" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Country" in "Case Contacts:Complainant1 Country" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 State" in "Case Contacts:Complainant1 State" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see current value of "Case Contacts:Complainant1 Zip Code" in "Case Contacts:Complainant1 Zip Code" field on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "case contacts:complainant1 save" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "case contacts:complainant1 delete" button on "Score/CCMS/Case/CaseContacts" page
    And the user clicks the "Delete Dialog:Yes" button on "Score/Dialog" page
    And the user can see "The contact was deleted." text in "case contacts:success alert" field on "Score/CCMS/Case/CaseContacts" page
    And the user can see the "Case Contacts:Add Contacts" button is "Enabled" on "Score/CCMS/Case/CaseContacts" page
    And the user sign out from the score application and if pop up opens click discard button
