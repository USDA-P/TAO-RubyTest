@SCORE_REGRESSION
@3250_CASE_LISTS
@SCORE_CASE_LISTS
Feature: Verify Case List below test cases on Score page
         Total Test cases automated - 23
         User Story 2381:'Case List' > Complaint Type Column [TC-6545,TC-6546,TC-6547,TC-6548] Completed - 4
         User Story 2382:'Case List' > 'Est. District(s)' Column [TC-6540,TC-6541,TC-6542,TC-6543,TC-6696] Completed - 5
         User Story 2384:'Case List' > 'Complainant District' Column [TC-6553,TC-6554] Completed - 2
         User Story 2386:'Case List' > 'Est. Number' Column [TC-6549,TC-6550,TC-6551,TC-6552] Completed - 4
         User Story 3286:'Case List' > Number of rows in summary of task table in case summary [TC-6950,TC-7144] Completed - 2
         User Story 6953:'Case List' > CCMS View Case List Should be Filterable by All or My Cases [TC-7403,TC-7404] Completed - 4
         User Story 4899:'Complaint Type' > Case Manager can modify primary complaint type [TC-7405,TC-7406] Completed - 2

  @US_2381_2382_2384_2386_1
  Scenario: Verify user should be able to view 'Complaint Type' column data with primary complaint type listed as the first complaint type in the list.
            Automate test cases for US 2382:'Case List' > 'Est. District(s)' Column
            Automate test cases for US-2384- 'Case List' > 'Complainant District' Column
            Automate test cases for US 2386:'Case List' > 'Est. Number' Column
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "CCMS"
      And the user can see text "Cases by Status"
      And the user clicks the link with text "Create New Case"
      And the user can see text "Create Case"
      # Add Complaint Data
      And the user clicks the link with text "Complaint Data"
      And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Alabama" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user enters "23567" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Jackson, MS (90)" text in "District" field on "Score/CCMS/Case/ComplainantData" page
      And the user remembers the value of "District" text box on "Score/CCMS/Case/ComplainantData" page
      # Add Complaint Type
      And the user clicks the link with text "Complaint Type"
      And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
      And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
      And the user remembers the value of "Create New Case:Case Number" field on "Score/CCMS" page
      And the user remembers the value of "Create New Case:Date Created" field on "Score/CCMS" page
      # Add products
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
      And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
      And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
      And the user clicks the link with text "Case List"
      And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
      And the user "sees" created case at "top" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration",Est District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District",Complainant District-"Current Value of#District",Status-"Draft" and Est-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" on Case List table
      And the user sign out from the score application and if pop up opens click discard button

  @US_2381_2382_2384_2386_2
  Scenario: Verify user should be able to view 'Complaint Type' column data with primary complaint type listed as the first complaint type in the list with multiple complaint type and Establishment.
  Automate test cases for US 2382:'Case List' > 'Est. District(s)' Column
  Automate test cases for US-2384- 'Case List' > 'Complainant District' Column
  Automate test cases for US 2386:'Case List' > 'Est. Number' Column
    Given the user navigates to /score on browser
    And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
    And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
    And the user clicks the "Login" button on "Score/User/User/Login" page
    And the user clicks the link with text "CCMS"
    And the user can see text "Cases by Status"
    And the user clicks the link with text "Create New Case"
    And the user can see text "Create Case"
      # Add Complaint Data
    And the user clicks the link with text "Complaint Data"
    And the user selects "UNITED STATES" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user selects "Alabama" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
    And the user enters "23567" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
    And the user can see "Jackson, MS (90)" text in "District" field on "Score/CCMS/Case/ComplainantData" page
    And the user remembers the value of "District" text box on "Score/CCMS/Case/ComplainantData" page
      # Add Complaint Type
    And the user clicks the link with text "Complaint Type"
    And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
    And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
    And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
    And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
    And the user "Sees" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
    And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
    And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
    And the user remembers the value of "Create New Case:Case Number" field on "Score/CCMS" page
    And the user remembers the value of "Create New Case:Date Created" field on "Score/CCMS" page
    # Add another complaint type
    And the user selects "Misbranding/Mislabeled" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user selects "Other" from "Misbranding/Mislabeled:alleged issue-field" drop down on "Score/CCMS/Case/ComplaintType" page
    And the user enters unique "Unique Additional Description" into "Misbranding/Mislabeled:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
    And the user remembers the value of "Misbranding/Mislabeled:Additional Description-field" text area on "Score/CCMS/Case/ComplaintType" page
    And the user clicks the "Misbranding/Mislabeled:Save" button on "Score/CCMS/Case/ComplaintType" page
    And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      # Add products
    And the user clicks the link with text "Products"
    And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
    And the user enters "M46051" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
          # Bug- Displaying as 2 establishment in case list page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field into "Products:Establishment Lookup:Row 1:Search Result Est State1" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field into "Products:Establishment Lookup:Row 1:Search Result Est Number1" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field into "Products:Establishment Lookup:Row 1:Search Result Est District1" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field into "Products:Establishment Lookup:Row 1:Search Result Est Name1" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field into "Products:Establishment Lookup:Row 1:Search Result Est Closed1" on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est State1",Establishment number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number1",District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District1",Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name1"and Closed-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Closed1" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    # Add another establishment
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
   And the user enters "M48253" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
          # Bug- Not Displaying as 2 establishment in case list page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field into "Products:Establishment Lookup:Row 1:Search Result Est State2" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field into "Products:Establishment Lookup:Row 1:Search Result Est Number2" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field into "Products:Establishment Lookup:Row 1:Search Result Est District2" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field into "Products:Establishment Lookup:Row 1:Search Result Est Name2" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field into "Products:Establishment Lookup:Row 1:Search Result Est Closed2" on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est State2",Establishment number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number2",District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District2",Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name2"and Closed-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Closed2" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Brand-field" text box on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Name/Type-field" text box on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
    # Add another product row
    And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
    And the user enters "M34234" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
          # Bug- Not Displaying as 2 establishment in case list page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field into "Products:Establishment Lookup:Row 1:Search Result Est State3" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field into "Products:Establishment Lookup:Row 1:Search Result Est Number3" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field into "Products:Establishment Lookup:Row 1:Search Result Est District3" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field into "Products:Establishment Lookup:Row 1:Search Result Est Name3" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field into "Products:Establishment Lookup:Row 1:Search Result Est Closed3" on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est State3",Establishment number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number3",District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District3",Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name3"and Closed-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Closed3" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Brand-field" text box on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Name/Type-field" text box on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
    And the user clicks the "Create New Case:Save as Draft" button on "Score/CCMS" page
    And the user can see "Save as Draft successfully completed" text in "Save Draft Success" field on "SCORE/CCMS" page
    And the user clicks the link with text "Case List"
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "sees" created case at "top" with case number-"Current Value of#Create New Case:Case Number",Reported Date-"Todays date",Complaint Type-"Economic Adulteration Misbranding/Mislabeled",Est District-"Philadelphia, PA (60) Dallas, TX (40) Atlanta, GA (85)",Complainant District-"Jackson, MS (90)",Status-"Draft" and Est-"M46051,M34234" on Case List table
    And the user sign out from the score application and if pop up opens click discard button

    @US_3286
    Scenario: US 3286:'Case List' > Number of rows in summary of task table in case summary
      Test Case 6950:Case List > In Case Summary verify user can see max 4 open tasks in Summary of Tasks
      Test Case 7144:Case List >Add four products and create a task for each product and verify these 4 tasks are listed in the order created in Case summary
      Given the user navigates to /score on browser
        And the user clicks the link with text "CCMS"
      Then the user can see text "Select a User to Login:"
        And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
        And the user clicks the "Login" button on "Score/User/User/Login" page
        And the user clicks the link with text "CCMS"
        And the user can see text "Cases by Status"
        And the user clicks the link with text "Case List"
        And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
        And the user remembers the value of "First Case Number" field on "Score/CCMS/ViewcaseList" page
        And the user "clicks" the "Current Value of#First Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
        And the user clicks the link with text "Tasks"
           # Add Product 1 to Submit case
        And the user clicks the link with text "Products"
        And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
        And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
        And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
        And the user enters "M34234" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
          # Bug- Displaying as 2 establishment in case list page
        And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
        And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field into "Product2:Est1 State" on "Score/CCMS/Case/Products" page
        And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field into "Product2:Est1 Number" on "Score/CCMS/Case/Products" page
        And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field into "Product2:Est1 District" on "Score/CCMS/Case/Products" page
        And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field into "Product2:Est1 Name" on "Score/CCMS/Case/Products" page
        And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field into "Product2:Est1 Closed" on "Score/CCMS/Case/Products" page
        And the user "Check the Checkbox" for state-"Current Value of#Product2:Est1 State",Establishment number-"Current Value of#Product2:Est1 Number",District-"Current Value of#Product2:Est1 District",Name-"Current Value of#Product2:Est1 Name"and Closed-"Current Value of#Product2:Est1 Closed" on Establishment lookup table
        And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
        And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
        And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
        And the user remembers the value of "Products:Product Brand-field" text box into "Products2:Product Brand-field" on "Score/CCMS/Case/Products" page
        And the user remembers the value of "Products:Product Name/Type-field" text box into "Products2:Product Name/Type-field" on "Score/CCMS/Case/Products" page
        And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
        And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
        And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
        And the user can see text "Create Case"
        And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
        And the user clicks the link with text "Tasks"
        And the user "expands" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
        And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
      # Add tasks 1
        And the user selects "Forward to IIC for Review" from "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Task Type-Field" drop down into "Tasks:Add Tasks:Task1 Type" on "Score/CCMS/Case/Tasks" page
        And the user selects "OFO - Dallas, TX (40)" from "Tasks:Add Tasks:Assigned To Division-Field" drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Assigned To Division-Field" drop down into "Tasks:Add Tasks:Task1 Assigned To Division" on "Score/CCMS/Case/Tasks" page
        And the user selects "Jaclynn Gilbert" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Created On-Field" text box into "Tasks:Add Tasks:Task1 Created On" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Task Instructions" into "Tasks:Add Tasks:Task Instructions-Field" text area box on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Task Instructions-Field" text area into "Add Tasks:Task1 Instructions" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Note Title" into "Tasks:Add Tasks:New Note Title-Field" on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:New Note Title-Field" text box into "Add Tasks:Task1 New Note Title" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Note Text" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:New Note Text-Field" text area into "Add Tasks:Task1 New Note Text" on "Score/CCMS/Case/Tasks" page
        And the user clicks the "Tasks:Add Tasks:Save" button on "Score/CCMS/Case/Tasks" page
        And the user can "see" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task1 Type",Created on-"Current Value of#Tasks:Add Tasks:Task1 Created On",Current Status-"Active" and Assigned to-"Jaclynn Gilbert" in Add Contacts table
        # Add Task 2
        And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
        And the user selects "Close Case" from "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Task Type-Field" drop down into "Tasks:Add Tasks:Task2 Type" on "Score/CCMS/Case/Tasks" page
        And the user selects "OFO - Atlanta, GA (85)" from "Tasks:Add Tasks:Assigned To Division-Field" drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Assigned To Division-Field" drop down into "Tasks:Add Tasks:Task2 Assigned To Division" on "Score/CCMS/Case/Tasks" page
        And the user selects "John Ziegler" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Created On-Field" text box into "Tasks:Add Tasks:Task2 Created On" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Task Instructions" into "Tasks:Add Tasks:Task Instructions-Field" text area box on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Task Instructions-Field" text area into "Add Tasks:Task2 Instructions" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Note Title" into "Tasks:Add Tasks:New Note Title-Field" on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:New Note Title-Field" text box into "Add Tasks:Task2 New Note Title" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Note Text" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:New Note Text-Field" text area into "Add Tasks:Task2 New Note Text" on "Score/CCMS/Case/Tasks" page
        And the user clicks the "Tasks:Add Tasks:Save" button on "Score/CCMS/Case/Tasks" page
        And the user can "see" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task2 Type",Created on-"Current Value of#Tasks:Add Tasks:Task2 Created On",Current Status-"Active" and Assigned to-"John Ziegler" in Add Contacts table
        # Add Task 3
        And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
        And the user selects "Interview POP" from "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Task Type-Field" drop down into "Tasks:Add Tasks:Task3 Type" on "Score/CCMS/Case/Tasks" page
        And the user selects "OFO - Chicago, IL (50)" from "Tasks:Add Tasks:Assigned To Division-Field" drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Assigned To Division-Field" drop down into "Tasks:Add Tasks:Task3 Assigned To Division" on "Score/CCMS/Case/Tasks" page
        And the user selects "Bill Cranford" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Created On-Field" text box into "Tasks:Add Tasks:Task3 Created On" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Task Instructions" into "Tasks:Add Tasks:Task Instructions-Field" text area box on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Task Instructions-Field" text area into "Add Tasks:Task3 Instructions" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Note Title" into "Tasks:Add Tasks:New Note Title-Field" on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:New Note Title-Field" text box into "Add Tasks:Task3 New Note Title" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Note Text" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:New Note Text-Field" text area into "Add Tasks:Task3 New Note Text" on "Score/CCMS/Case/Tasks" page
        And the user clicks the "Tasks:Add Tasks:Save" button on "Score/CCMS/Case/Tasks" page
        And the user can "see" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task3 Type",Created on-"Current Value of#Tasks:Add Tasks:Task3 Created On",Current Status-"Active" and Assigned to-"Bill Cranford" in Add Contacts table
        # Add Task 4
        And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
        And the user selects "Review Lab Results" from "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Task Type-Field" drop down into "Tasks:Add Tasks:Task4 Type" on "Score/CCMS/Case/Tasks" page
        And the user selects "OFO - Denver, CO (15)" from "Tasks:Add Tasks:Assigned To Division-Field" drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Assigned To Division-Field" drop down into "Tasks:Add Tasks:Task4 Assigned To Division" on "Score/CCMS/Case/Tasks" page
        And the user selects "Paul Sherman" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Created On-Field" text box into "Tasks:Add Tasks:Task4 Created On" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Task Instructions" into "Tasks:Add Tasks:Task Instructions-Field" text area box on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:Task Instructions-Field" text area into "Add Tasks:Task4 Instructions" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Note Title" into "Tasks:Add Tasks:New Note Title-Field" on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:New Note Title-Field" text box into "Add Tasks:Task4 New Note Title" on "Score/CCMS/Case/Tasks" page
        And the user enters unique "Unique Note Text" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
        And the user remembers the value of "Tasks:Add Tasks:New Note Text-Field" text area into "Add Tasks:Task4 New Note Text" on "Score/CCMS/Case/Tasks" page
        And the user clicks the "Tasks:Add Tasks:Save" button on "Score/CCMS/Case/Tasks" page
        And the user can "see" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task4 Type",Created on-"Current Value of#Tasks:Add Tasks:Task4 Created On",Current Status-"Active" and Assigned to-"Paul Sherman" in Add Contacts table
        And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
        And the user clicks the link with text "Case List"
        And the user clicks the "Save" button on "Score/Dialog" page if opens
        And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
        And the user "expands" the "Current Value of#First Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
        And the user sees the Task Name-"Current Value of#Tasks:Add Tasks:Task4 Type" and Assigned to-"Paul Sherman" at "First" row into Case List expand view for "Current Value of#First Case Number" Case Number
        And the user sees the Task Name-"Current Value of#Tasks:Add Tasks:Task3 Type" and Assigned to-"Bill Cranford" at "Second" row into Case List expand view for "Current Value of#First Case Number" Case Number
        And the user sees the Task Name-"Current Value of#Tasks:Add Tasks:Task2 Type" and Assigned to-"John Ziegler" at "Third" row into Case List expand view for "Current Value of#First Case Number" Case Number
        And the user sees the Task Name-"Current Value of#Tasks:Add Tasks:Task1 Type" and Assigned to-"Jaclynn Gilbert" at "Fourth" row into Case List expand view for "Current Value of#First Case Number" Case Number
        And the user sign out from the score application and if pop up opens click discard button

      @US_6953
      Scenario: Verify 'Case List' > CCMS View Case List Should be Filterable by All or My Cases
        Verify Cases will be displayed to assigned cases under my cases
        Verify Cases will be assigned to user who has created and assigned tasks to himself
        Given the user navigates to /score on browser
          And the user clicks the link with text "CCMS"
        Then the user can see text "Select a User to Login:"
          And the user selects "Black, John" from "Select User" drop down on "Score/User/User/Login" page
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
          And the user "Clicks On Case Number Link in" the submitted case success message with case number- "Current Value of#Create New Case:Case Number" in "submit case success" on "SCORE/Home" page
          And the user clicks the link with text "Tasks"
          And the user "expands" the tasks with Brand Name-"Current Value of#Products:Product Brand-field" ,Product name-"Current Value of#Products:Product Name/Type-field" ,Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" ,Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District" and Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Task table
          And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products:Product Brand-field" ,Product name-"Current Value of#Products:Product Name/Type-field" ,Establishment Number-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Number" ,Establishment District-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est District" and Establishment Name-"Current Value of#Products:Establishment Lookup:Row 1:Search Result Est Name" on Task table
          # Add tasks
          And the user selects "Forward to IIC for Review" from "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
          And the user remembers the value of "Tasks:Add Tasks:Task Type-Field" drop down into "Tasks:Add Tasks:Task1 Type" on "Score/CCMS/Case/Tasks" page
          And the user selects "OFO - Des Moines, IA (25)" from "Tasks:Add Tasks:Assigned To Division-Field" drop down on "Score/CCMS/Case/Tasks" page
          And the user remembers the value of "Tasks:Add Tasks:Assigned To Division-Field" drop down into "Tasks:Add Tasks:Task1 Assigned To Division" on "Score/CCMS/Case/Tasks" page
          And the user selects "John Black" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
          And the user selects "Todd Gerwig" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
          And the user remembers the value of "Tasks:Add Tasks:Created On-Field" text box into "Tasks:Add Tasks:Task1 Created On" on "Score/CCMS/Case/Tasks" page
          And the user enters unique "Unique Task Instructions" into "Tasks:Add Tasks:Task Instructions-Field" text area box on "Score/CCMS/Case/Tasks" page
          And the user remembers the value of "Tasks:Add Tasks:Task Instructions-Field" text area into "Add Tasks:Task1 Instructions" on "Score/CCMS/Case/Tasks" page
          And the user enters unique "Unique Note Title" into "Tasks:Add Tasks:New Note Title-Field" on "Score/CCMS/Case/Tasks" page
          And the user remembers the value of "Tasks:Add Tasks:New Note Title-Field" text box into "Add Tasks:Task1 New Note Title" on "Score/CCMS/Case/Tasks" page
          And the user enters unique "Unique Note Text" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
          And the user remembers the value of "Tasks:Add Tasks:New Note Text-Field" text area into "Add Tasks:Task1 New Note Text" on "Score/CCMS/Case/Tasks" page
          And the user clicks the "Tasks:Add Tasks:Save" button on "Score/CCMS/Case/Tasks" page
          And the user can "see" tasks under Brand Name-"Current Value of#Products:Product Brand-field",Product Name-"Current Value of#Products:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task1 Type",Created on-"Current Value of#Tasks:Add Tasks:Task1 Created On",Current Status-"Active" and Assigned to-"John Black, Todd Gerwig" in Add Contacts table
          And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
          And the user sign out from the score application and if pop up opens click discard button
          And the user selects "Black, John" from "Select User" drop down on "Score/User/User/Login" page
          And the user clicks the "Login" button on "Score/User/User/Login" page
          And the user clicks the link with text "CCMS"
          And the user can see text "Cases by Status"
          And the user clicks the link with text "Case List"
          And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
          And the user "Check" the "Case List:My Cases" radio button with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user "sees" the "Current Value of#Create New Case:Case Number" all case number record on View Case table on "Score/CCMS/ViewcaseList" page
          And the user sign out from the score application and if pop up opens click discard button
          And the user selects "Gerwig, Todd" from "Select User" drop down on "Score/User/User/Login" page
          And the user clicks the "Login" button on "Score/User/User/Login" page
          And the user clicks the link with text "CCMS"
          And the user can see text "Cases by Status"
          And the user clicks the link with text "Case List"
          And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
          And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
          And the user "Check" the "Case List:My Cases" radio button with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user "sees" the "Current Value of#Create New Case:Case Number" all case number record on View Case table on "Score/CCMS/ViewcaseList" page
          And the user sign out from the score application and if pop up opens click discard button
          #Logina s Score admin and see Case Manager can see records
          And the user selects "Admin, Score" from "Select User" drop down on "Score/User/User/Login" page
          And the user clicks the "Login" button on "Score/User/User/Login" page
          And the user clicks the link with text "CCMS"
          And the user can see text "Cases by Status"
          And the user clicks the link with text "Case List"
          And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
          And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
          And the user "Check" the "Case List:My Cases" radio button with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
          And the user "sees" the "Current Value of#Create New Case:Case Number" all case number record on View Case table on "Score/CCMS/ViewcaseList" page
          And the user sign out from the score application and if pop up opens click discard button

        @US_4899
          # Failing scenarios because of bug not able to delete Economic and Others complaint type
    Scenario: Verify 'Complaint Type' > Case Manager can modify primary complaint type fro Draft Case
              Test Case 7405:Verify case manager should be able to set any other complaint type as primary
      Given the user navigates to /score on browser
        And the user clicks the link with text "CCMS"
      Then the user can see text "Select a User to Login:"
        And the user selects "Admin, Score" from "Select User" drop down on "Score/User/User/Login" page
        And the user clicks the "Login" button on "Score/User/User/Login" page
        And the user clicks the link with text "CCMS"
        And the user can see text "Cases by Status"
        And the user clicks the link with text "Case List"
        And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user uncheck "Case List:Investigated" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
        And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
        And the user remembers the value of "First Case Number" field on "Score/CCMS/ViewcaseList" page
        And the user "clicks" the "Current Value of#First Case Number" all case number record on View Case table on "Score/CCMS/ViewcaseList" page
        And the user clicks the link with text "Complaint Type"
        And the user deletes all added complaint type
        And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
        And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
        And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
        And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
        And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
        And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
        And the user "Sees Primary Checkbox Checked For" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
        And the user selects "Misbranding/Mislabeled" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
        And the user selects "Other" from "Misbranding/Mislabeled:alleged issue-field" drop down on "Score/CCMS/Case/ComplaintType" page
        And the user enters unique "Unique Additional Description" into "Misbranding/Mislabeled:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
        And the user remembers the value of "Misbranding/Mislabeled:Additional Description-field" text area on "Score/CCMS/Case/ComplaintType" page
        And the user clicks the "Misbranding/Mislabeled:Save" button on "Score/CCMS/Case/ComplaintType" page
        And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
        And the user "Sees Primary Checkbox Not Checked For" the Complaint type record with Complaint Type:"Misbranding/Mislabeled" , Medical Visit:"None" and Complaint Description:"Current Value Of#Misbranding/Mislabeled:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
        And the user "Selects" the Complaint type record with Complaint Type:"Misbranding/Mislabeled" , Medical Visit:"None" and Complaint Description:"Current Value Of#Misbranding/Mislabeled:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
        And the user clicks the "Complaint Type:Set Primary" button on "Score/CCMS/Case/ComplaintType" page
        And the user can see "Successfully set Primary Complaint Type" text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
        And the user "Sees Primary Checkbox Checked For" the Complaint type record with Complaint Type:"Misbranding/Mislabeled" , Medical Visit:"None" and Complaint Description:"Current Value Of#Misbranding/Mislabeled:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
        And the user selects "Other (Non-Specific)" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
        And the user selects "Packaging" from "Other:Concern-field" drop down on "Score/CCMS/Case/ComplaintType" page
        And the user remembers the value of "Other:Concern-field" drop down into "Other:Concern-field" on "Score/CCMS/Case/ComplaintType" page
        And the user enters unique "Unique Additional Description" into "Other:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
        And the user remembers the value of "Other:Additional Description-field" text area on "Score/CCMS/Case/ComplaintType" page
        And the user clicks the "Other:Save" button on "Score/CCMS/Case/ComplaintType" page
        And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
        And the user "Sees Primary Checkbox Not Checked For" the Complaint type record with Complaint Type:"Other" , Medical Visit:"None" and Complaint Description:"Current Value Of#Other:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
        And the user "Selects" the Complaint type record with Complaint Type:"Other" , Medical Visit:"None" and Complaint Description:"Current Value Of#Other:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
        And the user clicks the "Complaint Type:Set Primary" button on "Score/CCMS/Case/ComplaintType" page
        And the user can see "Successfully set Primary Complaint Type" text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
        And the user "Sees Primary Checkbox Checked For" the Complaint type record with Complaint Type:"Other" , Medical Visit:"None" and Complaint Description:"Current Value Of#Other:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
        And the user sign out from the score application and if pop up opens click discard button

  @US_4899_1
  Scenario: Verify 'Complaint Type' > Case Manager can modify primary complaint type during Create case
    Test Case 7405:Verify case manager should be able to set any other complaint type as primary
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Admin, Score" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "CCMS"
      And the user can see text "Cases by Status"
      And the user clicks the link with text "Create New Case"
      And the user clicks the link with text "Complaint Type"
      And the user selects "Economic Adulteration" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Fat" from "Economic Adulteration:Concern" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Economic Adulteration:Additional Description" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Economic Adulteration:Additional Description" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Economic Adulteration:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees Primary Checkbox Checked For" the Complaint type record with Complaint Type:"Economic Adulteration" , Medical Visit:"None" and Complaint Description:"Current Value Of#Economic Adulteration:Additional Description" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Misbranding/Mislabeled" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "Misbranding/Mislabeled:alleged issue-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Misbranding/Mislabeled:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Misbranding/Mislabeled:Additional Description-field" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Misbranding/Mislabeled:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees Primary Checkbox Not Checked For" the Complaint type record with Complaint Type:"Misbranding/Mislabeled" , Medical Visit:"None" and Complaint Description:"Current Value Of#Misbranding/Mislabeled:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user "Selects" the Complaint type record with Complaint Type:"Misbranding/Mislabeled" , Medical Visit:"None" and Complaint Description:"Current Value Of#Misbranding/Mislabeled:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Complaint Type:Set Primary" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully set Primary Complaint Type" text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees Primary Checkbox Checked For" the Complaint type record with Complaint Type:"Misbranding/Mislabeled" , Medical Visit:"None" and Complaint Description:"Current Value Of#Misbranding/Mislabeled:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other (Non-Specific)" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Packaging" from "Other:Concern-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Other:Concern-field" drop down into "Other:Concern-field" on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "Unique Additional Description" into "Other:Additional Description-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "Other:Additional Description-field" text area on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Other:Save" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees Primary Checkbox Not Checked For" the Complaint type record with Complaint Type:"Other" , Medical Visit:"None" and Complaint Description:"Current Value Of#Other:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user "Selects" the Complaint type record with Complaint Type:"Other" , Medical Visit:"None" and Complaint Description:"Current Value Of#Other:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Complaint Type:Set Primary" button on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Successfully set Primary Complaint Type" text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees Primary Checkbox Checked For" the Complaint type record with Complaint Type:"Other" , Medical Visit:"None" and Complaint Description:"Current Value Of#Other:Additional Description-field" on "Score/CCMS/Case/ComplaintType" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_4899_2
  Scenario: Verify 'Complaint Type' > Non Admin can not modify primary complaint type during Create case
    Test Case 7406:Verify when non-Admin/Case Manager is accessing the case do not have the ability to set the primary complaint type
    Given the user navigates to /score on browser
    And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
    And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
    And the user clicks the "Login" button on "Score/User/User/Login" page
    And the user clicks the link with text "CCMS"
    And the user can see text "Cases by Status"
    And the user clicks the link with text "Create New Case"
    And the user clicks the link with text "Complaint Type"
    And the user cannot see "Complaint Type:Set Primary" element on "Score/CCMS/Case/ComplaintType" page
    And the user sign out from the score application and if pop up opens click discard button
