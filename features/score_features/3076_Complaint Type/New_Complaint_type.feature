@SCORE_REGRESSION
@3076_COMPLAINT_TYPE
@SCORE_COMPLAINT_TYPE_NEW_COMPLAINT_TYPE
Feature: This Feature verify all below test cases for Create New Case>Compliant Data Feature
         Total Test Cases automated - 2
         User Story 3166: 'Create New Case' > 'Complainant Data' form - auto populate 'District' field based on 'State' [TC-3951] Completed - 1
         User Story 3078:'Complaint Type' > New Complaint Type [TC-3952] Completed - 1

  @US_3166_1
  Scenario: TC-3951_1 Verify the District names are populated based on few selected USA states.
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
      And the user waits for 2 seconds
      # Verify Country is Enabled and State is disabled with Default as --Select-- value, Zip Code and District is Disabled
      And the user can see "Country" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "District" text box is "Disabled" on "Score/CCMS/Case/ComplainantData" page
      And the user sees "--- Select ---" selected in "State" drop down on "Score/CCMS/Case/ComplainantData" page
      # Verify after selecting Country State and Zip Code is Enabled and District is Disabled
      And the user selects "United States" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "State" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Zip Code" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "District" text box is "Disabled" on "Score/CCMS/Case/ComplainantData" page
      And the user sees "--- Select ---" selected in "State" drop down on "Score/CCMS/Case/ComplainantData" page
       # Verify after sate is selected Zip code is enabled and editable and District is displayed in disabled box
      And the user selects "Alabama" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Zip Code" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user enters "23567" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "District" text box is "Disabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "23567" text in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Jackson, MS (90)" text in "District" field on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Maryland" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Raleigh, NC (80)" text in "District" field on "Score/CCMS/Case/ComplainantData" page
      And the user selects "South Carolina" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Atlanta, GA (85)" text in "District" field on "Score/CCMS/Case/ComplainantData" page
      And the user selects "Wyoming" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user must see "Denver, CO (15)" text in "District" field on "Score/CCMS/Case/ComplainantData" page
      And the user selects "CANADA" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Other Country State" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user enters "Test State" into "Other Country State" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Zip Code" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user enters "55443" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "District" text box is "Disabled" on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Create New Case"
      And the user clicks the "Discard" button on "Score/Dialog" page
      And the user clicks the link with text "Create New Case"
      And the user sign out from the score application and if pop up opens click discard button

  @US_3166_2
  Scenario Outline: TC-3951_2 Verify the District names are populated based on each selected USA states.
    Given the user navigates to /score on browser and go to "Create New Case" page after login as "Gupta, Sam" if current data row is set "<scenario_start>" in data table
