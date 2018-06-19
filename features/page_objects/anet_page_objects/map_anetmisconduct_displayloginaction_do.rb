def map_anetmisconduct_displayloginaction_do
  @page_objects['anetmisconduct_displayloginaction_do'] =
                    {
                        #Login
                        'full name' => "css^^.custom-combobox-input.ui-widget.ui-widget-content.ui-state-default.ui-corner-left.ui-autocomplete-input",
                        'submit login' => "xpath^^.//*[@type='submit']",
                        'role'=>"xpath^^//*[@id='change_role_select']",
                        

                   # Misconduct Page Objects
                        'misconduct investigation' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[6]/a",
                        'type' => "xpath^^ //*[@id='misInvType']",
                        'source' => "xpath^^ //*[@id='sourceType']",
                        'complaint notification date' => "xpath^^ //*[@id='complainantNotificationDate']",
                        'subject name' => "xpath^^ //*[@id='firstSubName']",
                        'investigation warranted' => "xpath^^//*[@id='invWarranted']",
                        'authorization letter sent date' => "xpath^^ //*[@id='authLetterDate']",
                        'investigation comment' => "xpath^^ //*[@name='initiateInvestigationComment']",
                        'save genearl info' => "xpath^^.//*[text()='Save General Info']",
                        'evidence collected tab' => "xpath^^.//*[text()='Evidence Collected']",
                        'evidence officer' => "xpath^^.//*[@name='evidenceOfficer']",
                        'add evidence' => "xpath^^.//*[@id='addEvidenceId']",
                        'evidence date' => "xpath^^//*[@id='newEvidence']/div[2]/div[2]/input",
                        'evidence record name' => "xpath^^//*[@id='newEvidence']/div[3]/div[2]/input",
                        'save evidence' => "xpath^^//*[@id='newEvidence']/div[1]/a[1]",
                        'evidence name' => "xpath^^//*[@id='evidence_table']/tbody/tr[2]/td[1]",
                        'forensic evidence collected tab' => "xpath^^.//*[text()='Forensic Evidence Collected']",
                        'save forensic evidence' => "xpath^^//*[@id='newEvidence']/div[1]/a[1]",
                        'go' => "xpath^^.//*[text()='Go']",
                        'actions' => "xpath^^.//*[@id='navigationAction']",
                        'investigator go' => "xpath^^//*[@id='RMAssignment3']/a",
                        'view misconduct' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[4]/a",
                        'search' => "xpath^^//*[@id='search_container']/div[3]/div[2]/a",
                        'last page' => "xpath^^//*[@id='att_container']/table2]/tbody/tr/td/[a3]",
                        'case number' => "xpath^^//*[@id='search_table']/tbody/tr[2]/td[1]/a/span",
                        'delete' => "xpath^^//*[@id='trashcan0']/a/img",
                        'delete tab' => "xpath^^.//*[text()='Delete']",
                        'additional comments changed' => "xpath^^//*[@name='additionalComments']",
                        'misconduct case number' => "xpath^^.//*[@name='caseNumber']",
                        'misconduct case id' => "xpath^^//*[@id='action_bar']/div[1]/div[4]",
                        'supv view misconduct' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[8]/a",


                    }
end