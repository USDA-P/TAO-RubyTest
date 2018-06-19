def map_anetsurveillance_displayloginaction_do
  @page_objects['anetsurveillance_displayloginaction_do'] =
      {
          #Login
          'full name' => "css^^.custom-combobox-input.ui-widget.ui-widget-content.ui-state-default.ui-corner-left.ui-autocomplete-input",
          'submit login' => "xpath^^.//*[@type='submit']",
          'role' => "xpath^^//*[@id='change_role_select']",


          #Surveillance Page objects
          'surveillance:navigation' => "xpath^^.//*[@id='leftnavmenu']/div[3]/p[11]/a",
          'reason' => "xpath^^.//*[@name='reason']",
          'firm lookup' => "xpath^^.//*[contains(text(),'Lookup')]",
          'firm identifier' => "xpath^^.//*[@name='firmId']",
          'lookup submit' => "xpath^^//*[text()='Submit']",
          'firm name' => "xpath^^//*[@id='att_container']/div[4]/a[1]/span",
          'retail project list' => "xpath^^//*[@id='retailProject']",
          'retail project name' => "xpath^^//*[@id='retailSpecialProject']",

          # 'food defense tab' => "xpath^^.//*[text()='Food Defense']",
          'meat' => "xpath^^.//*[@id='meatProducts_checkbox']",
          'written defence plan' => "xpath^^.//*[@name='writtenFoodDefensePlan']",
          'coordination activity' => "xpath^^.//*[@id='coordinationActivityDHSCBP_checkbox']",
          'entry homeland security committees' => "xpath^^//*[@id='homelandSecurityCommittees']",
          'any activities' => "xpath^^//*[@id='homelandSecurityCommitteesActivities']",
          'products been held or restricted by cbp' => "xpath^^//*[@id='productsHeldOrRestricted']",
          'situation and tests conducted' => "xpath^^//*[@id='productsHeldOrRestrictedExplanation']",
          'outside surveillance system' => "xpath^^.//*[@name='outsideSurveillanceSystem']",
          'food defense exit notes' => "xpath^^.//*[@name='foodDefenseExitNotes']",
          'certify checkbox' => "xpath^^.//*[@id='certifiedInfo_checkbox']",

          # food safety tab
          'products wholesome' => "xpath^^.//*[@id='productsWholesome']",
          'sanitary condition ok' => "xpath^^.//*[@id='sanitaryConditionsOK']",
          'hazard controls adequate' => "xpath^^.//*[@id='hazardControlsAdequate']",
          'nonhuman food properly denatured' => "xpath^^.//*[@id='nonHumanFoodProperlyDenatured']",
          'records maintained ok' => "xpath^^.//*[@id='recordsMaintainedOK']",
          'fst additional comments' => "xpath^^.//*[@name='foodSafetyAdditionalComments']",
          'save food safety' => "xpath^^.//*[contains(text(),'Save Food Safety')]",

          #Imported Products Tab
          'handles imported products' => "xpath^^.//*[@id='handlesImpPrd']",
          'imported products additional comments' => "xpath^^.//*[@name='importedProductsAdditionalComments']",
          'country of origin' => "xpath^^//*[@id='selectedCountries']",
          'invoice number' => "xpath^^//*[@id='invoiceNbr']",
          'bill of landing number' => "xpath^^//*[@id='billofLadingNbr']",
          'aphis permit number' => "xpath^^//*[@id='aphisPermitNbr']",
          'hts code' => "xpath^^//*[@id='htsCode']",
          'custom entry number' => "xpath^^//*[@id='customEntryNbr']",
          'total cases' => "xpath^^//*[@id='totalCases']",
          'unit type' => "xpath^^//*[@id='unitType']",
          'foreign producer foreign establishment number' => "xpath^^//*[@id='foreignProducerEstNbr']",
          'sample lab form number' => "xpath^^//*[@id='sampleLabFormNbr']",
          'detained disposition' => "xpath^^//*[@id='detainedDisposition']",
          'detained disposition details' => "xpath^^//*[@id='detainedDispositionDet']",
          'recall disposition' => "xpath^^//*[@id='recallDisposition']",
          'recall disposition details' => "xpath^^//*[@id='recallDispositionDet']",
          'ftp date initiated' => "xpath^^//*[@name='ftpInitiatedDate']",
          'ftp disposition' => "xpath^^//*[@id='ftpDisposition']",
          'ftp disposition details' => "xpath^^//*[@id='ftpDispositionDet']",
          'oig investigation' => "xpath^^//*[@id='oigInvestigation']",
          'oig investigation initiated by' => "xpath^^//*[@id='oigInvestigationInitiatedBy']",
          'oig investigation date' => "xpath^^//*[@name='oigInvestigationDate']",

          # Additional Info Tab
          'sample taken' => "xpath^^.//*[@name='sampleTaken']",
          'selected sample' => "xpath^^.//*[@id='selectedSamples']",
          'number of mt samples' => "xpath^^.//*[@id='numMTSamples']",
          'number of investigative samples' => "xpath^^.//*[@id='numSplProjInvSamples']",
          'sample result' => "xpath^^.//*[@id='coliSampleResultPositive']",
          'result of previous sample' => "xpath^^.//*[@id='sampleResultFromPreviousSample']",
          'date of previous sample' => "xpath^^.//*[@id='previousSampleDate']",
          'grinding record' => "xpath^^.//*[@id='firmGrindingRec']",
          'shell egg temperatures' => "xpath^^.//*[@id='shellEggTemp']",
          'shell eggs properly labeled' => "xpath^^.//*[@id='areShellEggPropMain']",
          'shell egg temp comments' => "xpath^^.//*[@name='shellEggTempComments']",
          'pest control visit' => "xpath^^.//*[@id='pestControlVisits']",
          'frequency of visits' => "xpath^^.//*[@id='frequencyOfVisits']",
          'pest control contact info' => "xpath^^.//*[@id='pestControlContactInfo']",
          'investigator meet firm representative' => "xpath^^.//*[@id='investigatorMetWithRepresentative']",
          'name of representative1' => "xpath^^.//*[@id='representative1']",
          'name of representative2' => "xpath^^.//*[@id='representative2']",
          'ait additional comments' => "xpath^^.//*[@name='additionalInformationAdditionalComments']",
          'surveillance findings' => "xpath^^.//*[@id='didReferSurvFindings']",
          'referral comments' => "xpath^^.//*[@name='referralComments']",
          'surveillance follow up required' => "xpath^^.//*[@id='followUpRequired']",
          'expected follow up date' => "xpath^^.//*[@id='followUpExpectedDate']",
          'previous surveillance review' => "xpath^^.//*[@name='followUpFromPrevious']",
          'follow up comments' => "xpath^^.//*[@id='followUpReason']",

          # Non Food Safety Consumer Protection Tab
          'nutritioning label verified' => "xpath^^.//*[@id='nutritionalLblVerify']",
          'non food safety consumer protection' => "xpath^^.//*[@name='nonFoodSafetyConsumerProtectionOK']",
          'do records observed' => "xpath^^.//*[@name='doRecordsAsscMeat']",
          'nonfood safety consumer protection additional comments' => "xpath^^.//*[@id='nonFoodSafetyConsumerProtectionAdditionalComments']",

          # File Attachments Tab
          'name to display' => "xpath^^.//*[@id='title']",
          'browse file' => "xpath^^.//*[@id='attachedFile']",

          #Associated Product Control Links
          'product control from date' => "xpath^^.//*[@name='startFromDate']",
          'product control to date' => "xpath^^.//*[@name='startToDate']",

          # Order Verification
          'order verification tab' => "xpath^^.//*[text()='Order Verification']",
          'compliance with terms and conditions' => "xpath^^.//*[@id='att_container']/div[3]/div[2]/select",
          'responsible individuals in compliance' => "xpath^^.//*[@id='att_container']/div[4]/div[2]/select",
          'order verification in additional comments' => "xpath^^.//*[@id='att_container']/textarea",
          'save order verification' => "xpath^^.//*[text()='Save Order Verification']",
          'view surveillance' => "xpath^^//*[@id='leftnavmenu']/div[3]/p[16]/a",
          'custodian name' => "xpath^^//*[@id='search_table']/tbody/tr[2]/td[1]/a/span",
          'search' => "xpath^^.//*[text()='Search']",
          'edit' => "xpath^^.//*[text()='Edit']",
          'go' => "xpath^^.//*[text()='Go']",
          'shipping access' => "xpath^^.//*[@name='shippingReceivingAccess']",
          'action' => "xpath^^.//*[@id='navigationAction']",
          'additional comments changed1' => "xpath^^//*[@name='additionalComments']",
          'retail project' => "xpath^^.//*[@value='RDCTC']",



      }
end