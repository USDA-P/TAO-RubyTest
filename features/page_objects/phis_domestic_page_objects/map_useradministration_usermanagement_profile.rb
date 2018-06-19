def map_useradministration_usermanagement_profile
  @page_objects['useradministration_usermanagement_profile'] =
      {
          'title'                   => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lblTitle"]',
          'roles tab'               => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucTabStrip"]//span[contains(.,"Roles")]',
          'add a role link'         => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProfileRoles1_lnkAddRole"]',
          'business area dropdown'  => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlBAreas"]',
          'roles dropdown'          => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ddlRoles"]',
          'run phis_regression data feed link' => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lnkRunDF"]',
          'message box'             => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMsgBox_pnlMsg"]/div',
          'roles grid'              => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProfileRoles1_rgRoles"]',
          'delete icon'             => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProfileRoles1_rgRoles"]',
      }
end