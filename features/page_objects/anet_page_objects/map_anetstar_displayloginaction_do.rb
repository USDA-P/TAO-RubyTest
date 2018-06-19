def map_anetstar_displayloginaction_do
  @page_objects['anetstar_displayloginaction_do'] =
                    {
                        #Login
                        'full name' => "css^^.custom-combobox-input.ui-widget.ui-widget-content.ui-state-default.ui-corner-left.ui-autocomplete-input",
                        'submit login' => "xpath^^.//*[@type='submit']",
                        'role'=>"xpath^^//*[@id='change_role_select']",
                        
                        #Star Page Objects


                        'employee name'=>"xpath^^.//*[@name='starEmpId']",
  'emloyee compliance'=>"xpath^^.//*[@id='elementSatisfactory']",
  'compliance followup'=>"xpath^^.//*[@name='assessmentQuestions.headerList[0].subHeaderList[0].sectionList[0].elementList[0].followup']",
  'compliance comments'=>"xpath^^.//*[@name='assessmentQuestions.headerList[0].subHeaderList[0].sectionList[0].elementList[0].elementComments']",
  'create star'=>"xpath^^//*[@id='leftnavmenu']/div[3]/p[4]/a",
  'star template'=>"xpath^^//*[@id='leftnavmenu']/div[3]/p[18]/a",
  'header'=>"xpath^^.//*[@id='headerName']",
  'subheader'=>"xpath^^.//*[@id='subHeaderName']",
  'section'=>"xpath^^.//*[@id='sectionName']",
  'add element'=>"xpath^^.//*[text()='Add Element']",
  'sequence'=>"xpath^^.//*[@id='elementObject.elementSeqNumTemp']",
  'element'=>"xpath^^.//*[@id='elementObject.elementLabelTemp']",
  'save element'=>"xpath^^//*[@id='att_container']/div[13]/div[1]/a",
  'preview star template'=>"xpath^^//*[@id='att_container']/div[2]/div[2]/a",
  'action'=>"xpath^^.//*[@id='navigationAction']",
  'go'=>"xpath^^.//*[text()='Go']",
  'assessment number'=>"xpath^^//*[@id='search_table565']/tbody/tr[4]/td[2]",
  'view star'=>"xpath^^//*[@id='leftnavmenu']/div[3]/p[11]",
  'fiscal year'=>"xpath^^.//*[@id='fiscalYear']",
  'search'=>"xpath^^//*[@id='search_container']/div[3]/div[2]/a",
  'role'=>"xpath^^//*[@id='change_role_select']",
  'employee name search'=>"xpath^^/html/body/div/table[2]/tbody/tr[1]/td[2]/table/tbody/tr[2]/td[1]/table[1]/tbody/tr[11]/td[1]",
  'reviewed by dm'=>"xpath^^.//*[@id='reviewedByDMDDM_checkbox']",
  'dm comments'=>"xpath^^.//*[@name='reviewerComments2']",
  'fls comments'=>"xpath^^.//*[@name='reviewerComments1']",
  'reviewed by fls'=>"xpath^^.//*[@id='reviewedByFLS_checkbox']",
  'dm view star'=>"xpath^^//*[@id='leftnavmenu']/div[3]/p[11]/a",
  'earo view star'=>"xpath^^//*[@id='leftnavmenu']/div[3]/p[13]/a",
  'fls view star'=>"xpath^^.//*[@id='leftnavmenu']/div[3]/p[7]/a",
  'earo comments'=>"xpath^^.//*[@name='reviewerComments3']",
  'reviewed by earo'=>"xpath^^.//*[@id='reviewedByEARO_checkbox']",
                    }
end