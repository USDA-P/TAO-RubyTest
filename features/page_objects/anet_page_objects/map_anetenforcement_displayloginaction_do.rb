def map_anetenforcement_displayloginaction_do
  @page_objects['anetenforcement_displayloginaction_do'] =
                    {
                        #Login
                        'full name' => "css^^.custom-combobox-input.ui-widget.ui-widget-content.ui-state-default.ui-corner-left.ui-autocomplete-input",
                        'submit login' => "xpath^^.//*[@type='submit']",
                        'role'=>"xpath^^//*[@id='change_role_select']",

                        #Enforcement page objects

                        'misconduct investigation' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[6]/a",
                        'enforcement' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[13]/a",
                        'associated case info lookup' => "xpath^^//*[@id='att_container']/div[5]/div[2]/a",
                        'lookup search' => "xpath^^//*[@id='search_container']/div[3]/div[2]/a",

                        'investigation file number' => "xpath^^//*[@class='SearchResultHyperlink']",
                        'primary case type' => "xpath^^.//*[@name='primInvestCaseType']",
                        'primary investigation type' => "xpath^^.//*[@name='primVioType']",
                        'save associated case info' => "xpath^^.//*[text()='Save Associated Case Info']",
                        'enforcement info tab' => "xpath^^.//*[text()='Enforcement Info']",
                        'enforcement case type' => "xpath^^.//*[@name='enforCaseType']",
                        'enforcement violation type' => "xpath^^.//*[@name='enforVioType']",
                        'enforcement status' => "xpath^^.//*[@name='enforStatus']",
                        'primary violator firm name' => "xpath^^.//*[@name='primViolFirmName']",
                        'primary expand' => "xpath^^//*[@id='primSanctionsImage']",
                        'primary felony' => "xpath^^//*[@id='primViolFelonies']",
                        'primary fines' => "xpath^^//*[@id='primViolPenalties']",
                        'secondary expand' => "xpath^^.//*[@id='secSanctionsImage']",
                        'secondary felony' => "xpath^^//*[@id='secViolFelonies']",
                        'secondary fines' => "xpath^^//*[@id='secViolPenalties']",
                        'total felonies' => "xpath^^//*[@id='totfelonies']",
                        'total fines' => "xpath^^//*[@id='totpenalties']",
                        'eld case notes tab' => "xpath^^.//*[text()='ELD Case Notes']",
                        'eld notes' => "xpath^^//*[@id='eedComments']",
                        'eld summary' => "xpath^^//*[@id='actionSummaries']",
                        'additional comments tab' => "xpath^^.//*[text()='Additional Comments']",
                        'additional comments' => "xpath^^//*[@id='additionalComments']",
                        'save additional info' => "xpath^^.//*[text()='Save Additional Info']",
                        'action' => "xpath^^.//*[@id='navigationAction']",
                        'go' => "xpath^^.//*[text()='Go']",
                        'eld specialist' => "xpath^^.//*[@id='navigationAssignee']",
                        'eld specialist go' => "xpath^^//*[@id='EEDAssignmentTxfrRegion3']/a",
                        # 'logout' => "xpath^^//*[@id='leftnavmenu']/div[1]/div[/a/strong",
                        'view enforcement' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[18]/a",
                        'identifier' => "xpath^^//*[@id='action_bar']/div[1]/div[4]",
                        'search' => "xpath^^.//*[text()='Search']",
                        'identifier searchbox' => "xpath^^//*[@id='search_box']/div[2]/div[2]/input",
                        'identifier number' => "xpath^^//*[@id='search_table']/tbody/tr[2]/td[1]/a/span",
                        'eld action1' => "xpath^^//*[@id='eedAction']",
                        'eld date' => "xpath^^//*[@id='eedActionDate']",
                        'ogc action' => "xpath^^//*[@id='ogcAction']",
                        'ogc action date' => "xpath^^//*[@id='ogcActionDate']",
                        'additional comments changed' => "xpath^^//*[@name='additionalComments']",
                        'region' => "xpath^^//*[@id='navigationRegion']",
                        'region go' => "xpath^^//*[@id='EEDAssignmentTxfrRegion3']/a",
                        'rd action' => "xpath^^//*[@id='rmAction']",
                        'rd action date' => "xpath^^//*[@id='rmActionDate']",
                        'closed date' => "xpath^^//*[@id='closedDate']",
                        'rd view enforcement' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[15]/a",
                   

                    }
end