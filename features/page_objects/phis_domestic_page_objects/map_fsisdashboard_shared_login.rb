def map_fsisdashboard_shared_login
  @page_objects['fsisdashboard_shared_login'] =
      {
          'select a user dropdown'           => 'xpath^^//*[@id="ctl00_ContentPlaceHolder1_lstSystemUsers"]',
          'show all users option'            => "xpath^^//*[@id='ctl00_ContentPlaceHolder1_rbShowAll']",
          'show internal users only option'  => 'xpath^^//*[@id="ctl00_ContentPlaceHolder1_rbShowFiltered"]',
          'sign out button'                  => 'xpath^^//*[@id="ctl00_lbSignout"]',
          'title' => 'xpath^^//*[@id="ctl00_ContentPlaceHolder1_lblTitle"]',
          'home dashboard'                            => "xpath^^.//*[@id='section_header']/p",
      }

end
