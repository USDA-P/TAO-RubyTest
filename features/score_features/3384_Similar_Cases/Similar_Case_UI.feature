@SCORE_REGRESSION
@3384_SIMILAR_CASE
@SCORE_SIMILAR_CASE
Feature: To Verify all test cases for Create New Case> Similar cases
         Total Test Cases automated - 1
         User Story 3668:'Similar Case' > Tab User Interface [TC-4207] Completed - 1

  @US_3668
  Scenario: TC-4207_1 Verify Similar cases Field on page.
    Given the user navigates to /score on browser
    And the user clicks the link with text "CCMS"
    Then the user can see text "Cases by Status"
    And the user clicks the link with text "Create New Case"
    And the user can see text "Create Case"
    And the user clicks the link with text "Similar Cases"
    And the user waits for 2 seconds
    And the user can see the "Manual Search" button is "Enabled" on "Create Case > Similar Cases" page
    And the user can see the "Run Algorithm" button is "Enabled" on "Create Case > Similar Cases" page
    And the user can see "Case Number" text in "Similar Case Table Column Header1" field on "Create Case > Similar Cases" page
    And the user can see "Reported On" text in "Similar Case Table Column Header2" field on "Create Case > Similar Cases" page
    And the user can see "Complaint Type" text in "Similar Case Table Column Header3" field on "Create Case > Similar Cases" page
    And the user can see "Complainant District" text in "Similar Case Table Column Header4" field on "Create Case > Similar Cases" page
    And the user can see "Status" text in "Similar Case Table Column Header5" field on "Create Case > Similar Cases" page
    And the user can see "Brand" text in "Similar Case Table Column Header6" field on "Create Case > Similar Cases" page
    And the user can see "Establishment Number" text in "Similar Case Table Column Header7" field on "Create Case > Similar Cases" page
    And the user can see "Pathogen" text in "Similar Case Table Column Header8" field on "Create Case > Similar Cases" page
    And the user can see "Product" text in "Similar Case Table Column Header9" field on "Create Case > Similar Cases" page
    And the user can see "Foreign Object Type" text in "Similar Case Table Column Header10" field on "Create Case > Similar Cases" page
    And the user can see "Action" text in "Similar Case Table Column Header11" field on "Create Case > Similar Cases" page
    And the user can see the "First Trash Icon" link on "Create Case > Similar Cases" page
