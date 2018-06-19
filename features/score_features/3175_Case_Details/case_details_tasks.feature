@SCORE_REGRESSION
@3175_CASE_DETAILS
@SCORE_CASE_DETAILS_TASKS
Feature: Verify the functionality of Tasks page when navigating from Case Details on CCMS
         Total Test Cases automated - 19
         User Story 4741:'Case Details' > 'Tasks' >Task Current status [TC-7371] Completed - 1
         User Story 4744:'Case Details' > 'Tasks' > Mark a task as complete [TC-7157,TC-7158,TC-7159,TC-7960,TC-7990] Completed - 5 N/A -1
         User Story 4746:'Case Details' > 'Tasks' > Edit action on case task [TC-7056,TC-7057] Completed - 2
         User Story 4747:'Case Details' > 'Tasks' > Update task Assignee [TC-7369] Completed - 1
         User Story 4748:'Case Details' > 'Tasks' > Cancel a task [TC-7370] Completed - 1
         User Story 4740:'Case Details' > 'Tasks' > Add a Case Task [TC-6932,TC-6933,TC-6934] Completed - 3
         User Story 7034:'Case Details' > 'Tasks' > Investigated case status [TC-7439,TC-7440,TC-7441,TC-7442,TC-7443,TC-7444,TC-7445] Completed - 6

  @US_4741_4744_4746_4747_4748_4740
  Scenario: Verify user can add, edit and delete tasks for submitted case
            Automate US 4741:'Case Details' > 'Tasks' >Task Current status
            Automate US 4744:'Case Details' > 'Tasks' > Mark a task as complete
            Automate US 4746 'Case Details' > 'Tasks' > Edit action on case task
            Automate US 4747:'Case Details' > 'Tasks' > Update task Assignee
            Automate US 4748:'Case Details' > 'Tasks' > Cancel a task
            Automate US 4740:'Case Details' > 'Tasks' > Add a Case Task
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
    And the user clicks the link with text "Complaint Data"
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
    And the user waits for 2 seconds
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
         # Add Product 1 to Submit case
    And the user clicks the link with text "Products"
    And the user clicks the "Products:New Product Information" button on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
    And the user enters "M46051" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
        # Bug- Displaying as 2 establishment in case list page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field into "Product1:Est1 State" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field into "Product1:Est1 Number" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field into "Product1:Est1 District" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field into "Product1:Est1 Name" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field into "Product1:Est1 Closed" on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Product1:Est1 State",Establishment number-"Current Value of#Product1:Est1 Number",District-"Current Value of#Product1:Est1 District",Name-"Current Value of#Product1:Est1 Name"and Closed-"Current Value of#Product1:Est1 Closed" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    # Add Another Establishment in Product 1
    And the user clicks the "Products:Establishment Lookup" button on "Score/CCMS/Case/Products" page
    And the user selects "Establishment Number" from "Products:Establishment Lookup:Lookup By-field" drop down on "Score/CCMS/Case/Products" page
    And the user enters "M48253" into "Products:Establishment Lookup:Search Value-field" on "Score/CCMS/Case/Products" page
        # Bug- Displaying as 2 establishment in case list page
    And the user clicks the "Products:Establishment Lookup:Search" button on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est State" field into "Product1:Est2 State" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Number" field into "Product1:Est2 Number" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est District" field into "Product1:Est2 District" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Name" field into "Product1:Est2 Name" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Establishment Lookup:Row 1:Search Result Est Closed" field into "Product1:Est2 Closed" on "Score/CCMS/Case/Products" page
    And the user "Check the Checkbox" for state-"Current Value of#Product1:Est2 State",Establishment number-"Current Value of#Product1:Est2 Number",District-"Current Value of#Product1:Est2 District",Name-"Current Value of#Product1:Est2 Name"and Closed-"Current Value of#Product1:Est2 Closed" on Establishment lookup table
    And the user clicks the "Products:Establishment Lookup:Select" button on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Brand" into "Products:Product Brand-field" on "Score/CCMS/Case/Products" page
    And the user enters unique "Unique Product Name" into "Products:Product Name/Type-field" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Brand-field" text box into "Products1:Product Brand-field" on "Score/CCMS/Case/Products" page
    And the user remembers the value of "Products:Product Name/Type-field" text box into "Products1:Product Name/Type-field" on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Date on Package-field" on "Score/CCMS/Case/Products" page
    And the user enters "Todays Date" into "Products:Purchase Date-field" on "Score/CCMS/Case/Products" page
    And the user clicks the "Products:Save" button on "Score/CCMS/Case/Products" page
    And the user can "see" Product with Brand Name-"Current Value of#Products1:Product Brand-field",Product Name-"Current Value of#Products1:Product Name/Type-field",Establishment Number-"Current Value of#Product1:Est1 Number",Establishment District-"Current Value of#Product1:Est1 District",Establishment Name-"Current Value of#Product1:Est1 Name" on Products table
    # Add product 2 for case
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
    And the user clicks the "Create New Case:Submit for Review" button on "Score/CCMS" page
    And the user clicks the link with text "Case List"
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" the "Current Value of#Create New Case:Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
    And the user clicks the link with text "Tasks"
    And the user "expands" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
    And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
    # Verify Cancel dialog
    And the user enters unique "Unique Note Text" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
    And the user clicks the "Tasks:Add Tasks:Cancel" button on "Score/CCMS/Case/Tasks" page
    And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
    And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
    # Add tasks
    And the user can see "Search CCMS and PHIS;Close Case;Investigate: IIC Report;Forward to IIC for Review;Interview Complainant;Investigate: Other;Interview POP;Interview: Other;Investigate: Verification;Other: Non-Specific;Discuss FSA or PHRE;Review Lab Results;Seek Clarifying Info;Forward to OIEA;Forward to FDA;Forward to DOH/Agriculture" values in "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
    And the user sees values in "Tasks:Add Tasks:Task Type-Field" drop down in alphabetical order on "Score/CCMS/Case/Tasks" page
    And the user selects "Forward to IIC for Review" from "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
    And the user remembers the value of "Tasks:Add Tasks:Task Type-Field" drop down into "Tasks:Add Tasks:Task1 Type" on "Score/CCMS/Case/Tasks" page
    And the user can see "Hotline;OFO - Alameda CA (05);OFO - Atlanta, GA (85);OFO - Chicago, IL (50);OFO - Dallas, TX (40);OFO - Denver CO (15);OFO - Des Moines, IA (25);OFO - Jackson, MS (90);OFO - Philadelphia, PA (60); OFO - Raleigh, NC (80);OFO - Springdale, AR (35);OPHS;OIEA Admin in DC;OIEA Northeast Rgn – Phil.;OIEA Southeast Rgn – Atlanta;OIEA Southwestern Rgn – Dallas;OIEA Western Rgn – Alameda" values in "Tasks:Add Tasks:Assigned To Division-Field" drop down on "Score/CCMS/Case/Tasks" page
    And the user sees values in "Tasks:Add Tasks:Assigned To Division-Field" drop down in alphabetical order on "Score/CCMS/Case/Tasks" page
    # Verify mandatory fields
    And the user enters unique "Unique Note Text" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
    And the user can see "Note Title is mandatory if Note Text was entered." text in "Tasks:Add Tasks:New Note Title-Error" field on "Score/CCMS/Case/Tasks" page
    And the user enters "" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
    And the user enters unique "Unique Note Title" into "Tasks:Add Tasks:New Note Title-Field" on "Score/CCMS/Case/Tasks" page
    And the user can see "Note Text is mandatory if a Note Title was entered." text in "Tasks:Add Tasks:New Note Text-Error" field on "Score/CCMS/Case/Tasks" page
    And the user enters "" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
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
    And the user can "edit" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task1 Type",Created on-"Current Value of#Tasks:Add Tasks:Task1 Created On",Current Status-"Active" and Assigned to-"Jaclynn Gilbert" in Add Contacts table
    And the user selects "Interview Complainant" from "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
    And the user remembers the value of "Tasks:Add Tasks:Task Type-Field" drop down into "Tasks:Add Tasks:Task2 Type" on "Score/CCMS/Case/Tasks" page
    And the user selects "OFO - Dallas, TX (40)" from "Tasks:Add Tasks:Assigned To Division-Field" drop down on "Score/CCMS/Case/Tasks" page
    And the user remembers the value of "Tasks:Add Tasks:Assigned To Division-Field" drop down into "Tasks:Add Tasks:Task1 Assigned To Division" on "Score/CCMS/Case/Tasks" page
    And the user removes selected "Jaclynn Gilbert" option from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
    And the user selects "Johnny McAdams" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
    And the user clicks the "Tasks:Add Tasks:Save" button on "Score/CCMS/Case/Tasks" page
    And the user "Click on Update Assignee Button For" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
    And the user selects "OFO - Denver, CO (15)" from "Tasks:Add Tasks:Update Assignee:Assigned to Division-Field" drop down on "Score/CCMS/Case/Tasks" page
    And the user removes selected "Johnny McAdams" option from "Tasks:Add Tasks:Update Assignee:Assigned to Division-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
    And the user selects "James Trabert" from "Tasks:Add Tasks:Update Assignee:Assigned to Division-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
    And the user enters "Test Instructions" into "Tasks:Add Tasks:Update Assignee:Instructions-Field" text area box on "Score/CCMS/Case/Tasks" page
    And the user clicks the "Tasks:Add Tasks:Update Assignee:Save" button on "Score/CCMS/Case/Tasks" page
    And the user "Click on Mark Complete Button For" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
    And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
    And the user sign out from the score application and if pop up opens click discard button
    And the user selects "Harode, Priyal" from "Select User" drop down on "Score/User/User/Login" page
    And the user clicks the "Login" button on "Score/User/User/Login" page
    And the user clicks the link with text "CCMS"
    And the user can see text "Cases by Status"
    And the user clicks the link with text "Case List"
    And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
    And the user "clicks" the "Current Value of#Create New Case:Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
    And the user clicks the link with text "Tasks"
    And the user "expands" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
    And the user can "cancel" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task2 Type",Created on-"Current Value of#Tasks:Add Tasks:Task1 Created On",Current Status-"Completed" and Assigned to-"James Trabert" in Add Contacts table
    And the user can see "New information received;Different task needed;Duplicate task;Incorrect assignee or District or Individual;Other" values in "Tasks:Add Tasks:Cancel Task:Reason" drop down on "Score/CCMS/Case/Tasks" page
    And the user selects "Other" from "Tasks:Add Tasks:Cancel Task:Reason" drop down on "Score/CCMS/Case/Tasks" page
    And the user can see "A description is required when the Reason is Other" text in "Tasks:Add Tasks:Cancel Task:Description-Error" field on "Score/CCMS/Case/Tasks" page
    And the user enters "A" into "Tasks:Add Tasks:Cancel Task:Description" text area box on "Score/CCMS/Case/Tasks" page
    And the user can see "Additional description must have 2 to 100 characters." text in "Tasks:Add Tasks:Cancel Task:Description-Error" field on "Score/CCMS/Case/Tasks" page
    And the user selects "Different task needed" from "Tasks:Add Tasks:Cancel Task:Reason" drop down on "Score/CCMS/Case/Tasks" page
    And the user enters unique "Unique Additional Description" into "Tasks:Add Tasks:Cancel Task:Description" text area box on "Score/CCMS/Case/Tasks" page
    And the user clicks the "Tasks:Add Tasks:Cancel Task:Save" button on "Score/CCMS/Case/Tasks" page
    And the user can "sees" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task2 Type",Created on-"Current Value of#Tasks:Add Tasks:Task1 Created On",Current Status-"Cancelled" and Assigned to-"James Trabert" in Add Contacts table
    And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
    # Add tasks
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
    And the user clicks on "Tasks:Add Tasks:Mark as Complete-label" element on "Score/CCMS/Case/Tasks" page
    And the user clicks the "Tasks:Add Tasks:Save" button on "Score/CCMS/Case/Tasks" page
    And the user can "see" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task1 Type",Created on-"Current Value of#Tasks:Add Tasks:Task1 Created On",Current Status-"Completed" and Assigned to-"Jaclynn Gilbert" in Add Contacts table
    And the user sign out from the score application and if pop up opens click discard button

  @US_7034
  Scenario: User Story 7034:'Case Details' > 'Tasks' > Investigated case status
            Test Case 7439: Case Details' > 'Tasks' >Case status has to be changed to 'Investigated' when product has any one of these two types of tasks 'Investigate: IIC Report' and 'Investigate: Verification'
            Test Case 7440: Case Details' > 'Tasks' >Case status has to be changed to 'Investigated' when  one of the task type is either  'Investigate: IIC Report' or 'Investigate: Verification'
            Test Case 7441: Case Details' > 'Tasks' >Case status has to be changed to 'Investigated' when  one of the task type is 'Investigate: Verification'
            Test Case 7442: Case status should still be 'Investigated' when both these two task types 'Investigate: Verification' and 'Investigate: IIC Report' are completed
            Test Case 7443: Case status should still be 'Investigated' even anyone of these two task types 'Investigate: Verification' or 'Investigate: IIC Report' are completed
            Test Case 7444: Case status should still be 'Investigated' even anyone of these two task types 'Investigate: Verification' or 'Investigate: IIC Report' are Cancelled
            Test Case 7445: Case status should be 'Active' when both these two task types 'Investigate: Verification' and 'Investigate: IIC Report' are 'Cancelled'

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
      # Add Task 1
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
      # Add Task 2 of type "Investigate: Verification"
      And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
      And the user selects "Investigate: Verification" from "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Task Type-Field" drop down into "Tasks:Add Tasks:Task2 Type" on "Score/CCMS/Case/Tasks" page
      And the user selects "OFO - Denver, CO (15)" from "Tasks:Add Tasks:Assigned To Division-Field" drop down on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Assigned To Division-Field" drop down into "Tasks:Add Tasks:Task2 Assigned To Division" on "Score/CCMS/Case/Tasks" page
      And the user selects "Paul Sherman" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Created On-Field" text box into "Tasks:Add Tasks:Task2 Created On" on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Task Instructions" into "Tasks:Add Tasks:Task Instructions-Field" text area box on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Task Instructions-Field" text area into "Add Tasks:Task2 Instructions" on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Note Title" into "Tasks:Add Tasks:New Note Title-Field" on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:New Note Title-Field" text box into "Add Tasks:Task2 New Note Title" on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Note Text" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:New Note Text-Field" text area into "Add Tasks:Task2 New Note Text" on "Score/CCMS/Case/Tasks" page
      And the user clicks the "Tasks:Add Tasks:Save" button on "Score/CCMS/Case/Tasks" page
      And the user can "see" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task2 Type",Created on-"Current Value of#Tasks:Add Tasks:Task2 Created On",Current Status-"Active" and Assigned to-"Paul Sherman" in Add Contacts table
      # Verify the Case Status on Case Details > Overview, for the task type "Investigate: Verification"
      And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
      And the user clicks the link with text "Overview"
      And the user can see "Investigated" text in "overview:case status" field on "Score/CCMS/Case/Overview" page
      # Go to Tasks Tab to add the Task Type "Investigate: IIC Report"
      And the user clicks the link with text "Case List"
      And the user clicks the "Discard" button on "Score/Dialog" page if opens
      And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
      And the user "Clicks" the "Current Value of#First Case Number" all case number record on View Case table on "Score/CCMS/ViewcaseList" page
      And the user clicks the link with text "Tasks"
        # Add Task 3 of type "Investigate: IIC Report"
      And the user "expands" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
      And the user "Click on Add Tasks button for" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
      And the user selects "Investigate: IIC Report" from "Tasks:Add Tasks:Task Type-Field" drop down on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Task Type-Field" drop down into "Tasks:Add Tasks:Task3 Type" on "Score/CCMS/Case/Tasks" page
      And the user selects "OFO - Philadelphia, PA (60)" from "Tasks:Add Tasks:Assigned To Division-Field" drop down on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Assigned To Division-Field" drop down into "Tasks:Add Tasks:Task3 Assigned To Division" on "Score/CCMS/Case/Tasks" page
      And the user selects "Gina Laspata" from "Tasks:Add Tasks:Assignee-Field" multi-select drop down on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Created On-Field" text box into "Tasks:Add Tasks:Task3 Created On" on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Task Instructions" into "Tasks:Add Tasks:Task Instructions-Field" text area box on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:Task Instructions-Field" text area into "Add Tasks:Task3 Instructions" on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Note Title" into "Tasks:Add Tasks:New Note Title-Field" on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:New Note Title-Field" text box into "Add Tasks:Task3 New Note Title" on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Note Text" into "Tasks:Add Tasks:New Note Text-Field" text area box on "Score/CCMS/Case/Tasks" page
      And the user remembers the value of "Tasks:Add Tasks:New Note Text-Field" text area into "Add Tasks:Task3 New Note Text" on "Score/CCMS/Case/Tasks" page
      And the user clicks the "Tasks:Add Tasks:Save" button on "Score/CCMS/Case/Tasks" page
      And the user can "see" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task3 Type",Created on-"Current Value of#Tasks:Add Tasks:Task3 Created On",Current Status-"Active" and Assigned to-"Gina Laspata" in Add Contacts table
      # Verify the Case Status on Case Details > Overview, for the task type "Investigate: IIC Report"
      And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
      And the user clicks the link with text "Overview"
      And the user can see "Investigated" text in "overview:case status" field on "Score/CCMS/Case/Overview" page
      #Go to the Tasks Tab to MARK COMPLETE the task 3 of task type "Investigate: IIC Report"
      And the user clicks the link with text "Case List"
      And the user clicks the "Discard" button on "Score/Dialog" page if opens
      And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
      And the user "Clicks" the "Current Value of#First Case Number" all case number record on View Case table on "Score/CCMS/ViewcaseList" page
    #    And the user "clicks" the "Current Value of#First Case Number" case number record on View Case table on "Score/CCMS/ViewcaseList" page
      And the user clicks the link with text "Tasks"
      And the user "expands" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
      And the user can "select" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task3 Type",Created on-"Current Value of#Tasks:Add Tasks:Task3 Created On",Current Status-"Active" and Assigned to-"Gina Laspata" in Add Contacts table
      And the user "Click on Mark Complete Button For" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
      And the user waits for 2 seconds
      And the user clicks the "cancel dialog:yes" button on "Score/Dialog" page
      And the user can "see" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task3 Type",Created on-"Current Value of#Tasks:Add Tasks:Task3 Created On",Current Status-"Completed" and Assigned to-"Gina Laspata" in Add Contacts table
      # Verify the Case Status is Investigated on Case Details > Overview, after making the Task 3 as Complete
      And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
      And the user clicks the link with text "Overview"
      And the user can see "Investigated" text in "overview:case status" field on "Score/CCMS/Case/Overview" page
      #Go to the Tasks Tab to MARK COMPLETE, the task 2 of task type "Investigate: Verification"
      And the user clicks the link with text "Case List"
      And the user clicks the "Discard" button on "Score/Dialog" page if opens
      And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
      And the user "Clicks" the "Current Value of#First Case Number" all case number record on View Case table on "Score/CCMS/ViewcaseList" page
      And the user clicks the link with text "Tasks"
      And the user "expands" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
      And the user can "select" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task2 Type",Created on-"Current Value of#Tasks:Add Tasks:Task2 Created On",Current Status-"Active" and Assigned to-"Paul Sherman" in Add Contacts table
      And the user "Click on Mark Complete Button For" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
      And the user waits for 2 seconds
      And the user clicks the "cancel dialog:yes" button on "Score/Dialog" page
      And the user can "see" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task2 Type",Created on-"Current Value of#Tasks:Add Tasks:Task2 Created On",Current Status-"Completed" and Assigned to-"Paul Sherman" in Add Contacts table
      # Verify the Case Status is Investigated on Case Details > Overview, after making the Task 2 as Complete
      And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
      And the user clicks the link with text "Overview"
      And the user can see "Investigated" text in "overview:case status" field on "Score/CCMS/Case/Overview" page
      #Go to the Tasks Tab to CANCEL the task 3 of task type "Investigate: IIC Report"
      And the user clicks the link with text "Case List"
      And the user clicks the "Discard" button on "Score/Dialog" page if opens
      And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
      And the user "Clicks" the "Current Value of#First Case Number" all case number record on View Case table on "Score/CCMS/ViewcaseList" page
      And the user clicks the link with text "Tasks"
      And the user "expands" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
      And the user can "select" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task3 Type",Created on-"Current Value of#Tasks:Add Tasks:Task3 Created On",Current Status-"Completed" and Assigned to-"Gina Laspata" in Add Contacts table
      # CLICK CANCEL for task 3
      And the user can "cancel" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task3 Type",Created on-"Current Value of#Tasks:Add Tasks:Task3 Created On",Current Status-"Completed" and Assigned to-"Gina Laspata" in Add Contacts table
      And the user selects "Different task needed" from "Tasks:Add Tasks:Cancel Task:Reason" drop down on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Additional Description" into "Tasks:Add Tasks:Cancel Task:Description" text area box on "Score/CCMS/Case/Tasks" page
      And the user clicks the "Tasks:Add Tasks:Cancel Task:Save" button on "Score/CCMS/Case/Tasks" page
      And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
      And the user clicks the link with text "Overview"
      And the user can see "Investigated" text in "overview:case status" field on "Score/CCMS/Case/Overview" page
      And the user waits for 2 seconds
      #Go to the Tasks Tab to CANCEL the task 2 of task type "Investigate: Verification"
      And the user clicks the link with text "Case List"
      And the user clicks the "Discard" button on "Score/Dialog" page if opens
      And the user uncheck "Case List:Draft" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:New" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user uncheck "Case List:Active" checkbox with hidden or overlapped the input field on "Score/CCMS/ViewcaseList" page
      And the user waits till "Case List Progress" bar disappears on "Score/CCMS/ViewcaseList" page
      And the user "Clicks" the "Current Value of#First Case Number" all case number record on View Case table on "Score/CCMS/ViewcaseList" page
      And the user clicks the link with text "Tasks"
      And the user "expands" the tasks with Brand Name-"Current Value of#Products2:Product Brand-field" ,Product name-"Current Value of#Products2:Product Name/Type-field" ,Establishment Number-"Current Value of#Product2:Est1 Number" ,Establishment District-"Current Value of#Product2:Est1 District" and Establishment Name-"Current Value of#Product2:Est1 Name" on Task table
      And the user can "select" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task2 Type",Created on-"Current Value of#Tasks:Add Tasks:Task2 Created On",Current Status-"Completed" and Assigned to-"Paul Sherman" in Add Contacts table
      # CLICK CANCEL for task 2
      And the user can "cancel" tasks under Brand Name-"Current Value of#Products2:Product Brand-field",Product Name-"Current Value of#Products2:Product Name/Type-field" with Task Type-"Current Value of#Tasks:Add Tasks:Task2 Type",Created on-"Current Value of#Tasks:Add Tasks:Task2 Created On",Current Status-"Completed" and Assigned to-"Paul Sherman" in Add Contacts table
      And the user selects "Different task needed" from "Tasks:Add Tasks:Cancel Task:Reason" drop down on "Score/CCMS/Case/Tasks" page
      And the user enters unique "Unique Additional Description" into "Tasks:Add Tasks:Cancel Task:Description" text area box on "Score/CCMS/Case/Tasks" page
      And the user clicks the "Tasks:Add Tasks:Cancel Task:Save" button on "Score/CCMS/Case/Tasks" page
      # Verify the Case Status is Investigated on Case Details > Overview after making the Task 3 as CANCEL
      And the user clicks the "Create New Case:Save" button on "Score/CCMS" page
      And the user clicks the link with text "Overview"
      And the user can see "Active" text in "overview:case status" field on "Score/CCMS/Case/Overview" page
#      And the user waits for 3 seconds
      And the user clicks the link with text "Case List"
      And the user clicks the "Discard" button on "Score/Dialog" page if opens
      And the user sign out from the score application and if pop up opens click discard button