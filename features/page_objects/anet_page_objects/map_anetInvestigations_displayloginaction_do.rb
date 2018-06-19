def map_anetinvestigation_displayloginaction_do
  @page_objects['anetinvestigation_displayloginaction_do'] =
                    {
                        #Login
                        'full name' => "css^^.custom-combobox-input.ui-widget.ui-widget-content.ui-state-default.ui-corner-left.ui-autocomplete-input",
                        'submit login' => "xpath^^.//*[@type='submit']",
                        'role'=>"xpath^^//*[@id='change_role_select']",
                        
                        #Investigation Page objects
                        'investigation' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[7]/a",
                        'violation date' => "xpath^^//*[@name='violationDate']",
                        'primary lookup' => "xpath^^//*[@id='1']/td[3]/div[1]/a",
                        'secondary lookup' => "xpath^^//*[@id='2']/td[3]/div[1]/a",
                        'tertiary lookup' => "xpath^^//*[@id='3']/td[3]/div[1]/a",
                        'fourth lookup' => "xpath^^//*[@id='4']/td[3]/div[1]/a",
                        'fifth lookup' => "xpath^^//*[@id='5']/td[3]/div[1]/a",
                        'firm identifier' => "xpath^^//*[@id='search_box']/div[10]/div[2]/input",
                        'firm lookup' => "xpath^^//*[@id='firmSearchForm']",
                        'submit' => "xpath^^//*[text()='Submit']",
                        'investigative plan' => "xpath^^.//*[@name='investPlan']",
                        'statute' => "xpath^^.//*[@name='statute']",
                        'primary investigation case type' => "xpath^^//*[@name='primInvestCaseType']",
                        'secondary investigation case type' => "xpath^^//*[@name='secInvestCaseType']",
                        'primary violation type' => "xpath^^//*[@name='primViolType']",
                        'secondary violation type' => "xpath^^//*[@name='secViolType']",
                        'predication code' => "xpath^^//*[@name='predicationCode']",
                        'food safety related' => "xpath^^//*[@name='foodSaftyRelated']",
                        'keywords' => "xpath^^//*[@name='keywords']",
                        'go' => "xpath^^.//*[text()='Go']",
                        'inv comments' => "xpath^^.//*[@id='rdComments']/div[2]/input",
                        'comment go' => "xpath^^.//*[@id='rdComments']/div[2]/a",
                        'actions' => "xpath^^.//*[@id='navigationAction']",
                        'investigation tab' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[11]/a",
                        'investigation file number' => "xpath^^//*[@id='search_box']/div[2]/div[2]/input",
                        'case' => "xpath^^.//*[@id='action_bar']/div[1]/div[4]",
                        'additional comments tab' => "xpath^^//*[@id='AddCommentActionForm']/table/tbody/tr/td/ul[2]/li[3]/a",
                        'additional comments' => "xpath^^//*[@id='att_container']/textarea",
                        'keywords' => "xpath^^//*[@name='keywords']",
                        'delegation of authority' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[3]/a",
                        'last name' => "xpath^^.//*[@name='searchLastName']",
                        'name search' => "xpath^^.//*[contains(text(),'Search')]",
                        'select radio button' => "xpath^^.//*[@value='224']",
                        'program area' => "xpath^^.//*[@id='office_dropdown']",
                        'role type' => "xpath^^.//*[@id='role_type_dropdown']",
                        'role name' => "xpath^^.//*[@id='role_type_input']",
                        'submit role' => "xpath^^.//*[@id='submit_role_button']",
                        'delegation submit' => "xpath^^.//*[@value='Submit']",
                        'investigation number' => "xpath^^//*[@id='search_table']/tbody/tr[2]/td[1]/a/span",
                        'food safety related' => "xpath^^.//*[@id='foodSafty_Related']",


                    }
end