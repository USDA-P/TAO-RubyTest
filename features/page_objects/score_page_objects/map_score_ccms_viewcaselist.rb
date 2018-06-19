# This file contains page objects xpath for Score case Lists page after Login

def map_score_ccms_viewcaselist
  @page_objects['score_ccms_viewcaselist'] =
      {
          'first case number'        =>      "xpath^^//*[@id='CasesTable']/tbody/tr[1]/td[3]/a",
          'case list:draft'          =>      "xpath^^.//*[@id='chk-draft']",
          'case list:new'            =>      "xpath^^.//*[@id='chk-new']",
          'case list:active'         =>      "xpath^^.//*[@id='chk-active']",
          'case list:investigated'   =>      "xpath^^.//*[@id='chk-investigated']",
          'case list:all cases'      =>      "xpath^^.//*[@id='radio-allcases']",
          'case list:my cases'       =>      "xpath^^.//*[@id='radio-mycases']",
          'case list progress'       =>      "xpath^^.//*[@id='CasesTable_processing']"
      }
end
