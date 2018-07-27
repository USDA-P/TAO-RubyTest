def map_ocfo_export_certificate
  @page_objects['ocfo_export_certificate'] =


      {
          #Export librarian, adding a country.
          'left nav: ocfo report'                               =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_AppMenuBar']//*[contains(text(), 'CFO Reports')]",
          'left nav: export applications'                        =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_AppMenuBar']//*[contains(text(), 'xport Applications')]",
          'page verify: submitted export applications'          =>"xpath^^.//*[@id='sectionheader_red']//*[contains(text(), 'Submitted Export Applications')]",
          'radio button: date range'                            =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rbRange']",
          'date range: from text box'                           =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radDPFrom_dateInput']",
          'date range: to text box'                             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radDPTo_dateInput']",
          'date range: search button'                           =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnSearch']",
          'search result: application number'                   =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rg9060Applications_ctl00']/tbody/tr[2]/td[5]",
          'filter result: year'                                 =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rg9060Applications_ctl00']/tbody/tr[1]/td[2]",
          'application number text box'                         =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_txtAN']",
          'radio button: pulled'                                =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rbPulled']",
          'pulled and download link'                            =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnPullAndDownload']",
          'radio button: any'                                   =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rbAny']",
          'radio button: check box'                             =>"xpath^^.//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rg9060Applications_ctl00_ctl04_chkSelector']",

      }
end