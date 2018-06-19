def map_useradministration_usermanagement_editrole
  @page_objects['useradministration_usermanagement_editrole'] =
      {
          'title'                   => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lblTitle"]',
          'business area dropdown'  => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlBAreas"]',
          'roles dropdown'          => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlRoles"]',
          'save and go back button' => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnBack"]'
      }
end