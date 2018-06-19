def map_anetdoa_displayloginaction_do
  @page_objects['anetdoa_displayloginaction_do'] =
      {
          #Login
          'full name' => "css^^.custom-combobox-input.ui-widget.ui-widget-content.ui-state-default.ui-corner-left.ui-autocomplete-input",
          'submit login' => "xpath^^.//*[@type='submit']",
          'role' => "xpath^^//*[@id='change_role_select']",

          #Delegation of Authority page objects


          'delegation of authority' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[2]/a",
          'edit' => "xpath^^.//*[text()='Edit']",
          'go' => "xpath^^.//*[text()='Go']",
          'action' => "xpath^^.//*[@id='navigationAction']",
          'additional comments changed' => "xpath^^//*[@name='additionalComments']",
          'last name' => "xpath^^//*[@name='searchLastName']",
          'first name' => "xpath^^//*[@name='searchFirstName']",
          'name search' => "xpath^^//*[text()='Search']",
          'select radio button' => "xpath^^//*[@value='224']",
          'program area' => "xpath^^//*[@id='office_dropdown']",
          'role type' => "xpath^^//*[@id='role_type_dropdown']",
          'role name' => "xpath^^//*[@id='role_type_input']",
          'role table' => "xpath^^.//*[@id='four_container'][2]",

      }
end