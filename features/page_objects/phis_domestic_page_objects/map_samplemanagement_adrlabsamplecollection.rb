
def map_samplemanagement_adrlabsamplecollection
  @page_objects['samplemanagement_adrlabsamplecollection'] =
      {
          # Generate Sample Form page objects
          'readonly:establishment'   => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_EstablishmentSelect_Input"]',
          'project code'           => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProjectCodeSelect"]',
          'analysis: mrm – multi-residue method (muscle, liver, kidney)'=> 'xpath^^.//label[(text()="MRM – Multi-Residue Method (Muscle, Liver, Kidney)")]/preceding::input[1]',
          'readonly:category a'            => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProjectSampleSourceSelect_Input"]',
          'readonly:category b'            => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_catBRad_Input"]',
          'category b'            => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_catBRad"]',
          'category c'            => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_catCRad"]',
          'generate sample form'  => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_SubmitButton"]',
          'return to adr'         => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_btnReturnToAdr"]',
          'home'                  => 'xpath^^.//*[@id="top_nav"]/descendant::a[text()="Home"][1]',
          'additional info tab'   => 'xpath^^.//*[@id="QuestionsTab"]/descendant::span[text()="Additional Info"]',
          'schedule'              => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_Schedule"]',
          'start questionnaire'   => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_lnkQuizSurvey"]',
          'modify questionnaire'  => 'xpath^^.//a[(text()="Modify Questionnaire")]',
          'review questionnaire'  => 'xpath^^.//a[(text()="Review Questionnaire")]',
          'retained (by usda)'    => 'xpath^^.//label[text()="Retained (by USDA)"]/preceding::input[1]',
          'herd/folk owner'       => 'xpath^^.//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ProducerNameTextBox"]',
          'save & continue'        =>  './/input[@value="Save & Continue"]',
          # 'start'                   =>  './/input[@value="Start"]',
  #         'next'                    =>  './/*[contains(@value,"Next")]',
  #         'submit'                =>  './/*[contains(@value,"Submit")]',
  #         'question 1' => 'xpath^^//*[contains(text(), "Was plant management notified of this sample collection?")]/following::select[1]',
  #         'question 2'  => 'xpath^^//*[contains(text(), "If animal had a Tail Tag, input tag number here:")]/following::input[1]',
  #     'question 3'  => 'xpath^^//*[contains(text(), "If the animal had a MCT/Sales tag, input the tag number here:")]/following::input[1]',
  # 'question 4'  => 'xpath^^//*[contains(text(), "If animal had a Bangle Tag, input tag number here:")]/following::input[1]',
  # 'question 5'  => 'xpath^^//*[contains(text(), "If animal had a Brand tag, input tag number here:")]/following::input[1]',
  # 'question 6'  => 'xpath^^//*[contains(text(), "If animal had a Tattoo tag, input tag number here:")]/following::input[1]',
  # 'question 7'  => 'xpath^^//*[contains(text(), "If animal had an Ear tag, input tag number here:")]/following::input[1]',
  # 'question 8'  => 'xpath^^//*[contains(text(), "If animal had a Back tag, input tag number here:")]/following::input[1]',
  # 'question 9'  => 'xpath^^//*[contains(text(), "If animal had any Other type tag, input tag number here:")]/following::input[1]',
  'question 10'  => 'xpath^^',
  'question 11'  => 'xpath^^',
  'question 12'  => 'xpath^^',
  'question 13'  => 'xpath^^',
  'question 14'  => 'xpath^^',
  'question 15'  => 'xpath^^',
  'question 16'  => 'xpath^^',
  'question 17'  => 'xpath^^',
  'question 18'  => 'xpath^^'


      }
end
