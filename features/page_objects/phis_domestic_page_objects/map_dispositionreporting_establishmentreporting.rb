def map_dispositionreporting_establishmentreporting
        @page_objects['dispositionreporting_establishmentreporting'] =
            {
          'title'                   => 'xpath^^//*[@id="sectionheader_blue"]',
          'sign out button'         => 'xpath^^//*[@id="ctl00_ctl00_lbSignout"]',
          'animal disposition'      => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/descendant::span[contains(.,"Animal Disposition")]',
          'establishment reporting' => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/descendant::span[contains(.,"Establishment Reporting")]',
          'select an establishment dropdown' => "xpath^^//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlEstablishments']",
          'ratite tab'              => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_tabStripSlaughter"]//a[contains(.,"Ratite")]',
          'ratite grid'             => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00"]//div[contains(.,"No slaughter records to display.")]',
          'meat tab'                => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_tabStripSlaughter"]//a[contains(.,"Meat")]',
          'meat grid'               => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00"]//div[contains(.,"No slaughter records to display.")]',
          'column 1 header'         => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00"]/thead/tr[2]/th[1]',
          'column 2 header'         => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00"]/thead/tr[2]/th[2]',
          'column 3 header'         => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00"]/thead/tr[2]/th[3]',
          'column 4 header'         => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00"]/thead/tr[2]/th[4]',
          'column 5 header'         => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00"]/thead/tr[2]/th[5]',
          'column 6 header'         => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00"]/thead/tr[2]/th[6]',
          'shift 1 link'            => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lnkShift1']",
          'shift 2 link'            => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lnkShift2']",
          'establishment ante mortem discard text box'            =>  "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtAMDiscard']",
          'establishment post mortem discard text box'            =>  "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtPMDiscard']",
          'establishment segregated for fsis inspection text box' =>  "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtFSISInsp']",


          #Adding Meat Slaughter Record Locators.
          'add slaughter record link'        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnAddInspSlaughter']",
          'meat grid1'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_lblSlaughterType']",
          'add slaughter record section'     => "xpath^^//td[2]/div/div/div/span",
          'subclass dropdown'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_ddlSubClass']",
          'head count text-box'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_tBoxHeadCount']",
          'live weight text-box'             => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtLiveWeight']",
          'dressed weight text-box'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtDressedWeight']",
          'required field for sub-class'     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_rfvSlaughterType']",
          'required field for head count'    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_rfvHeadCount']",
          'live weight lbs text-box'         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtLiveWeight']",
          'dressed weight lbs text-box'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtDressedWeight']",
          'head count column'                => 'xpath^^//div[2]/table/tbody/tr/td[4]',
          'add button for meat record'       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_btnAdd']",
          'added record message'             => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]/span",
          'delete icon'                      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl04_gbcDelete']",
          'delete record message'            => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]/span",
          'weight not reported radio button' => "xpath^^//*[contains(text(),'Weight Not Reported')]",
          'weight reported radio button'     => "xpath^^.//*[contains(text(),'Weight Reported')]",
          'cancel button for meat record'    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_btCancel']",
          'custom slaughter radio button'    => "xpath^^.//*[contains(text(),'Custom Slaughter')]",
          'type column for meat record'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00__0']/td[3]",
          'ok pop up button'                 => "xpath^^.//*[contains(text(),'OK')]",



          #Adding Meat Disposition Record Locators.

          'forward pointing arrow'              => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00__0"]/td[1]/input',
          'add disposition record button'       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl00_RadToolBar1_i0_btnAddDispsoition']",
          'tag type required field indicator'   => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvTagType']",
          'add button on disposition page'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnAdd']",
          'tag number required field indicator' => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvTagNumber']",
          'condition required field indicator'  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvCondition']",
          'disposition required field indicator'=> "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvDisposition']",
          'tag type drop-down'                  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlTagType']",

        'tag number text-box'                 => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtTagNumber']",
          'condition drop-down'                 => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlCondition']",
          'disposition drop-down'               => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlDisposition']",
          'narrative text-box'                  => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtNarrative"]',
          'delete disposition record icon'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl04_gbccolumn']",
          'sub class column for meat'           => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00__0"]/td[2]',
          'tag number column for meat'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10__0:0_0']/td[1]",
          'saved record success message'        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]",
          'edit icon for meat disposition record'        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl04_EditButton']",
          'edit dispo icon for meat'            => "xpath^^//td[10]/input",
          'save dispo button'                   => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_btnAdd']",
          'edit page for meat disposition record'         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_lblHeader']",
          'edit disposition drop-down'          => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_ddlDisposition"]',
          'edit animal id text box'             => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_txtAnimalId']",


          #Adding KIS Sample for Meat.
          'add kis sample button'               => "xpath^^.//*[contains(text(),'Add KIS Sample')]",
          'positive kis radio button'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rblKisType_2']",
          'positive kis radio button on edit disposition record section'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_rblKisType_2']",

          'negative kis radio button'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rblKisType_1']",
          'negative kis radio button on edit disposition record section'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_rblKisType_1']",

          'tag type required indicator for meat dospo record'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvTagType']",
          'disposition required indicator for meat dospo record'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvDisposition']",
          'tag number required indicator for meat dospo record'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvTagNumber']",
          'condition required indicator for meat dospo record'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvCondition']",
          'add button on meat disposition'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnAdd']",
          'sample management adr'           => "xpath^^.//*[@id='sectionheader_rust']/p",
          'case number text box'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_CaseNumberTextBox']",
          'reason code drop down'           => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ReasonCodeSelect_Arrow"]',
          'comments text box'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_CommentsTextBox']",
          'generate a sample form button'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_SubmitButton']",
          'animal status radio button'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AnimalStatusSelect_0']",
          'herd flock owner text box'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProducerNameTextBox']",
          'remark test box'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RemarksTextBox']",
          'save and continue button'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_SaveButton']",
          'alert message on sample management'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MessageBoxControl_MessageList']/li/div[2]/span",
          'saved alert message for sample collection data'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MessageBoxControl_MessageList']/li/div[2]/span",
          'saved alert message for submission to the lab'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MessageBoxControl_MessageList']/li/div[2]/span",

          'generate sample form required indicator'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ReasonCodeRequiredLabel']",
          'validation message'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MessageBoxControl_MessageList']/li/div[2]/span",
          'sample collection data required indicator for animal status'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AnimalStatusRequiredLabel']",
          'sample collection data required indicator for herd flock owner'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProducerNameRequiredLabel']",
          'submit to lab button'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_SubmitToLabButton']",
          'start questionnaire link'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lnkQuizSurvey']",
          'schedule message alert display header'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MessageBoxControl_MessageList']/li/div[2]/span",
          'sample collection data tab'           => "xpath^^.//*[@id='SampleCollectionTab']",
          'schedule link'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lnkSchedule']",
          'edit pencil icon for meat disposition record'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl04_EditButton']",
          'delete icon for meat'           => "xpath^^//button",
          'select reason code'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ReasonCodeSelect_DropDown']/div/ul/li[13]",
          'result status'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ResultSelect_Input']",
          'click on start questionnaire link'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lnkQuizSurvey']",
          'return to adr button'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnReturnToAdr']",


          #Cancelling lab schedule.
          'cancel lab schedule button'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_CancelScheduledLinkButton']",
          'select reason drop down'           => "xpath^^.//*[contains(@class, 'rcbList')]",
          'reason for cancelling lab iframe'           => "xpath^^.//*[contains(@class, 'rwTable')]",
          'save and close button on cancel lap pop up'           => "xpath^^.//*[@id='SaveButton']",
          'alert message on cancel lap pop up to select reason'           => "xpath^^.//*[@id='RejectErrorLabel']",
          'describe if other textbox on cancel lap pop up'           => "xpath^^.//*[@id='RejectionOtherTextBox']",
          'cancel button on cancel lap pop up'           => "xpath^^.//*[@id='CancelButton']",
          'reschedule link'           => "xpath^^.//*[contains(text(),'Re-Schedule')]",
          'cancel lab schedule link'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_CancelScheduledLinkButton']",
          'reason dropdown arrow'           => "xpath^^.//*[@id='RejectionReasonSelect_Arrow']",
          'reason option'           => "xpath^^.//*[@id='RejectionReasonSelect_DropDown']/div/ul/li[3]",
          'reschedule link on sample collection data tab'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lnkSchedule']",
          'add lab sample button for meat'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_btnAddLabSample']",

          #Adding Meat Lab Sample
          'postal code drop down'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProjectCodeSelect_Arrow']",
          'analyst check box'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AnalysisSelect_0']",
          'postal code drop down input'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProjectCodeSelect_DropDown']/div/ul/li[5]",
          'project code drop down'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProjectCodeSelect_Arrow']",
          'project code drop down input'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProjectCodeSelect_DropDown']/div/ul/li[3]",
          'project code input for meat lab'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProjectCodeSelect_DropDown']/div/ul/li[7]",



          #Adding Ratite Lab Sample
          'add lab sample button for ratite'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_btnAddLabSample']",
          'ratite gid'           => "xpath^^//div[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_tabStripSlaughter']/div/ul/li[3]/a/span/span/span",






          #Questionnaire elements.
          'start questionnaire button'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_btnStart']",
          'question a answer box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s27837_txtPlain']",
          'question one drop down'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s27838_ddl27838']",
          'question two answer box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s27839_txtPlain']",
          'question two answer input'           => "xpath^^//div[5]/div/div[4]/table/tbody/tr[2]/td/input",
          'next button'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_btnNext']",
          'previous button'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_btnPrev']",
          'question three answer box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s27840_txtPlain']",
          'question four answer box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s27841_txtPlain']",
          'question five answer box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s27842_txtPlain']",
          'question sis answer box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s27843_txtPlain']",
          'question seven answer box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s27844_txtPlain']",
          'question eight answer box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s27845_txtPlain']",
          'question nine answer box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s27846_txtPlain']",
          'back button'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_btnPrev']",
          'close button'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_lnkCancel']",
          'in progress questionnaire table'           => "xpath^^//td[4]/div/div[2]",
          'open questionnaire button'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgSurveys_ctl00_ctl04_lnkOpen']",
          'resume questionnaire button'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_btnStart']",
          'submit questionnaire button'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_btnClose']",
          'lab sample button'           => "xpath^^.//*[contains(text(),'Lab Sampling')]",
          'drop down for result'           => "xpath^^(//a[contains(text(),'select')])[4]",
          'result drop down box'           => "xpath^^.//*[contains(text(),'Positive')]",
          'save and continue'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_SaveButton']",
          'submit to lab'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_SubmitToLabButton']",
          'question1 text box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s26807_txtPlain']",
          'question2 text box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s26808_txtPlain']",
          'question3 text box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s26809_txtPlain']",
          'question4 text box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s26810_txtPlain']",
          'question5 text box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s26811_txtPlain']",
          'question6 text box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s26812_txtPlain']",
          'question7 text box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s26813_txtPlain']",
          'question8 text box'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s26814_txtPlain']",
          'project code for meat lab'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProjectCodeSelect_DropDown']",
          'question1 yes'           => "xpath^^.//*[@id='ctl00_ContentPlaceHolder1_s1_c1']",
          'next button for meat lab'           => "xpath^^//*[@id='ctl00_ContentPlaceHolder1_btnNext']",
          'save and continue meat lab'           => "xpath^^//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_SaveButton']",



          #No Kill Period Test.
          'slaughter class'                                => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_lblSlaughterType']",
          'no kill period'                                 => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_AppMenuBar']/ul/li[6]/div/ul/li[3]/a/span/span[2]",
          'no kill period page'                            => "xpath^^.//*[@id='sectionheader_maroon']/p",
          'establishment dropdown'                         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlEstablishment']",
          'shift dropdown'                                 => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlShift"]',
          'add new inspection slaughter period link'       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdNoKill_ctl00_ctl02_ctl00_lbAddNoKill']",
          'reason code dropdown'                           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ReasonCodeSelect']",
          'save button for no kill'                        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnSave']",
          'no kill period alert message'                   => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]/span",
          'delete icon for added no kill period'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdNoKill_ctl00_ctl04_gbcDeleteNoKillRecord']",
          'add slaughter button'                           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnAddInspSlaughter']",
          'add new slaughter page'                         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_LblHeader']",
          'reason code for no kill'                        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlShift']",
          'reason code for no kill1'                        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlReasonCode']",




          #BK
          'tag type'                                 => "xpath^^.//*[contains(@id,'EditFormControl_ddlTagType')][contains(@class,'RadDropDownList')]",
          'tag number'                               => "xpath^^.//input[contains(@id,'EditFormControl_txtTagNumber')][1]",
          'condition'                                => "xpath^^.//*[contains(@id,'EditFormControl_ddlCondition')][contains(@class,'RadDropDownList')]",
          'disposition'                              => "xpath^^.//*[contains(@id,'EditFormControl_ddlDisposition')][contains(@class,'RadDropDownList')]",
          'kis no test'                              => "xpath^^.//span[(text()='KIS')]/following::label[(text()='No Test')]/preceding::input[1]",
          'add'                                      => "xpath^^.//input[(@value='Add')]",


          #Adding multiple meat disposition records.
          'add multiple disposition records button'  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl00_RadToolBar1_i0_btnAddMultipleDisposition']",
          'tag type drop down'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlTagType']",
          'tag number text box'                      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtTagNumber']",
          'number of records text box'               => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtNoOfRecords']",
          'condition drop down'                      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlCondition']",
          'disposition drop down'                    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlDisposition']",
          'continue button'                          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnContinue']",
          'tag type required indicator'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvTagType']",
          'tag number required indicator'            => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvTagNumber']",
          'number of records required indicator'     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvNoOfRecords']",
          'narrative text box'                       => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtNarrative"]',
          'cancel button on multiple disposition'    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btCancel']",
          'number of disposition record added'       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_lblReviewMessage']",
          'cancel button on added multiple disposition disposition page'    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnReviewCancel']",
          'negative kis radio button for meat'       => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rblKisType_1"]',
          'kis test status column for meat'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rgMultipleDispositionRecords_ctl00__0']/td[6]",
          'add button for meat multiple disposition records'            => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnAdd']",
          'confirmation message for adding multiple disposition record' =>".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]/span",

          #Editing Multiple disposition Meat Record.
          'edit pencil icon for meat multiple disposition record'                => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl04_EditButton"]',
          'animal id for meat multiple disposition record'                  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_txtAnimalId']",
          'save for meat multiple disposition record'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_btnAdd']",
          'saved record alert message for edited meat multiple disposition record'                  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]/span",
          'editable condition drop down for meat field'                       => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_ddlCondition"]',
          'editable disposition drop down for meat field'                       => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_ddlDisposition"]',
          'delete multiple disposition icon'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl12_btnDeleteDisposition']",
          'cancel button on delete pop up message'                       => "xpath^^.//*[contains(text(),'Cancel')]",
          'kistest status column for meat'                             => "xpath^^//td[6]/div",



          #Print Condemnation Certificate.
          'print condemnation certificate button'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnMeatCondemnCertPrint']",
          'unselect all button'                       => "xpath^^.//*[contains(text(),'UnSelect All')]",
          'select all button'                       => "xpath^^.//*[contains(text(),'Select All')]",
          'cancel all button'                       => "xpath^^.//*[@id='btnNoReport']",


          #Printing Condemnation Certificate for Meat.
          'condemnation record page'           => "xpath^^.//*[@id='pnlSelections']",
          'print condemnation certificate button for meat'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnMeatCondemnCertPrint']",
          'select all link'           => "xpath^^.//*[contains(text(),'Select All')]",
          'un select all link'           => "xpath^^.//*[contains(text(),'UnSelect All')]",
          'cancel button iframe'           => "xpath^^.//*[@id='btnNoReport']",
          'view/print consolidated report button'           => "xpath^^.//*[@id='btnRunIReport']",
          #Printing Disposition records for Meat.
          'print disposition record button'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl00_RadToolBar1_i0_btnPrintDispositionRecords']",
          'select all link for disposition record'           => "xpath^^.//*[contains(text(),'Select All')]",
          'un select all link for disposition record'           => "xpath^^.//*[contains(text(),'UnSelect All')]",
          'sort column iframe for disposition record'           => "xpath^^.//*[@id='sortColumn']",


          #Adding multiple Ratite disposition records.
          'add multiple disposition records button for ratite'  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl00_RadToolBar1_i0_btnAddMultipleDisposition']",
          'tag type drop down for ratite'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlTagType']",
          'tag number text box for ratite'                      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtTagNumber"]',
          'number of records text box for ratite'               => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtNoOfRecords"]',
          'condition drop down for ratite'                      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlCondition']",
          'disposition drop down for ratite'                    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlDisposition']",
          'continue button for ratite'                          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnContinue']",
          'tag type required indicator for ratite'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvTagType']",
          'tag number required indicator for ratite'            => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvTagNumber']",
          'number of records required indicator for ratite'     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvNoOfRecords']",
          'narrative text box for ratite'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtNarrative']",
          'cancel button on multiple disposition for ratite'    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btCancel']",
          'number of disposition record added for ratite'       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_lblReviewMessage']",
          'cancel button on added multiple disposition disposition page for ratite'    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnReviewCancel']",
          'positive kiss radio button for ratite'               => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rblKisType_2']",
          'negative kis radio button for ratite'                => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtNoOfRecords']",
          'kistest status column'                               => "xpath^^//tr[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rgMultipleDispositionRecords_ctl00__0']/td[6]/div",
          'positive kistest status column'                      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rgMultipleDispositionRecords_ctl00__0']/td[6]/div",
          'back button on multiple disposition for ratite'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnBack']",
          'add button on multiple disposition for ratite'       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnAdd']",
          'ratite tag type required field indicator'   => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvTagType']",
          'ratite add button'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnAdd']",
          'ratite tag number required field indicator' => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvTagNumber']",
          'ratite condition required field indicator'  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvCondition']",
          'ratite disposition required field indicator'=> "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rfvDisposition']",
          'kis status for multiple disposition record for meat' => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_rgMultipleDispositionRecords_ctl00__0']/td[6]/div",

          #Printing Condemnation Certificate for Ratite.
          'condemnation record page for ratite record'           => "xpath^^.//*[@id='pnlSelections']",
          'print condemnation certificate button for ratite'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnMeatCondemnCertPrint']",
          'select all link for ratite record'           => "xpath^^.//*[contains(text(),'Select All')]",
          'un select all link for ratite record'           => "xpath^^.//*[contains(text(),'UnSelect All')]",
          'cancel button iframe for ratite record'           => "xpath^^.//*[@id='btnNoReport']",
          'view/print consolidated report button for ratite record'           => "xpath^^.//*[@id='btnRunIReport']",
          'ratite record print page'           => "xpath^^.//*[contains(text(), 'U.S. DEPARTMENT OF AGRICULTURE')]",
          'ratite record filter drop down'           => "xpath^^//select[@id='sortColumn']",
          'select sub class value'           => "xpath^^//option[3]",
          'select condition value'           => "xpath^^//option[4]",
          'select disposition value'           => "xpath^^//option[5]",
          'select tag type value'           => "xpath^^//option[2]",



          #Printing Disposition records for Meat.
          'print disposition record button for ratite'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl00_RadToolBar1_i0_btnPrintDispositionRecords']",
          'select all link for disposition record for ratite'           => "xpath^^.//*[contains(text(),'Select All')]",
          'un select all link for disposition record for ratite'           => "xpath^^.//*[contains(text(),'UnSelect All')]",
          'sort column iframe for disposition record for ratite'           => "xpath^^.//*[@id='sortColumn']",
          'print button for disposition record'           => "xpath^^.//*[@id='btnPrintDispositionRecord']",


          #Editing Multiple disposition Meat Record.
          'edit pencil icon for ratite multiple disposition record'                => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl04_EditButton']",
          'animal id for ratite multiple disposition record'                  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_txtAnimalId']",
          'save for ratite multiple disposition record'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_btnAdd']",
          'save record alert message for edited ratite multiple disposition record'                  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]/span",
          'editable condition drop down for ratite field'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_ddlCondition']",
          'editable disposition drop down for ratite field'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_ddlDisposition']",




          #Editing Meat Record.
          'edit pencil icon'                    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl04_EditButton']",
          'edith slaughter record section'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl05_EditFormControl_lblHeader']",
          'save button'                         => "xpath^^//div[4]/div/div/input",
          'refresh button'                      => "xpath^^//span[3]/span[2]",
          'add lab sample'                      => "xpath^^.//span[contains(@id,'EditFormControl_btnAddLabSample')]",
          'refresh button for meat'                => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnRefresh']",
          'delete icon for meat record'             => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl04_btnDelete']",


          #Adding Ratite Record Locators
          'ratite link'                              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_tabStripSlaughter']/div/ul/li[3]/a/span/span/span",
          'add slaughter record button for ratite'   => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnAddInspSlaughter']",
          'add button on ratite section'             => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_btnAdd']",
          'add button on ratite disposition section' => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_btnAdd']",
          'sub class drop-down for ratite'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_ddlSubClass']",
          'head count on ratite section'             => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_tBoxHeadCount']",
          'live weight text-box for ratite'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtLiveWeight']",
          'dressed weight text-box for ratite'       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtDressedWeight']",
          'add ratite disposition record button'     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl00_RadToolBar1_i0_btnAddDispsoition']",
          'forward pointing arrow for ratite'        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00__0']/td[1]/input",
          'tag type dropdown for ratite'            => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlTagType']",
          'tag number text-box for ratite'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtTagNumber']",
          'condition drop-down for ratite'           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlCondition']",
          'disposition drop-down for ratite'         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_ddlDisposition']",
          'narrative text-box for ratite'            => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl02_ctl03_EditFormControl_txtNarrative']",
          'delete disposition record icon for ratite'=> "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl04_btnDeleteDisposition']",
          'sub class column'                         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00__0']/td[2]",
          'tag number column'                        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10__0:0_0']/td[1]",
          'required field for ratite sub-class'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_rfvSlaughterType']",
          'required field for ratite head count'     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_rfvHeadCount']",
          'ok button to delete ratite record'        => "xpath^^.//*[contains(text(),'OK')]",



          #Editing Ratite Record.
          'edit pencil icon for ratite'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl04_EditButton']",
          'edith slaughter record section for ratite'=> "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl05_EditFormControl_lblHeader']",
          'save button for ratite'                   => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl05_EditFormControl_btnAdd']",
          'refresh button for ratite'                => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnRefresh']",
          'delete record icon for ratite'            => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl04_btnDelete']",
          'edit disposition record icon for ratite'  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl04_EditButton']",
          'edit disposition record page'             => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_lblHeader']",
          'ratite refresh button'                    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnRefresh']",
          'edit condition drop down for ratite'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_ddlCondition']",
          'edit disposition drop down for ratite'    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_ddlDisposition']",
          'save button for edited ratite record'     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_btnAdd']",
          'condition column'                         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10__0:0_0']/td[4]",
          'animal id text box'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_txtAnimalId']",
          'animal id column'                         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10__0:0_0']/td[3]",
          'header alert display'                     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]",

          # #Adding new poultry record.
          # 'add slaughter record button for poultry'  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnAddInspSlaughter']",
          # 'add slaughter record page for poultry'    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_LblHeader']",
          # 'sub class drop down for poultry'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlSubClass']",
          # 'lot number text box for poultry'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtLotNumber']",
          # 'head count text box for poultry'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtHeadCount']",
          # 'live weight text box'                     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtLiveWeight']",
          # 'certified chiled weight text box'         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtCertChilledWeight']",
          # 'certified frozen weight text box'         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtCertFrozenWeight']",
          # 'dead on arrival head count text box'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtNumberDOA']",
          # 'dead on arrival weight text box'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtDOAWeight']",
          # 'ante-mortem condemned not including doas head count text box'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtACondemnedPHVHeadCount']",
          # 'ante-mortem condemned not including doas weight text box'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtACondemnedNoDOAWeight']",
          # 'post-mortem condemned carcass nyd weight text box'                     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtCondemnCarcassWeight']",
          # 'post-mortem condemned parts weight text box'                           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtCondemnPartsWeight']",
          # 'remark text box for poultry'                                           => "xpath^^//body",
          # 'save button on the poultry page'                                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnSave']",
          # 'save and new button on the poultry page'                               => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnSaveAndNew']",
          # 'go back button on the poultry page'                                    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnGoBack']",
          # 'required indicator for poultry sub class field'                        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lblSubClassReqd']",
          # 'required indicator for poultry lot number field'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lblErrorLotNumber']",
          'select establishment drop down for puotry'=> "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlEstablishments']",
          'add slaughter record button for poultry'  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnAddInspSlaughter']",

          #Add a new slaughter record
          'table caption'               => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00"]//div[contains(@class,"divTableCaption")]',
          'add slaughter record button' => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl00_RadToolBar1_i0_btnAddInspSlaughter"]',
          'select a sub-class dropdown' => "xpath^^//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_ddlSubClass']",
          'inspected slaughter option'  => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_rblSlaughterType_0"]',
          'custom slaughter option'     => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_rblSlaughterType_1"]',
          'head count textbox'          => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_tBoxHeadCount"]',
          'weight reported option'      => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_rblWeightReported_0"]',
          'weight not reported option'  => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_rblWeightReported_1"]',
          'live weight textbox'         => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtLiveWeight"]',
          'dressed weight textbox'      => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_txtDressedWeight"]',
          'add button'                  => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_btnAdd"]',
          'cancel button'               => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl02_ctl03_EditFormControl_btCancel"]',
          'animal id for edited dispo record'                   => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl06_Detail10_ctl05_EditFormControl_txtAnimalId"]'



        }
end
