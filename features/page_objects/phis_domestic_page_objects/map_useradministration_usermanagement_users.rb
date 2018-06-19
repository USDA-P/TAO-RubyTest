def map_useradministration_usermanagement_users
  @page_objects['useradministration_usermanagement_users'] =
      {
          'title'             => 'xpath^^//*[@id="titlebar"]',
          'users table'       => 'xpath^^//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgUsers_ctl00"]',
          'open profile icon' => 'xpath^^//tr[contains(., "{0}")]/td/input[@title="Open Profile"]'
      }
end
