def map_anetaer_displayloginaction_do
  @page_objects['anetaer_displayloginaction_do'] =
                    {
                        #Login
                        'full name' => "css^^.custom-combobox-input.ui-widget.ui-widget-content.ui-state-default.ui-corner-left.ui-autocomplete-input",
                        'submit login' => "xpath^^.//*[@type='submit']",
                        'role'=>"xpath^^//*[@id='change_role_select']",
                        
                        #AER Page Objects


                        
  'create aer'=>"xpath^^.//*[@id='leftnavmenu']/div[3]/p[6]/a",
  'reason for aer'=>"xpath^^//*[@id='reasonAer']",
  'type of aer'=>"xpath^^//*[@id='typeAer']",
  'trigger'=>"xpath^^//*[@id='fsaTrigger']",
  'save general information'=>"xpath^^.//*[text()='Save General Information']",
  'evidence collected'=>"xpath^^.//*[text()='Evidence Collected']",
  'date of evidence destruction'=>"xpath^^.//*[@id='evidenceDestDateStyleId']",
  'save evidence summary'=>"xpath^^.//*[@id='saveEvidenceSummaryId']",
  'aer form 5400-9'=>"xpath^^.//*[text()='AER Form 5400-9']",
  'establishment number'=>"xpath^^.//*[@id='establishmentNbr']",
  'type of inspected buiseness'=>"xpath^^.//*[@id='retailBusinessType_radio']",
  'plant size'=>"xpath^^.//*[@value='Large']",
  'noncompliance type'=>"xpath^^.//*[@id='isHACCP_checkbox']",
  'laboratory findings'=>"xpath^^.//*[@id='isSalmonella_checkbox']",
  'product type'=>"xpath^^.//*[@id='isPoultry_checkbox']",
  'custom date'=>"xpath^^.//*[@id='customDate']",
  'aa daa date'=>"xpath^^.//*[@id='aadaaDate']",
  'processing categories'=>"xpath^^.//*[@id='isRawGround_checkbox']",
  'save aer form 5400-9'=>"xpath^^.//*[text()='Save AER Form 5400-9']",
  'past related aers'=>"xpath^^.//*[text()='Past/Related AERs']",
  'add aer link'=>"xpath^^.//*[text()='Add AER Link']",
  'aer type'=>"xpath^^.//*[@id='typeAer']",
  'search'=>"xpath^^.//*[text()='Search']",
  'report number'=>"xpath^^.//*[@class='SearchResultHyperlink']",
  'closing information'=>"xpath^^.//*[text()='Closing Information']",
  'did appeal occur'=>"xpath^^.//*[@id='appealOccur']",
  'appeal date'=>"xpath^^.//*[@id='appealDate']",
  'was appeal reviewed'=>"xpath^^.//*[@id='appealReviewed']",
  'appeal decision'=>"xpath^^.//*[@id='appealDecision']",
  'decision date'=>"xpath^^.//*[@id='decisionDate']",
  'additional comments'=>"xpath^^.//*[@id='closingInfo']",
  'save closing information'=>"xpath^^.//*[text()='Save Closing Information']",
  'aer review'=>"xpath^^.//*[text()='AER Review']",
  'dcs question1'=>"xpath^^.//*[@id='dcsQuestion1']",
  'dcs question1 text'=>"xpath^^.//*[@id='answerText1']",
  'dcs comments'=>"xpath^^.//*[@id='dcsComments']",
  'save aer review information'=>"xpath^^.//*[text()='Save AER Review Information']",
  'edit'=>"xpath^^.//*[text()='Edit']",
  'go'=>"xpath^^.//*[text()='Go']",
  'action'=>"xpath^^.//*[@id='navigationAction']",
  'additional comments changed'=>"xpath^^//*[@name='additionalComments']",
  'report id'=>"xpath^^//*[@id='action_bar']/div[1]/div[4]",
  'view aer'=>"xpath^^//*[@id='leftnavmenu']/div[3]/p[6]/a",
  'search report number'=>"xpath^^//*[@id='reportNumber']",
  'ddm comments'=>"xpath^^//*[@id='ddmComments']",
  'earo view aer'=>"xpath^^//*[@id='leftnavmenu']/div[3]/p[8]/a",
  'earo checkbox'=>"xpath^^//*[@id='isEaroReviewed_checkbox']",
  'earo comments'=>"xpath^^//*[@id='earoComments']",

                    }
end