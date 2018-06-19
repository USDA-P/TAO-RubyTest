def map_exports_librarian
@page_objects['exports_librarian'] =


    {
        #Export librarian, adding a country.
        'role drop down'                                   =>"xpath^^.//*[@id='ctl00_ctl00_UserRoleDropDownList']",
        'country drop down'                                =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_AppMenuBar']/ul/li[1]/a/span/span[1]",
        'select country'                                   =>"xpath^^.//*[contains(text(), 'elect Country')]",
        'country selection page'                           =>"xpath^^.//*[contains(text(), 'Country Selection')]",
        'country profile page'                             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ruleSectionCountryNm']",
        'country selection drop down'                      =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_DDLCountry']",
        'country profile'                                  =>"xpath^^//div[@id='ctl00_ctl00_ContentPlaceHolder1_AppMenuBar']/ul/li/div/ul/li[2]/a/span/span[2]",
        'add new file'                                     =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocuments_rgUploadDocuments_ctl00_ctl02_ctl00_lnkAddNewFile']",
        'browse new file'                                  =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocuments_fileUpload']",
        'document tittle text box'                         =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocuments_txtDocumentTitle']",
        'upload document button'                           =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocuments_btnUpload']",
        'cancel upload document button'                    =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocuments_btnCancel']",
        'save upload document button'                      =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_submitUpdateCountryProfileBtn']",
        'upload document success message display'          =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocuments_lblDisplayMessage']",
        'save button on country profile'                   =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_submitUpdateCountryProfileBtn']",
        'signature type: edit country profile'             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_signTypecb_1']",
        'allow multiple species on export certificate no: edit country profile'             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_allowMultSpeciesRbl_0']",
        'celsius: edit country profile'                    =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_tempScaleRbl_0']",
        'rule collection: create a rule collection'        =>"xpath^^.//*[contains(text(), 'ule Collections')]",
        'rule collection: name'                            =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Name']",
        'rule collection: description'                    =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Description']",
        'rule collection: save button'                    =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_docSubmit']",
        'rule collection: edit description in collection' =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtCollectionDesc']",
        'rule collection: new collection added'           =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radRuleCollections']//*[contains(text(), 'Automation_Test_Date112')]",
        'rule collection: edit new collection added'      =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radRuleCollections']//*[contains(text(), 'Edited Automation Test Description data.')]",
        'return to rule collection'                       =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radBtnRuleCollection']",


    }
end