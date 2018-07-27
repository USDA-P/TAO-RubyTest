def map_exportapplication_web_9080establishmentapplication
  @page_objects['exportapplication_web_9080establishmentapplication'] =
      {

          'Create Application'         => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl02_ctl00_InitInsertButton"]',
          'establishment home icon 1'  => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_MyEstablishments_gridUserEstablishments_ctl00_ctl04_gbccolumn']",
          'applicant name'             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EA9080GenInfoUC_txtApplicantName']",
          'next'                       => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnNext"]',
          'importing: country'                                             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EA9080GenInfoUC_ddlImportingCountry']",
          'category of product: meat'                                      =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EA9080ProdInfoUC_rlbCategoryOfProduct_i1']/label/input",
          'type of operation(s): grinding'                                 =>"xpath^^html/body/form/div[7]/div[3]/div/div/div[2]/div[4]/div/div/div[4]/table/tbody/tr/td[1]/div[1]/div/ul/li[3]/label/input",
          'class of product(s) to be exported: 03b raw product-ground'     =>"xpath^^html/body/form/div[7]/div[3]/div/div/div[2]/div[4]/div/div/div[6]/div[1]/div/ul/li[1]/label/input",
          'species: beef'                                                  =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EA9080ProdInfoUC_rlbSpecies_i1']/label/input",
          'submit'                        =>"xpath^^html/body/form/div[7]/div[3]/div/div/div[9]/input[2]",
           'ok'                           =>"xpath^^.//*[@class='rwInnerSpan'][text()='OK']",
          'ok 1'                          =>"xpath^^.//*[contains(text(),'OK']",
          'add new file'                  =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocumentWithGrid_rgUploadDocuments_ctl00_ctl02_ctl00_lnkAddNewFile']",
          'upload 2'                      =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocumentWithGrid_btnUpload']",
          'document title 2'              =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocumentWithGrid_txtDocumentTitle']",
          'browse'                        =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocumentWithGrid_fileUpload']",
          'view 9080-3 application'       =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EA9080Header_lblViewApplciationUrl']",
          'exit menu'                     =>"xpath^^.//*[contains(text(), 'xit Menu')]",
          'export 1'                      =>"xpath^^.//*[@class='rpText'][text()='xport']",
          'application status filter textbox'       =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRecentApplications_ctl00_ctl02_ctl02_FilterTextBox_ApplicationStatus']",
          'filter application status icon'   =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRecentApplications_ctl00_ctl02_ctl02_Filter_ApplicationStatus']",
          'contains filter link'             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRecentApplications_rfltMenu_detached']/ul/li[2]/a/span",
          'filter submitted by'              =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRecentApplications_ctl00_ctl02_ctl02_FilterTextBox_SubmittedBy']",
          'submitted by filter icon'         =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRecentApplications_ctl00_ctl02_ctl02_Filter_SubmittedBy']",
          'review application icon'          =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRecentApplications_ctl00_ctl04_ReviewApplicationButton']",
          'importing country'                =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EA9080Header_lblImportingCountryUrl']/a",
          'approve application'              =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnAprvApplication']",
          'confirmation message for submitting 9080 application'    =>"xpath^^.//*[@id='successMsgContainer']/span",
          'close application'                           =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnCancel']",
          'country of export filter textbox'            =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRecentApplications_ctl00_ctl02_ctl02_FilterTextBox_CountryOfExport']",
          'filter country of export icon'               =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRecentApplications_ctl00_ctl02_ctl02_Filter_CountryOfExport']",
          'contains filter link export country'         =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgRecentApplications_rfltMenu_detached']/ul/li[2]/a/span",
          '9080-3 view establishment application'       =>"xpath^^.//*[@class='rpText'][text()='080-3']",
          '9080-3 view establishment application 1'     =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_AppMenuBar']/ul/li[5]/a/span/span[2]",
          '9080-3 home'                                 =>"xpath^^html/body/form/div[8]/div[2]/div/div[1]/div/div/ul/li[8]/div/ul/li/a/span/span[2]",
          'received application'                        =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnReceiveApplication']",
          'rescind application'                         =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnRescindApplication']",
          'establishment profile'                       =>"xpath^^.//*[contains(text(),'stablishment Profile')]",
          'select establishment'                        =>"xpath^^.//*[contains(text(),'elect Establishment')]",
          'my establishment home'                       =>"xpath^^.//*[@class='rtsTxt'][text()='My Establishments']",
          # 'establishment home icon Hillside Turkey'    =>"xpath^^html/body/form/div[7]/div[3]/div/div/div[4]/div[2]/div[2]/table/tbody/tr[2]/td[1]/input",
          'establishment home icon'    =>"xpath^^.//*[contains(@id, 'ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucSearch_gridSearchResults_ctl00_ctl04_gbccolumn')]",
          'types of inspection'                        =>"xpath^^.//*[contains(text(), 'Types of Inspection')]",
          '9080-3 application header'                  =>"xpath^^.html/body/form/div[7]/div[3]/div/div/div[7]/div/ul/li[8]/div/ul/li/div/div[3]/p",
          'view 9080-3 applications'                   =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadPanelBar1_i7_i0_grid9080Applications_ctl00_ctl04_gbcView']",
          'search tab'                                 =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_SearchTabs']/div/ul/li[1]/a/span/span/span",
          'select establishment number textbox'        =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucSearch_txtNumber']",
          'search select establishment'                =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucSearch_btnSearch']",
          'select establishment search'                =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_EstablishmentSearchControl_btnSearch']",
          'search establishment number'                =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_EstablishmentSearchControl_txtNumber']",
          'establishment search home icon'             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_EstablishmentSearchControl_gridSearchResults_ctl00_ctl04_gbccolumn']"













      }
end