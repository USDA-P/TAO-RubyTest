def map_fsisdashboard_default
  @page_objects['fsisdashboard_default'] =
      {
          'title'           => 'xpath^^//*[@id="section_header"]',
          'sign out button' => 'xpath^^//*[@id="ctl00_ctl00_lbSignout"]',
          'user management' => 'xpath^^//*[@id="sectionlinks"]/descendant::span[contains(.,"User Management")]',
          'manage users'    => 'xpath^^//*[@id="sectionlinks"]/descendant::span[contains(.,"Manage Users")]',
          'animal disposition'      => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/descendant::span[contains(.,"Animal Disposition")]',
          'establishment reporting' => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/descendant::span[contains(.,"Establishment Reporting")]',
      '9060'                    => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/descendant::span[text()="060"]',
      'role'                    => 'xpath^^.//*[@id="ctl00_ctl00_UserRoleDropDownList"]',

  }
end
