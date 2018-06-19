@SCORE_REGRESSION
@3076_COMPLAINT_TYPE
@SCORE_COMPLAINT_TYPE_ILLNESS
Feature: This feature is to verify illness Complaint Type in CCMS
         Total Test cases automated - 3
         User Story 3091:'Complaint Type' > 'Illness' complaint type [TC-4288,TC-4289,TC-4290] Completed - 3

  @US_3091_1_3091_2
  Scenario: TC-4288 Verify the Illness complaint type form and the fields under it.
            TC-4289 Verify the Default values and the available dropdown values for Illness complaint type form fields.- To be modified with illness
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "CCMS"
      And the user can see text "Cases by Status"
      And the user clicks the link with text "Create New Case"
      And the user can see text "Create Case"
      And the user clicks the link with text "Complaint Type"
      And the user waits for 2 seconds
      And the user can see "Select Complaint Type" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "-- New Complaint Type --" selected in "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Illness" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "How many people consumed the product?" text in "illness:consumer data1:how many people consumed the product?-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:how many people consumed the product?-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      #  How many people became ill? - Numeric Text box
      And the user can see "How many people became ill?" text in "illness:consumer data1:How many people became ill?-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:How many people became ill?-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      #  What is the age(s) of the person(s) that became ill? - Dropdown and text box
      And the user can see "What is the age(s) of the person(s) having the reaction?" text in "illness:consumer data1:what is the age(s) of the person(s) having the reaction?-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:age of ill person years-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Years" selected in "illness:consumer data1:age of ill person years-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Years;Months" values in "illness:consumer data1:age of ill person years-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:age of ill person age number-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      #  Add Age - Button.
      And the user can see the "illness:consumer data1:add age" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user enters "1" into "illness:consumer data1:age of ill person age number-field" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "illness:consumer data1:add age" button on "Score/CCMS/Case/ComplaintType" page
      #  72-hour food history - Table with Columns: Breakfast, Lunch, Dinner, Snacks
      And the user can see "72 Hour Food History" text in "illness:consumer data1:72 hour food history-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Breakfast" text in "illness:consumer data1:72-hours history:breakfast-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "illness:consumer data1:72-hours history:breakfast-character count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:72-hours history:breakfast-field" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Lunch" text in "illness:consumer data1:72-hours history:lunch-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:72-hours history:lunch-field" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "illness:consumer data1:72-hours history:lunch-character count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Dinner" text in "illness:consumer data1:72-hours history:dinner-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:72-hours history:dinner-field" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "illness:consumer data1:72-hours history:dinner-character count" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Snack" text in "illness:consumer data1:72-hours history:snack-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:72-hours history:snack-field" text area box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "100 left" text in "illness:consumer data1:72-hours history:snack-character count" field on "Score/CCMS/Case/ComplaintType" page
      #  Recent Travel - Table with Columns: Travel Type, State/Country Travelled, Travel Date
      And the user can see "Recent Travel" text in "illness:consumer data1:recent travel-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Travel Type" text in "illness:consumer data1:recent travel1:travel type-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel1:travel type-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "None" selected in "illness:consumer data1:recent travel1:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "None;Domestic;International" values in "illness:consumer data1:recent travel1:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:recent travel1:travel type-field" drop down in alphabetical order with default as "None" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "State" text in "illness:consumer data1:recent travel1:state-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel1:state-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Travel Date" text in "illness:consumer data1:recent travel1:travel date-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel1:travel date-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Travel Type" text in "illness:consumer data1:recent travel2:travel type-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel2:travel type-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "State" text in "illness:consumer data1:recent travel2:state-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel2:state-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Travel Date" text in "illness:consumer data1:recent travel2:travel date-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel2:travel date-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Travel Type" text in "illness:consumer data1:recent travel3:travel type-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel3:travel type-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "State" text in "illness:consumer data1:recent travel3:state-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel3:state-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Travel Date" text in "illness:consumer data1:recent travel3:travel date-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel3:travel date-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      #  Medical Visit - Dropdown.
      And the user can see "Medical Visit" text in "illness:consumer data1:medical visit-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medical visit-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "None" selected in "illness:consumer data1:medical visit-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "None;Required Medical Visit;Hospitalized 24+ Hours" values in "illness:consumer data1:medical visit-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:medical visit-field" drop down in alphabetical order with default as "None" on "Score/CCMS/Case/ComplaintType" page
      #  Hospital/Clinic Name - Text box.
      And the user can see "Hospital/Clinic Name" text in "illness:consumer data1:hospital/clinic name-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:hospital/clinic name-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      #  Hospital/Clinic City - Text box.
      And the user can see "Hospital/Clinic City" text in "illness:consumer data1:hospital/clinic city-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:hospital/clinic city-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      #  Hospital/Clinic State - Text box.
      And the user can see "Hospital/Clinic State" text in "illness:consumer data1:hospital/clinic state-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:hospital/clinic state-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "--- Select ---" selected in "illness:consumer data1:hospital/clinic state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:hospital/clinic state-field" drop down in alphabetical order with default as "--- Select ---" on "Score/CCMS/Case/ComplaintType" page
      #  Hospital/Clinic Zip Code - Numeric text box.
      And the user can see "Hospital/Clinic Zip Code" text in "illness:consumer data1:hospital/clinic zip code-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:hospital/clinic zip code-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      #  Hospital/Clinic Country - Text box.
      And the user can see "Hospital/Clinic Country" text in "illness:consumer data1:hospital/clinic country-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:hospital/clinic country-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "UNITED STATES" selected in "illness:consumer data1:hospital/clinic country-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:hospital/clinic country-field" drop down in alphabetical order with default as "UNITED STATES" on "Score/CCMS/Case/ComplaintType" page
      #  Medical Diagnosis - Pathogen/Parasite Dropdown
      And the user can see "Medical Diagnosis" text in "illness:consumer data1:medical diagnosis-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Unknown" text in "illness:consumer data1:medical diagnosis:unknown-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Illness:Consumer Data1:Medical Diagnosis:Unknown-field" checkbox with hidden or overlapped the input field is "Checked" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Pathogen/Parasite" text in "illness:consumer data1:medical diagnosis:pathogen/parasite-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Lab Confirmed?" text in "illness:consumer data1:medical diagnosis:pathogen/parasite:lab confirmed?-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medical diagnosis:pathogen/parasite:lab confirmed?-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Other Comments" text in "illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Chemical" text in "illness:consumer data1:medical diagnosis:chemical-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Lab Confirmed?" text in "illness:consumer data1:medical diagnosis:chemical:lab confirmed?-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medical diagnosis:chemical:lab confirmed?-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Other Comments" text in "illness:consumer data1:medical diagnosis:chemical:other comments-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medical diagnosis:chemical:other comments-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Medications Given" text in "illness:consumer data1:medications given-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medications given-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Additional Contact Information" text in "illness:consumer data1:add additional contacts Info-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:add additional contacts Info-field" multi-select drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "State or Local DOH;Company;Point of Purchase" values in "illness:consumer data1:add additional contacts Info-field" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:add additional contacts Info-field" multi-select drop down in alphabetical order on "Score/CCMS/Case/ComplaintType" page
      #  Add Consumer button
      And the user can see the "illness:consumer data:add consumer" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      #  Save button.
      And the user can see the "illness:consumer data::save" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      #  Cancel button.
      And the user can see the "illness:consumer data::Cancel" button is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user check "Illness:Consumer Data1:Medical Diagnosis:Pathogen/Parasite-field" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Illness:Consumer Data1:Medical Diagnosis:Pathogen/Parasite-field" checkbox with hidden or overlapped the input field is "Checked" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Illness:Consumer Data1:Medical Diagnosis:Unknown-field" checkbox with hidden or overlapped the input field is "UnChecked" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Illness:Consumer Data1:Medical Diagnosis:Chemical-field" checkbox with hidden or overlapped the input field is "UnChecked" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medical diagnosis:pathogen/parasite:lab confirmed?-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:medical diagnosis:pathogen/parasite:lab confirmed?-field" drop down in alphabetical order on "Score/CCMS/Case/ComplaintType" page
      And the user can see "No;Yes" values in "illness:consumer data1:medical diagnosis:pathogen/parasite:lab confirmed?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:medical diagnosis:pathogen/parasite dropdown-field" multi-select drop down in alphabetical order on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Salmonella spp.;E. coli O157:H7;Non-O157 E. coli;Clostridium botulinum;Clostridium perfringens;Listeria monocytogenes;Campylobacter jejuni;Shigella spp.;Staphylococcus aureus;Trichinella spp.;Other" values in "illness:consumer data1:medical diagnosis:pathogen/parasite dropdown-field" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user check "Illness:Consumer Data1:Medical Diagnosis:Chemical-field" checkbox with hidden or overlapped the input field on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Illness:Consumer Data1:Medical Diagnosis:Chemical-field" checkbox with hidden or overlapped the input field is "Checked" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Illness:Consumer Data1:Medical Diagnosis:Pathogen/Parasite-field" checkbox with hidden or overlapped the input field is "Checked" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Illness:Consumer Data1:Medical Diagnosis:Unknown-field" checkbox with hidden or overlapped the input field is "UnChecked" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medical diagnosis:chemical:lab confirmed?-field" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:medical diagnosis:chemical:lab confirmed?-field" drop down in alphabetical order on "Score/CCMS/Case/ComplaintType" page
      And the user can see "No;Yes" values in "illness:consumer data1:medical diagnosis:chemical:lab confirmed?-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:medical diagnosis:chemical dropdown-field" multi-select drop down in alphabetical order on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Pesticides;Antibiotics;Other" values in "illness:consumer data1:medical diagnosis:chemical dropdown-field" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medical diagnosis:chemical:other comments-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:medications given-field" text box is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Medications Given" text in "Illness:Consumer Data1:Medications Given-label" field on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:add additional contacts Info-field" multi-select drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "State or Local DOH;Company;Point of Purchase" values in "illness:consumer data1:add additional contacts info-field" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "illness:consumer data::cancel" button on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "Cancel Dialog:Yes" button on "SCORE/Dialog" page
      And the user sign out from the score application and if pop up opens click discard button

  @US_3091_3
  Scenario: TC-4290 Verify the Mandatory fields and Field length for Free text box.
    Given the user navigates to /score on browser
      And the user clicks the link with text "CCMS"
    Then the user can see text "Select a User to Login:"
      And the user selects "Gupta, Sam" from "Select User" drop down on "Score/User/User/Login" page
      And the user clicks the "Login" button on "Score/User/User/Login" page
      And the user clicks the link with text "CCMS"
      And the user can see text "Cases by Status"
      And the user clicks the link with text "Create New Case"
      And the user can see text "Create Case"
      And the user clicks the link with text "Complaint Type"
      And the user waits for 2 seconds
      And the user can see "Select Complaint Type" drop down is "Enabled" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "-- New Complaint Type --" selected in "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "-- New Complaint Type --;Allergic Reaction;Economic Adulteration;Foreign Object;Illness;Injury;Misbranding/Mislabeled;Off Taste|Off Odor|Off Appearance;Other (Non-Specific)" values in "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Illness" from "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters "6666" into "illness:consumer data1:how many people consumed the product?-field" on "Score/CCMS/Case/ComplaintType" page
      And the user enters "9999" into "illness:consumer data1:how many people became ill?-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "This value cannot be greater than the number of people who consumed the product." text in "illness:consumer data1:how many people became ill?:error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "9" into "illness:consumer data1:how many people consumed the product?-field" on "Score/CCMS/Case/ComplaintType" page
      And the user enters "6" into "illness:consumer data1:how many people became ill?-field" on "Score/CCMS/Case/ComplaintType" page
      And the user enters "1" into "illness:consumer data1:age of ill person age number-field" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "illness:consumer data1:add age" button on "Score/CCMS/Case/ComplaintType" page
      And the user enters "2" into "illness:consumer data1:age of ill person age number-field" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "illness:consumer data1:add age" button on "Score/CCMS/Case/ComplaintType" page
      And the user enters "3" into "illness:consumer data1:age of ill person age number-field" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "illness:consumer data1:add age" button on "Score/CCMS/Case/ComplaintType" page
      And the user enters "4" into "illness:consumer data1:age of ill person age number-field" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "illness:consumer data1:add age" button on "Score/CCMS/Case/ComplaintType" page
      And the user enters "Test Breakfast" into "illness:consumer data1:72-hours history:breakfast-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user enters "Test Lunch" into "illness:consumer data1:72-hours history:lunch-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user enters "Test Dinner" into "illness:consumer data1:72-hours history:dinner-field" text area box on "Score/CCMS/Case/ComplaintType" page
      And the user enters "Test Snacks" into "illness:consumer data1:72-hours history:snack-field" text area box on "Score/CCMS/Case/ComplaintType" page
      #  And the user selects "International" from "illness:consumer data1:recent travel1:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      # Verify the Country dropdown values
      And the user sees values in "illness:consumer data1:recent travel1:travel type-field" drop down in alphabetical order with default as "None" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "None" from "illness:consumer data1:recent travel1:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel1:state-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel1:travel date-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Domestic" from "illness:consumer data1:recent travel1:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      # Verify state dropdown values
      And the user sees values in "illness:consumer data1:recent travel1:state-field" drop down in alphabetical order with default as "--- Select ---" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Alabama" from "illness:consumer data1:recent travel1:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters "31/12/2000" into "illness:consumer data1:recent travel1:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Alabama" selected in "illness:consumer data1:recent travel1:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "The field Travel Date must be a date." text in "illness:consumer data1:recent travel1:travel date:Error" field on "Score/CCMS/Case/ComplaintType" page
      # Bug no error message is displayed
      #  And the user enters "12/12/00" into "illness:consumer data1:recent travel1:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      #    And the user sees "Alabama" selected in "illness:consumer data1:recent travel1:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "The field Travel Date must be a date." text in "illness:consumer data1:recent travel1:travel date:Error" field on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "2000/12/12" into "illness:consumer data1:recent travel1:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      #    And the user sees "Alabama" selected in "illness:consumer data1:recent travel1:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "The field Travel Date must be a date." text in "illness:consumer data1:recent travel1:travel date:Error" field on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "Tomorrows Date" into "illness:consumer data1:recent travel1:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      #    And the user sees "Alabama" selected in "illness:consumer data1:recent travel1:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "The Travel Date should not be future date." text in "illness:consumer data1:recent travel1:travel date:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "todays date" into "illness:consumer data1:recent travel1:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      # Selects international and verify country default as UNITED STATES
      And the user selects "International" from "illness:consumer data1:recent travel1:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:recent travel1:country-field" drop down in alphabetical order with default as "UNITED STATES" on "Score/CCMS/Case/ComplaintType" page
      # Travel type 2
      And the user sees values in "illness:consumer data1:recent travel2:travel type-field" drop down in alphabetical order with default as "None" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "None" from "illness:consumer data1:recent travel2:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel2:state-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel2:travel date-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Domestic" from "illness:consumer data1:recent travel2:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      # Verify state dropdown values
      And the user sees values in "illness:consumer data1:recent travel2:state-field" drop down in alphabetical order with default as "--- Select ---" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Alabama" from "illness:consumer data1:recent travel2:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters "31/12/2000" into "illness:consumer data1:recent travel2:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Alabama" selected in "illness:consumer data1:recent travel2:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "The field Travel Date must be a date." text in "illness:consumer data1:recent travel2:travel date:Error" field on "Score/CCMS/Case/ComplaintType" page
      # Bug no error message is displayed
      #    And the user enters "12/12/00" into "illness:consumer data1:recent travel2:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      #    And the user sees "Alabama" selected in "illness:consumer data1:recent travel2:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      #    And the user can see "The field Travel Date must be a date." text in "illness:consumer data1:recent travel2:travel date:Error" field on "Score/CCMS/Case/ComplaintType" page
      #    And the user enters "2000/12/12" into "illness:consumer data1:recent travel2:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      #    And the user sees "Alabama" selected in "illness:consumer data1:recent travel2:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      #    And the user can see "The field Travel Date must be a date." text in "illness:consumer data1:recent travel2:travel date:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "todays date" into "illness:consumer data1:recent travel2:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      # Selects international and verify country default as UNITED STATES
      And the user selects "International" from "illness:consumer data1:recent travel2:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:recent travel2:country-field" drop down in alphabetical order with default as "UNITED STATES" on "Score/CCMS/Case/ComplaintType" page
      # Travel type 3
      And the user sees values in "illness:consumer data1:recent travel3:travel type-field" drop down in alphabetical order with default as "None" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "None" from "illness:consumer data1:recent travel3:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel3:state-field" drop down is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "illness:consumer data1:recent travel3:travel date-field" text box is "Disabled" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Domestic" from "illness:consumer data1:recent travel3:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      # Verify state dropdown values
      And the user sees values in "illness:consumer data1:recent travel3:state-field" drop down in alphabetical order with default as "--- Select ---" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Alabama" from "illness:consumer data1:recent travel3:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters "31/12/2000" into "illness:consumer data1:recent travel3:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Alabama" selected in "illness:consumer data1:recent travel3:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "The field Travel Date must be a date." text in "illness:consumer data1:recent travel3:travel date:Error" field on "Score/CCMS/Case/ComplaintType" page
      # Bug no error message is displayed
      #    And the user enters "12/12/00" into "illness:consumer data1:recent travel3:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      #    And the user sees "Alabama" selected in "illness:consumer data1:recent travel3:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      #    And the user can see "The field Travel Date must be a date." text in "illness:consumer data1:recent travel3:travel date:Error" field on "Score/CCMS/Case/ComplaintType" page
      #    And the user enters "2000/12/12" into "illness:consumer data1:recent travel3:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      #    And the user sees "Alabama" selected in "illness:consumer data1:recent travel3:state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      #    And the user can see "The field Travel Date must be a date." text in "illness:consumer data1:recent travel3:travel date:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "todays date" into "illness:consumer data1:recent travel3:travel date-field" on "Score/CCMS/Case/ComplaintType" page
      # Selects international and verify country default as UNITED STATES
      And the user selects "International" from "illness:consumer data1:recent travel3:travel type-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees values in "illness:consumer data1:recent travel3:country-field" drop down in alphabetical order with default as "UNITED STATES" on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "31/12/2000" into "Recent Travel:Travel Date2" on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "Invalid Date." text in "Recent Travel:Travel Date2:Error" field on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "12/12/00" into "Recent Travel:Travel Date2" on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "Invalid Date." text in "Recent Travel:Travel Date2:Error" field on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "2000/12/12" into "Recent Travel:Travel Date2" on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "Invalid Date." text in "Recent Travel:Travel Date2:Error" field on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "31/12/2000" into "Recent Travel:Travel Date3" on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "Invalid Date." text in "Recent Travel:Travel Date3:Error" field on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "12/12/00" into "Recent Travel:Travel Date3" on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "Invalid Date." text in "Recent Travel:Travel Date3:Error" field on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "2000/12/12" into "Recent Travel:Travel Date3" on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "Invalid Date." text in "Recent Travel:Travel Date3:Error" field on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "31/12/2000" into "Recent Travel:Travel Date4" on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "Invalid Date." text in "Recent Travel:Travel Date4:Error" field on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "12/12/00" into "Recent Travel:Travel Date4" on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "Invalid Date." text in "Recent Travel:Travel Date4:Error" field on "Score/CCMS/Case/ComplaintType" page
      #  And the user enters "2000/12/12" into "Recent Travel:Travel Date4" on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "Invalid Date." text in "Recent Travel:Travel Date4:Error" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Hospitalized 24+ Hours" from "illness:consumer data1:medical visit-field" drop down on "Score/CCMS/Case/ComplaintType" page
      #  And the user can see "100 Characters" text in "Hospital/Clinic Name:Characters limit" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "Test Hospital Clinic Name Test Hospital Clinic Name Test Hospital Clinic Name Test Hospital Clinic N" into "illness:consumer data1:hospital/clinic name-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Test Hospital Clinic Name Test Hospital Clinic Name Test Hospital Clinic Name Test Hospital Clinic N" text in "illness:consumer data1:hospital/clinic name-field" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "Test Hospital City Name Test Hospital City Name Test Hospital City Name Test Hospital City Name" into "illness:consumer data1:hospital/clinic city-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Test Hospital City Name Test Hospital City Name Test Hospital City Name Test Hospital City Name" text in "illness:consumer data1:hospital/clinic city-field" field on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Alabama" from "illness:consumer data1:hospital/clinic state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sees "Alabama" selected in "illness:consumer data1:hospital/clinic state-field" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user enters "22102" into "illness:consumer data1:hospital/clinic zip code-field" on "Score/CCMS/Case/ComplaintType" page
      And the user clicks on "illness:consumer data1:medical diagnosis:pathogen/parasite-label" element on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "illness:consumer data1:medical diagnosis:pathogen/parasite dropdown-field" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      #    And the user selects "Salmonella spp." from "illness:consumer data1:medical diagnosis:pathogen/parasite dropdown-field" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "When Other is selected you must enter a description." text in "illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Must be 2 to 100 characters" text in "illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "AA" into "illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-field" on "Score/CCMS/Case/ComplaintType" page
      And the user enters unique "unique additional description" into "illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-field" on "Score/CCMS/Case/ComplaintType" page
      And the user remembers the value of "illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-field" text box on "Score/CCMS/Case/ComplaintType" page
      And the user clicks on "illness:consumer data1:medical diagnosis:chemical-label" element on "Score/CCMS/Case/ComplaintType" page
      And the user selects "Other" from "illness:consumer data1:medical diagnosis:chemical dropdown-field" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      #    And the user selects "Pesticides" from "illness:consumer data1:medical diagnosis:chemical dropdown-field" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user can see "When Other is selected you must enter a description." text in "illness:consumer data1:medical diagnosis:chemical:other comments-error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "A" into "illness:consumer data1:medical diagnosis:chemical:other comments-field" on "Score/CCMS/Case/ComplaintType" page
      And the user can see "Must be 2 to 100 characters" text in "illness:consumer data1:medical diagnosis:chemical:other comments-error" field on "Score/CCMS/Case/ComplaintType" page
      And the user enters "AA" into "illness:consumer data1:medical diagnosis:chemical:other comments-field" on "Score/CCMS/Case/ComplaintType" page
      And the user enters "This is for testing only." into "illness:consumer data1:medications given-field" on "Score/CCMS/Case/ComplaintType" page
      And the user selects "State or Local DOH" from "illness:consumer data1:add additional contacts info-field" multi-select drop down on "Score/CCMS/Case/ComplaintType" page
      And the user clicks the "illness:consumer data::save" button on "Score/CCMS/Case/ComplaintType" page
      And the user waits for 2 seconds
      #bug Save Error
      And the user must see "Successfully added complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user "Sees" the Complaint type record with Complaint Type:"Illness" , Medical Visit:"Hospitalized 24+ Hours" and Complaint Description:"Current Value Of#illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-field" on "Score/CCMS/Case/ComplaintType" page
      And the user "Delete" the Complaint type record with Complaint Type:"Illness" , Medical Visit:"Hospitalized 24+ Hours" and Complaint Description:"Current Value Of#illness:consumer data1:medical diagnosis:pathogen/parasite:other comments-field" on "Score/CCMS/Case/ComplaintType" page
      And the user must see "Successfully deleted complaint type." text in "Complaint Type:Success Alert Message" field on "Score/CCMS/Case/ComplaintType" page
      And the user sign out from the score application and if pop up opens click discard button