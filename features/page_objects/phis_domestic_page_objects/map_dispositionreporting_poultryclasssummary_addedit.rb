def map_dispositionreporting_poultryclasssummary_addedit
    @page_objects['dispositionreporting_poultryclasssummary_addedit'] =
        {

#Adding new poultry record.

'add slaughter record page for poultry'    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_LblHeader']",
'sub class drop down for poultry'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlSubClass']",
'lot number text box for poultry'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtLotNumber']",
'head count text box for poultry'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtHeadCount']",
'live weight text box'                     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtLiveWeight']",
'certified chiled weight text box'         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtCertChilledWeight']",
'certified frozen weight text box'         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtCertFrozenWeight']",
'dead on arrival head count text box'      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtNumberDOA']",
'dead on arrival weight text box'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtDOAWeight']",
'ante-mortem condemned not including doas head count text box'          => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtACondemnedPHVHeadCount']",
'ante-mortem condemned not including doas weight text box'              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtACondemnedNoDOAWeight']",
'post-mortem condemned carcass nyd weight text box'                     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtCondemnCarcassWeight']",
'post-mortem condemned parts weight text box'                           => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtCondemnPartsWeight']",
'remark text box for poultry'                                           => "xpath^^//body",
'save button on the poultry page'                                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnSave']",
'save and new button on the poultry page'                               => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnSaveAndNew']",
'go back button on the poultry page'                                    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnGoBack']",
'required indicator for poultry sub class field'                        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lblSubClassReqd']",
'required indicator for poultry lot number field'                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lblErrorLotNumber']",
'success message for saved poultry record'                              => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMsgBox_MessageList']/li/div[2]",
'go back button for poultry'                                            => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnGoBack']",
'sub class column'                                                      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter_ctl00__0']/td[2]",

#Editing Poultry record elements.
'edit poultry record pencel icon'                                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter_ctl00_ctl04_gbccolumn']",
'head count column'                                                     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter_ctl00__0']/td[4]",
'delete icon for ratite'                                                => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter_ctl00_ctl04_gbcDelete']",

#Post-mortem Carcass Condemnation Details section.
'tuberculosis text box'                                                 => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl04_RadTextBox1']",
'leukosis text box'                                                     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl06_RadTextBox1']",
'septicaemia and toxem text box'                                        => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl08_RadTextBox1']",
'synovitis text box'                                                    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl10_RadTextBox1']",
'tumors text box'                                                       => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl12_RadTextBox1']",
'bruises text box'                                                      => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl14_RadTextBox1']",
'cadavers text box'                                                     => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl16_RadTextBox1']",
'contamination text box'                                                => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl18_RadTextBox1']",
'overscald text box'                                                    => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl20_RadTextBox1']",
'airsacculitis text box'                                                => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl22_RadTextBox1']",
'inflammatory process text box'                                         => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl24_RadTextBox1']",
'no viscera text box'                                                   => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl26_RadTextBox1']",
'plant rejects text box'                                                => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl28_RadTextBox1']",
'miscellaneous text box'                                                => "xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgdTallyCount_ctl00_ctl30_RadTextBox1']",




        }
end