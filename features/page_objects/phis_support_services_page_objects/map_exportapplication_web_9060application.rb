def map_exportapplication_web_9060application
  @page_objects['exportapplication_web_9060application'] =
      {

          'Create Application'      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl02_ctl00_InitInsertButton"]',
          # 'establishment home' => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_MyEstablishments_gridUserEstablishments_ctl00_ctl04_gbccolumn"]'
          'shipment type'           => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlShipmentType"]',
          'application type'        => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlApplicationType"]',
          'next'                    => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnNext"]',
          'company name'            => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AddressInformationControl_txtCompany"]',
          'address line 1'          => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AddressInformationControl_txtAddress1"]',

          'city'                    => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AddressInformationControl_txtCity"]',
          'country'                 => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AddressInformationControl_ddlCountry"]',

          'import:company name'       => 'xpath^^.//*[text()="Importer"]/following::*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AddressInformationControl_txtCompany"]',
          'import:address line 1'   => 'xpath^^.//*[text()="Importer"]/following::*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AddressInformationControl_txtAddress1"]',

          'import:city'             => 'xpath^^.//*[text()="Importer"]/following::*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AddressInformationControl_txtCity"]',
          'import:country'          => 'xpath^^.//*[text()="Importer"]/following::*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AddressInformationControl_ddlCountry"]',


          'state/province'              => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AddressInformationControl_ddlState"]',
          'postal code'                 => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_AddressInformationControl_txtZipCode"]',
          'export establishment number' => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EstablishmentNumberOnApplicationControl_ddlEstNumOnApp"]',
          'export mark to be used'      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rdExportMarkToBeUsed_0"]',
          'next'                        => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnNext"]',

          'certification statement for meat'                => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lblMeat"]',
          'certification statement for poultry'             => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lblPoultry"]',
          'certification statement for siluriformes fish'   => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lblFish"]',
          'certification statement for none the above'      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lblNone"]',

          'add product'       => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProductsOnApplication_rgProductSummary_ctl00_ctl02_ctl00_lnkAddProduct"]',
          'product name'      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtProductName"]',
          'haccp category'    => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlHACCPCategory"]',

          'species'           => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlSpecies"]',
          'is the maturity less than 30 months: no'     => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rbMaturity_1"]',
          'is the product frozen/shelf-stable: no'      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rbFrozen_1"]',
          'marked net weight of lot'                    => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtWeightOfLotPounds"]',
          'number of packages in lot'                   => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtNumberOfPackages"]',
          'package type'                                => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlPackageType"]',
          'est. number on product icon'                 => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_imgEditEstablishment"]',

          'number'                      => 'xpath^^.//*[ @id="EstablishmentSearchControl_txtNumber"]',
          'search'                      => 'xpath^^.//*[@id="EstablishmentSearchControl_btnSearch"]',
          'establishment home icon'     => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_MyEstablishments_gridUserEstablishments_ctl00_ctl04_gbccolumn"]',
          #
          'finish'                      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnSave"]',
          'total net weight'            => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtTotalWeightInPounds"]',
          'terms and agreement'         => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_chkIctfy"]',

          'certification statements'                      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_chkMeat"]',
          'next'                                          => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnNext"]',
          'submit application'                            => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnSubmitApplication"]',
          'confirmation message for submitting 9060 application' => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MessageBoxControl_MessageList"]/li/span',
          'exit menu'                                     => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/ul/li/div/ul/li[10]/a/span/span[2]',
          'establishment search:frame'                    => 'xpath^^.//iframe[@name="EstablishmentSearch"]',
          'cancel'                                        => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnCancel"]',
          'establishment search control: establishment home icon' => 'xpath^^.//*[@id="EstablishmentSearchControl_gridSearchResults_ctl00_ctl04_gbccolumn"]',
          'est. number on product: select one'            => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlEstablishment"]',
          'i certify statement'                           => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_chkFish"]',
          'shipment information 9060: next'               => 'xpath^^.//*[contains(@title,"Next")]',
          'meat:i certify statement'                      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_chkMeat"]',
          'poultry: i certify statement'                  => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_chkPoultry"]',
          'is the maturity less than 30 months: yes'      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rbMaturity_0"]',
          'sign out'                                      => 'xpath^^.//*[@id="ctl00_ctl00_lbSignout"]',
          'my establishments 1'                             => 'xpath^^.//*[@id="MyEstablishmentTab"]',
          '9060 applications: img unlock app'             => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl04_imgUnlockApp']",
          'create application: first record'              => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00__0"]/td[1]',
          'edit unsubmited'                                          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl04_imgHome1']",

          'edit'                                          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00']/thead/tr[2]/th[10]",
          'add new record'                                => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_containerAndSealInformationControl_rgContainerAndSealInformation_ctl00_ctl02_ctl00_InitInsertButton"]',
          'commercial container number'                   => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_containerAndSealInformationControl_rgContainerAndSealInformation_ctl00_ctl02_ctl04_TB_Container"]',
          'commercial seal number'                        => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_containerAndSealInformationControl_rgContainerAndSealInformation_ctl00_ctl02_ctl04_TB_Seal"]',
          'insert'                                        => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_containerAndSealInformationControl_rgContainerAndSealInformation_ctl00_ctl02_ctl04_PerformInsertButton"]',
          'confirmation message for container and seal information'  => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_containerAndSealInformationControl_ucMsgBox_MessageList"]',
          'export establishment name'   => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00__0"]/td[3]',
          'delete icon'                 => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl04_imgDeleteApp"]',
          'add new file 1'                => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadRequiredDocumentation_rgUploadRequiredDocumentation_ctl00_ctl02_ctl00_lnkAddNewRequiredDocumentation"]',
          'upload 1'                      => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadRequiredDocumentation_btnReqUpload"]',
          'document title 1'              => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadRequiredDocumentation_txtDocumentTitle"]',
          'supportive documentation provided by applicant: add new file'       =>'xpath^^.//*[text()="Add New File"]/following::*[@id="content"]/span[3]',
          'add new file 2'              => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocumentWithGrid_rgUploadDocuments_ctl00_ctl02_ctl00_lnkAddNewFile"]',
          'document title 2'            => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocumentWithGrid_txtDocumentTitle"]',
          # 'supportive documentation provided by applicant: upload'                    => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocumentWithGrid_btnUpload"]',
          # 'choose file'                      =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocumentWithGrid_fileUpload"]',
          'supportive documentation provided by applicant'                            => 'xpath^^.//*[@id="content"]/span[3]',
          'browse 1'                =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadRequiredDocumentation_fileUpload"]',
          'browse 2'                =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocumentWithGrid_fileUpload"]',
          'upload 2'                =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocumentWithGrid_btnUpload"]',
          'copy 1'                  =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl08_imgEdit"]',
          'copy'                    =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl04_imgEdit"]',
          # .//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl04_imgEdit"]',
          'ok'                      =>'xpath^^.//*[@class="rwInnerSpan"][text()="OK"]',
          'unsubmitted'             =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl04_lblStatus"]',

          'edit 1'                  =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl04_imgHome1"]',

          'cancel 1'                =>'xpath^^.//*[@id="confirm1525361580728_content"]/div/div[2]/a[2]/span/span',
          'previous'                =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnPrevious"]',
          'reviewed by csi'         =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl08_lblStatus"]',
          'approved'                =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl04_lblStatus"]',
          'application status filter text box'    =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl02_ctl03_FilterTextBox_Status"]',

          'search establishments'            =>'xpath^^//a[@id="SearchTab"]/span/span/span',
          'establishment search number'      =>'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_EstablishmentSearchControl_txtNumber"]',
          'search button'                    =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_EstablishmentSearchControl_btnSearch"]',
          'establishment home icon 1'        =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Establishment_EstablishmentSearchControl_gridSearchResults_ctl00_ctl04_gbccolumn"]',
          # 'applicant name'                   =>"xpath^^.//*[contains(text(),'Applicant Name')]",
          'export applicant name'            =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtApplicantName"]',
          'pdf icon'                         =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl04_imgAddProduct1"]',
          'application number filter text box'    =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl02_ctl03_FilterTextBox_ApplicationNumber"]',
          'application number filter button'      =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl02_ctl03_Filter_ApplicationNumber"]',
          'number filter button dropdown'         =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_rfltMenu_detached"]/ul/li[2]/a/span',
          'establishment profile dropdown'        =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/ul/li[1]/a/span/span[2]',
          'select establishment 1'                =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/ul/li[1]/div/ul/li[1]/a/span/span[2]',

          'filter button'                  =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_ctl00_ctl02_ctl03_Filter_Status"]',
          'filter button dropdown'         =>'xpath^^.//div[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radGrid9060Applications_rfltMenu_detached"]/ul/li[2]/a/span',




      }
end