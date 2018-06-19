# This file contains page objects xpath for Score dashboard with all menus in page after Login
def map_score_ccms
  @page_objects['score_ccms'] =
      {
          'create new case:save as draft'         =>    "xpath^^.//*[@id='save-case-form']",
          'create new case:submit for review'     =>    "xpath^^.//*[@id='submit-case-form']",
          'create new case:save'                  =>    "xpath^^.//*[@id='submit-case-form']",
          'create new case:case number'           =>    "xpath^^.//*[@id='case-number-display']",
          'create new case:date created'          =>    "xpath^^.//*[@id='date-create-display']",
          'create new case:created by'            =>    "xpath^^.//*[@id='created-by-display']",
          'header text'                           =>    "xpath^^.//h2[contains(text(),'Create Case')]",
          'created by'                            =>    "xpath^^.//*[@id='created-by-display']/i",
          'assigned to'                           =>    "xpath^^.//*[@id='assigned-to-display']/i",
          'save draft success'                    =>    "xpath^^.//*[@id='caseAlertText']",
          'close case'                            =>    "xpath^^.//*[@id='close-case-button']",
          'cancel draft'                          =>    "xpath^^.//*[@id='cancel-draft-case-button']"
      }
end
