def map_taskcalendar_establishmenttasklist
  @page_objects['taskcalendar_establishmenttasklist'] =


      {

          # 'reason dropdown'                    =>'xpath^^.//*[@id="RadComboReason_DropDown"]',
          'task calendar'                      =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/ul/li[3]/a/span/span[2]',
          'assignment drop down'               =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadComboAssignment_Arrow']",
          'assignment data'                    =>"xpath^^.//*[contains(@class,'rcbHovered')]",
          # 'assignments'                        =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadComboAssignment_Input']",
          # ''                                   =>"xpath^^.//*[contains(@class,'rcbInput radPreventDecorate')]",
          'select establishment'               =>"xpath^^//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EstablishmentFilterList_Input']",
          'app id'                          =>"xpath^^//tr[3]/td[2]/span",
          'filter id textbox'               =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadGridSingleEstablishmentTaskList_ctl00_ctl02_ctl01_FilterTextBox_InspectionTaskName']",
          'filter icon'               =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadGridSingleEstablishmentTaskList_ctl00_ctl02_ctl01_Filter_InspectionTaskName']",
          'filter value'               =>"xpath^^.//*[contains(text(), 'Contains')]",


          #  Complete a 9060-6 Review task for CSI Approval.
          'condemnation record page'          =>".//*[@id='pnlSelections']",

          'assignments dropdown'              =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadComboAssignment_Input']",
          'select establishment dropdown'     =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EstablishmentFilterList']",
          'filter task by dropdown'           =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_BusinessAreaFilterList']",
          'add link for submitted application'  =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadGridSingleEstablishmentTaskList_ctl00_ctl04_lnkDirectAssignment']",

          'add 1'                             => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadGridSingleEstablishmentTaskList_ctl00_ctl58_lnkDirectAssignment']",
          'task date'                         =>"xpath^^html/body/form/div[5]/div[2]/table[2]/tbody/tr[1]/td[2]/div/div/div/table/tbody/tr[2]/td/div/div[2]/table/tbody/tr[4]/td[4]/span[2]/input[1]",
          # 'task date'                         => "xpath^^.//*[contains(@class,'riTextBox riEnabled riHover')]",
          # 'reason dropdown'                   =>".//*[@id='RadComboReason_Input']",
          'save 1'                              =>"xpath^^.//*[@id='btnUpdate']",
          'select inspector dropdown'         =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_CalendarInspectorFilter_DropDown']/div/ul/li[6]",
          'establishmant dropdown 2'          =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_CalendarEstablishmentFilter_DropDown']/div/ul/li[3]",
          # 'reason'                            =>".//*[@id='RadComboReason_DropDown']/div/ul",
          'reason arrow'                      =>"xpath^^.//*[@id='RadComboReason_Arrow']",
          'reason dropdown'                   =>"xpath^^.//*[@id='RadComboReason_DropDown']",
          'response to alert notification'    =>"xpath^^.//*[text()='Response to Alert Notification']",
          'kandy evans'                       =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_CalendarInspectorFilter_DropDown']/div/ul/li[6]",
          'select hill side turky farm'       =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_CalendarEstablishmentFilter_DropDown']/div/ul/li[3]",
          'day button'                        =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_bttnDay']",
          'document 1'                        =>"xpath^^.//*[contains(text(), 'Document')]",
          'inspector arrow'                   =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_CalendarInspectorFilter_Arrow']",
          'establishment arrow'               =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_CalendarEstablishmentFilter_Arrow']",
          'calendar: task'                    =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_mainPanel']",
          'activity tab'                      =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_tbsInsResult']/div/ul/li[4]/a/span/span/span",
          # 'verification activity: both'       =>"xpath^^.//*[contains(text(), 'Both')]",
          'verification activity: both'       =>"xpath^^.//input[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rblVerificationActivity_2']",

          'regulations tab'                   =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_tbsInsResult']/div/ul/li[5]/a/span/span/span",
          'issuance of official export certificates and reinspection verified check box'   =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRegulations_ctl00_ctl04_cbVerified']",
          'marking of product with official export stamp verified check box'               =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRegulations_ctl00_ctl08_cbVerified']",
          'save inspection result'            =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnSave']",
          'approvals tab'                     =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_tbsInsResult']/div/ul/li[7]/a/span/span/span",
          'approve and sign'                  =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnAprvApplication']",

          'upload signed pdf file'            =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_signature_lincPassSignatureSubmit']/span",
          'select signed pdf file'            =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_signature_manualSignedDocumentrow0']/span/input[1]",
          'yes 2'                             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_signature_rdConfirm_C_btnYes']",
          'add new file'                      =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadWithGrid_uploadWithGrid_ctl00_ctl02_ctl00_lnkAddNewFile']",
          'select file'                       =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadWithGrid_AsyncFileUploadrow0']/span/input[2]",
          'select button'                     =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_signature_lincPassSignedDocumentrow0']/span/input[1]",
          'document title'                    =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadWithGrid_txtDocumentTitle']",
          'inspection complete'               =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_chkComplete']",
          'close inspection result'           =>"xpath^^.//*[contains(@id, 'ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnClose')]",
          'signed document'                   => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_signature_lincPassSignedDocumentfile0']",
          # 'closex'                                =>"xpath^^.//*[contains(@class, 'rwCloseButton')]",
          'reject button'                     =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnRjctApplication']",
          'approval reason'                   =>"xpath^^.//*[contains(@class, 'txtApprovalReason')]",
          'to provide justification'          =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]/span/a",
          'justification reason'              =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rcbJustification']",
          'reason to edit inspection result'  =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radEdComments_contentIframe']",
          'unlock button'                     =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnSaveReason']",
          'rescind button'                    =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnRescindApprovalDescision']",
          'marking of tanks cars with official export stamp verified check box'         =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRegulations_ctl00_ctl06_cbVerified']",
          'todays link'                             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_todaysLink']",
          'upload button'                     =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_signature_lincPassSignatureSubmit']",
          'yes button action required'        =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_signature_rdConfirm_C_btnYes']",
          'here to provide a justification'   =>"xpath^^.//*[contains(text(), 'here')]",
          'reason to edit content area'       =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radEdCommentsCenter']",
          'reason to edit text area'          =>"xpath^^./html/body/p[1]",
          'dua suresh'                        =>"xpath^^.//*[contains(text(), 'SURESH DUA')]",
          'hill side turkey farm'             =>"xpath^^.//*[contains(text(), 'Hillside Turkey Farm Shift:1(M10828 P10828)')]",
          'add link'                          =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadGridSingleEstablishmentTaskList_ctl00_ctl06_lnkDirectAssignment']"

















      }
end