Feature:  Test the Product Control workflow

  @Anet_CPC
  Scenario: Ability to create Product Control
    Given the user navigates to /anet on browser
    And the user clicks the link with text "Login"
    And the user enters "Ryan cast" into "Full Name" on "Anetproductcontrol/displayloginaction.do" page
    And the user press downkey and enter
    And the user clicks on "Submit Login" element on "Anetproductcontrol/displayloginaction.do" page
    And the user can see text "Ryan cast"
    And the user selects "P: ELDDRMGR 600" from "role" drop down on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks on "Product Control" element on "Anetproductcontrol/displayloginaction.do" page
    Then the user clicks on "Custodian Lookup" element on "Anetproductcontrol/displayloginaction.do" page
    And the switch to new tab page
    And the user enters "20124" into "Firm Identifier" on "Anetproductcontrol/displayloginaction.do" page
    And user scrolls down the page
    And the user clicks on "Submit" element on "Anetproductcontrol/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks the link with text "#1 Chinese Restaurant (20124)"
    And the switch to new tab page
    And user scrolls down the page
    And the user selects "Denied" from "Extended Disposition" drop down on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Are Owner and Custodian the same?" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks on "Save General Info" element on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks the link with text "Notice of Detention"
    #Chey Updates
    And the user enters "Todays Date" into "date detained" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation_Test_Product" into "Product Name" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Meats" into "Coding Name" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Cases" into "Unit Type" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "20" into "Total Number of Units" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Todays Date" into "Best Buy Date" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "start date of current month" into "Production Date" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Test123" into "Establishment Number" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation_run" into "Location of Detained Articles" text area box on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "100" into "Product Weight" on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Frozen" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Inspection" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "MDA1" into "Detention code" on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Reason" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation test" into "Description" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "345543" into "Detained Tags" on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Legal Authority for Detention" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation_Test_Run" into "Name and Address of Shipper" text area box on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation_Test_Run" into "Name and Address of Seller" text area box on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Port of Mclean" into "Point of Shipment (Origin)" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Port of vienna" into "Transporter (Origin)" on "Anetproductcontrol/displayloginaction.do" page
    And the user selects "Yes" from "Was Product Sampled?" drop down on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "19989" into "Freezer Lot Number" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation_Test_Owner" into "Name of Owner Notified" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation_Test_Address" into "Name(s) and address(es) of Federal, State, or Local authorities notified" text area box on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Todays Date" into "Date Owner Notified" on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Owner Informed By" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks the link with text "Save Notice of Detention"
    And the user clicks the link with text "Notice of Termination of Detention"
    And the user check "Voluntary Destruction" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Todays Date" into "Destruction Date" on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Placed Embargo" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "State" into "Embargo Description" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "50" into "Product Weight NTD" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Terminate owner" into "Terminated Owner Name" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "299889" into "Terminated Detained Tags" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Todays Date" into "Terminated Detained Date" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Start Date of Current Month" into "Terminated Owner Notified Date" on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Terminated Owner Informed By" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation Owner" into "Notice of Termination of Detention Form Delivered To" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation_remarks" into "NTD Remarks" text area box on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks the link with text "Save Notice Of Termination Of Detention"
    And the user clicks the link with text "Personal Use Notice"
    And the user enters "Todays Date" into "Date Product Released" on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Donation" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Mclean" into "Donation Location" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Todays Date" into "Donation Date" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Mclean Orphanage" into "Donation Organization" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Auto_Ingredients" into "Misbranded by Ingredients" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Auto_Info" into "Misbranded by Label Information" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation_Test_Run" into "Information Description of Product" text area box on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Detained" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user check "Observed On" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Todays Date" into "Observed on Date" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "50" into "Product Weight Pun" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation test" into "owner name pun" on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks the link with text "Save Personal Use"
    And the user clicks the link with text "Voluntary Destruction of Human Food Notice"
    And the user enters "50" into "product weight vdhfn" on "Anetproductcontrol/displayloginaction.do" page
    And the user enters "Automation test" into "owner name vdhfn" on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks on "save voluntay destruction of human food notice" element on "Anetproductcontrol/displayloginaction.do" page
    Then the user clicks on "associated surveillance links" element on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks the link with text "Add Surveillance Link"
    And the switch to new tab page
    And user scrolls down the page
    And the user clicks on "surveillance search" element on "Anetproductcontrol/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks on "surveillance name" element on "Anetproductcontrol/displayloginaction.do" page
    And the return to main page
    Then the user clicks on "Associated Investigation Links" element on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks on "add investigation links" element on "Anetproductcontrol/displayloginaction.do" page
    And the switch to new tab page
  #- chey update
    And user scrolls down the page
    And the user clicks on "surveillance search" element on "Anetproductcontrol/displayloginaction.do" page
    And the switch to new tab page
    And the user clicks on "surveillance name" element on "Anetproductcontrol/displayloginaction.do" page

    And the switch to new tab page
    And the user selects "Submit" from "Actions" drop down on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetproductcontrol/displayloginaction.do" page
    And the user can see text "The record has been successfully submitted to the system."
    And the user selects "Edit" from "Actions" drop down on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetproductcontrol/displayloginaction.do" page

    And the user clicks on "General Info" element on "Anetproductcontrol/displayloginaction.do" page
    And the user check "custodian checkbox" checkbox on "Anetproductcontrol/displayloginaction.do" page
    Then the user clicks on "Associated Investigation Links" element on "Anetproductcontrol/displayloginaction.do" page
    And the user check "mark for deletion" checkbox on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks the link with text "Remove Checked Links"
  #- chey update
    And the user selects "Submit" from "Actions" drop down on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetproductcontrol/displayloginaction.do" page
    And the user can see text "Attention: Change History: Change Description - Please enter a value."
    And the user enters "change1" into "additional comments changed" text area box on "Anetproductcontrol/displayloginaction.do" page
    And the user selects "Submit" from "Actions" drop down on "Anetproductcontrol/displayloginaction.do" page
    And the user clicks on "Go" element on "Anetproductcontrol/displayloginaction.do" page
    And the user can see text "The record has been successfully submitted to the system."