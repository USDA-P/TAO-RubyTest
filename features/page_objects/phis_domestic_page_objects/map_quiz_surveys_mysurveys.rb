def map_quiz_surveys_mysurveys
  @page_objects['quiz_surveys_mysurveys'] =
      {
          'lab sampling' => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_AppMenuBar"]/descendant::span[text()="Lab Sampling"]'
      }
end
