def map_quiz_surveys_surveywelcome
  @page_objects['quiz_surveys_surveywelcome'] =
      {
          'start'                   => 'xpath^^.//input[@value="Start"]',
          'resume'                  => 'xpath^^.//*[contains(@value,"Resume")]'
      }
end