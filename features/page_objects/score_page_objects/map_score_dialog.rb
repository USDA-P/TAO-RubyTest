# This file contains page objects xpath for Score Login page after Login

def map_score_dialog
  @page_objects['score_dialog'] =
      {
          'save'                        =>      "xpath^^.//span[text()='Please Save Changes']/following::button[text()='Save'][1]",
          'discard'                     =>      "xpath^^.//span[text()='Please Save Changes']/following::button[text()='Discard'][1]",
          'cancel'                      =>      "xpath^^.//span[text()='Please Save Changes']/following::button[text()='Cancel'][1]",
          'cancel dialog:yes'           =>      "xpath^^.//p[contains(text(),'Are you sure you want to')]/following::button[text()='Yes']",
          'cancel dialog:no'            =>      "xpath^^.//p[contains(text(),'Are you sure you want to')]/following::button[text()='No']",
          'delete dialog:yes'           =>      "xpath^^.//p[contains(text(),'Are you sure you want to delete')]/following::button[text()='Yes']",
          'delete dialog:no'            =>      "xpath^^.//p[contains(text(),'Are you sure you want to delete')]/following::button[text()='No']",
          'report death dialog:yes'     =>      "xpath^^.//span[text()='Report Death']/following::button[text()='Yes'][1]",
          'report death dialog:no'      =>      "xpath^^.//span[text()='Report Death']/following::button[text()='No'][1]"
  }
end