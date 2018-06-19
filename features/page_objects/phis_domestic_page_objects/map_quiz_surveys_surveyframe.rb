
def map_quiz_surveys_surveyframe
  @page_objects['quiz_surveys_surveyframe'] =
      {
          'next'                  => 'xpath^^.//*[contains(@value,"Next")]',
          'submit'                => 'xpath^^.//*[contains(@value,"Submit")]',
          'save & close'          => 'xpath^^.//*[contains(@value,"Save & Close")]',
          'question 1'            => 'xpath^^//*[contains(text(), "Was plant management notified of this sample collection?")]/following::select[1]',
          'question 2'            => 'xpath^^//*[contains(text(), "If animal had a Tail Tag, input tag number here:")]/following::input[1]',
          'question 3'            => 'xpath^^//*[contains(text(), "If the animal had a MCT/Sales tag, input the tag number here:")]/following::input[1]',
          'question 4'            => 'xpath^^//*[contains(text(), "If animal had a Bangle Tag, input tag number here:")]/following::input[1]',
          'question 5'            => 'xpath^^//*[contains(text(), "If animal had a Brand tag, input tag number here:")]/following::input[1]',
          'question 6'            => 'xpath^^//*[contains(text(), "If animal had a Tattoo tag, input tag number here:")]/following::input[1]',
          'question 7'            => 'xpath^^//*[contains(text(), "If animal had an Ear tag, input tag number here:")]/following::input[1]',
          'question 8'            => 'xpath^^//*[contains(text(), "If animal had a Back tag, input tag number here:")]/following::input[1]',
          'question 9'            => 'xpath^^//*[contains(text(), "If animal had any Other type tag, input tag number here:")]/following::input[1]'
      }
end