#     Verify Country is Enabled and State is disabled with Zip Code and District is Disabled
    Then the user can see "Country" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
    # Verify after selecting Country State and Zip Code is Enabled and District is Disabled
      And the user selects "<Country>" from "Country" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "State" drop down is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Zip Code" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "District" text box is "Disabled" on "Score/CCMS/Case/ComplainantData" page
     # Verify after sate is selected Zip code is enabled and editable and District is displayed in disabled box
      And the user selects "<State>" from "State" drop down on "Score/CCMS/Case/ComplainantData" page
      And the user can see "Zip Code" text box is "Enabled" on "Score/CCMS/Case/ComplainantData" page
      And the user enters "23567" into "Zip Code" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "District" text box is "Disabled" on "Score/CCMS/Case/ComplainantData" page
      And the user can see "23567" text in "Zip Code" field on "Score/CCMS/Case/ComplainantData" page
      And the user can see "<District>" text in "District" field on "Score/CCMS/Case/ComplainantData" page
      And the user clicks the link with text "Logout" if the current row is set to "<scenario_end>" in data table

    Examples:
      | Country       | State                | District              | scenario_start | scenario_end |
      | United States | Alabama              | Jackson, MS (90)      | true           | false        |
      | United States | Alaska               | Denver, CO (15)       | false          | false        |
      | United States | American Samoa       | Denver, CO (15)       | false          | false        |
      | United States | Arizona              | Alameda, CA (05)      | false          | false        |
      | United States | Arkansas             | Springdale, AR (35)   | false          | false        |
      | United States | California           | Alameda, CA (05)      | false          | false        |
      | United States | Colorado             | Denver, CO (15)       | false          | false        |
      | United States | Connecticut          | Philadelphia, PA (60) | false          | false        |
      | United States | Delaware             | Raleigh, NC (80)      | false          | false        |
      | United States | District of Columbia | Raleigh, NC (80)      | false          | false        |
      | United States | Florida              | Atlanta, GA (85)      | false          | false        |
      | United States | Georgia              | Atlanta, GA (85)      | false          | false        |
      | United States | Guam                 | Denver, CO (15)       | false          | false        |
      | United States | Hawaii               | Denver, CO (15)       | false          | false        |
      | United States | Idaho                | Denver, CO (15)       | false          | false        |
      | United States | Illinois             | Chicago, IL (50)      | false          | false        |
      | United States | Indiana              | Chicago, IL (50)      | false          | false        |
      | United States | Iowa                 | Des Moines, IA (25)   | false          | false        |
      | United States | Kansas               | Springdale, AR (35)   | false          | false        |
      | United States | Kentucky             | Jackson, MS (90)      | false          | false        |
      | United States | Louisiana            | Dallas, TX (40)       | false          | false        |
      | United States | Maine                | Philadelphia, PA (60) | false          | false        |
      | United States | Maryland             | Raleigh, NC (80)      | false          | false        |
      | United States | Massachusetts        | Philadelphia, PA (60) | false          | false        |
      | United States | Michigan             | Chicago, IL (50)      | false          | false        |
      | United States | Minnesota            | Des Moines, IA (25)   | false          | false        |
      | United States | Mississippi          | Jackson, MS (90)      | false          | false        |
      | United States | Missouri             | Springdale, AR (35)   | false          | false        |
      | United States | Montana              | Denver, CO (15)       | false          | false        |
      | United States | Nebraska             | Denver, CO (15)       | false          | false        |
      | United States | Nevada               | Alameda, CA (05)      | false          | false        |
      | United States | New Hampshire        | Philadelphia, PA (60) | false          | false        |
      | United States | New Jersey           | Raleigh, NC (80)      | false          | false        |
      | United States | New Mexico           | Dallas, TX (40)       | false          | false        |
      | United States | New York             | Philadelphia, PA (60) | false          | false        |
      | United States | North Carolina       | Raleigh, NC (80)      | false          | false        |
      | United States | North Dakota         | Des Moines, IA (25)   | false          | false        |
      | United States | Ohio                 | Chicago, IL (50)      | false          | false        |
      | United States | Oklahoma             | Dallas, TX (40)       | false          | false        |
      | United States | Oregon               | Denver, CO (15)       | false          | false        |
      | United States | Pennsylvania         | Philadelphia, PA (60) | false          | false        |
      | United States | Puerto Rico          | Atlanta, GA (85)      | false          | false        |
      | United States | Rhode Island         | Philadelphia, PA (60) | false          | false        |
      | United States | South Carolina       | Atlanta, GA (85)      | false          | false        |
      | United States | South Dakota         | Des Moines, IA (25)   | false          | false        |
      | United States | Tennessee            | Jackson, MS (90)      | false          | false        |
      | United States | Texas                | Dallas, TX (40)       | false          | false        |
      | United States | Utah                 | Denver, CO (15)       | false          | false        |
      | United States | Vermont              | Philadelphia, PA (60) | false          | false        |
      | United States | Virgin Islands       | Atlanta, GA (85)      | false          | false        |
      | United States | Virginia             | Raleigh, NC (80)      | false          | false        |
      | United States | Washington           | Denver, CO (15)       | false          | false        |
      | United States | West Virginia        | Raleigh, NC (80)      | false          | false        |
      | United States | Wisconsin            | Des Moines, IA (25)   | false          | false        |
      | United States | Wyoming              | Denver, CO (15)       | false          | true         |

    @US_3078
  Scenario: TC-3952 Verify the options available for New Complaint Type dropdown under Complaint Type tab.
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
      And the user sees values in "Select Complaint Type" drop down in alphabetical order on "Score/CCMS/Case/ComplaintType" page
      And the user can see "-- New Complaint Type --;Allergic Reaction;Economic Adulteration;Foreign Object;Illness;Injury;Misbranding/Mislabeled;Off Taste|Off Odor|Off Appearance;Other (Non-Specific)" values in "Select Complaint Type" drop down on "Score/CCMS/Case/ComplaintType" page
      And the user sign out from the score application and if pop up opens click discard button
