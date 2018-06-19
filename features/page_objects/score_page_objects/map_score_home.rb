# This file contains page objects xpath for Score Home page after Login
def map_score_home
  @page_objects['score_home'] =
      {
          "here's how you know"         =>  "'xpath^^.//button[@class='usa-accordion-button usa-banner-button']'",
          'reference material'          =>  "xpath^^//*//button/span[text()='Reference Material']",
          'cases by status header'      =>  "xpath^^.//*[@id='CasesByStatus']/descendant::h3[(text()='Cases by Status')]",
          'logout'                      =>  "xpath^^.//a[(text()='Logout')]",
          'submit case success'         =>  "xpath^^.//*[@id='successBody']/h4",
          'submit case success:close'   =>  "xpath^^.//*[@id='close-success']"

      }
end
''