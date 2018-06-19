def map_taskcalendar_establishmenttasklist
  @page_objects['taskcalendar_establishmenttasklist'] =


      {
          #  Complete a 9060-6 Review task for CSI Approval.
          'condemnation record page'          =>'xpath^^..//*[@id="pnlSelections"]',

          # 'assignments dropdown 1'              =>".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EstabTaskPanel']/div/table[1]/tbody/tr/td[2]",
          'assignments dropdown'              =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadComboAssignment_DropDown']",
          'select establishment dropdown'     =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EstablishmentFilterList"]',
          'filter task by dropdown'           =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_BusinessAreaFilterList"]',
          'add'                               =>'xpath^^.//tr[197]/td[10]/a',
          'task date'                         =>'xpath^^html/body/form/div[5]/div[2]/table[2]/tbody/tr[1]/td[2]/div/div/div/table/tbody/tr[2]/td/div/div[2]/table/tbody/tr[4]/td[4]/span[2]/input[1]',
          # 'reason dropdown'                   =>".//*[@id='RadComboReason_Input']",
          'save 1'                              =>'xpath^^.//*[@id="btnUpdate"]',
          'select inspector dropdown'         =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_CalendarInspectorFilter_DropDown"]/div/ul/li[6]',
          'establishmant dropdown 2'          =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_TaskCalendarPnl_CalendarEstablishmentFilter_DropDown"]/div/ul/li[3]',
          # 'reason'                            =>"xpath^^.//*[@id='RadComboReason_DropDown']/div/ul",
          # 'reason arrow'                      =>"xpath^^.//*[@id='RadComboReason_Arrow']",
          'reason dropdown'                   =>'xpath^^.//*[@id="RadComboReason_DropDown"]',
          'task calendar'                  =>'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/ul/li[3]/a/span/span[2]',
          'assignment drop down'                  =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RadComboAssignment_Arrow']",
          'assignment data'                  =>"xpath^^.//*[contains(@class,'rcbHovered')]",

      }
end