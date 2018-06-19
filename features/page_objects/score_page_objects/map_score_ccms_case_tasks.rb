# This file contains page objects xpath for Score case Tasks page after Login

def map_score_ccms_case_tasks
  @page_objects['score_ccms_case_tasks'] =
      {
          'tasks:add tasks:task type-label'                             =>      "xpath^^.//*[@for='TaskAndNote_Task_TaskTypeListItemId']",
          'tasks:add tasks:task type-field'                             =>      "xpath^^.//*[@id='TaskAndNote_Task_TaskTypeListItemId']",
          'tasks:add tasks:assigned to division-label'                  =>      "xpath^^.//*[@for='editTask.divisionList']",
          'tasks:add tasks:assigned to division-field'                  =>      "xpath^^.//*[@id='TaskAndNote_Task_DivisionList']",
          'tasks:add tasks:assignee-label'                              =>      "xpath^^.//*[@for='TaskAndNote_Task_AssigneeIDs']",
          'tasks:add tasks:assignee-field'                              =>      "xpath^^.//*[@id='TaskAndNote_Task_AssigneeIDs']",
          'tasks:add tasks:current status-label'                        =>      "xpath^^.//*[@id='TaskAndNote_Task_StatusListItemId']",
          'tasks:add tasks:current status-field'                        =>      "xpath^^.//*[@id='TaskAndNote_Task_StatusName']",
          'tasks:add tasks:created on-label'                            =>      "xpath^^.//*[@for='TaskAndNote_Task_CreatedDate']",
          'tasks:add tasks:created on-field'                            =>      "xpath^^.//*[@id='TaskAndNote_Task_CreatedDate']",
          'tasks:add tasks:created by-label'                            =>      "xpath^^.//*[@for='TaskAndNote_Task_CreatedBy']",
          'tasks:add tasks:created by-field'                            =>      "xpath^^.//*[@id='TaskAndNote_Task_CreatedBy']",
          'tasks:add tasks:task instructions-label'                     =>      "xpath^^.//*[@for='TaskAndNote_Task_Instructions']",
          'tasks:add tasks:task instructions-field'                     =>      "xpath^^.//*[@id='TaskAndNote_Task_Instructions']",
          'tasks:add tasks:lab key-label'                               =>      "xpath^^.//*[@for='TaskAndNote_Task_LabKey']",
          'tasks:add tasks:lab key-field'                               =>      "xpath^^.//*[@id='TaskAndNote_Task_LabKey']",
          'tasks:add tasks:generate'                                    =>      "xpath^^.//*[@id='TaskAndNote_Task_LabKey']/following::button[contains(text(),'Generate')]",
          'tasks:add tasks:new note title-label'                        =>      "xpath^^.//*[@for='New_Note_Title']",
          'tasks:add tasks:new note title-field'                        =>      "xpath^^.//*[@id='TaskAndNote_Note_Title']",
          'tasks:add tasks:new note title-error'                        =>      "xpath^^.//*[@id='TaskAndNote_Note_Title-error']",
          'tasks:add tasks:new note text-label'                         =>      "xpath^^.//*[@id='TaskAndNote_Note_Text']",
          'tasks:add tasks:new note text-field'                         =>      "xpath^^.//*[@id='TaskAndNote_Note_Text']",
          'tasks:add tasks:new note text-error'                         =>      "xpath^^.//*[@id='TaskAndNote_Note_Text-error']",
          'tasks:add tasks:mark as complete-label'                      =>      "xpath^^.//*[@for='TaskAndNote_Task_MarkAsComplete']",
          'tasks:add tasks:save'                                        =>      "xpath^^.//*[@for='TaskAndNote_Task_MarkAsComplete']/following::button[contains(text(),'Save')][1]",
          'tasks:add tasks:cancel'                                      =>      "xpath^^.//*[@for='TaskAndNote_Task_MarkAsComplete']/following::button[contains(text(),'Cancel')][1]",
          'tasks:add tasks:update assignee:assigned to division-field'  =>      "xpath^^.//*[@id='UpdateAssignee_DivisionList']",
          'tasks:add tasks:update assignee:assignee-field'              =>      "xpath^^.//*[@id='AssigneeIDs_Assignee']",
          'tasks:add tasks:update assignee:instructions-field'          =>      "xpath^^.//*[@id='Instructions_Assignee']",
          'tasks:add tasks:update assignee:save'                        =>      "xpath^^.//*[@id='updateAssigneeTaskForm']/following::button[(text()='Save')]",
          'tasks:add tasks:update assignee:cancel'                      =>      "xpath^^.//*[@id='updateAssigneeTaskForm']/following::button[(text()='Cancel')]",
          'tasks:add tasks:cancel task:reason'                          =>      "xpath^^.//*[@id='ReasonForCancelingListItemId']",
          'tasks:add tasks:cancel task:description'                     =>      "xpath^^.//*[@id='CancelTaskDescription']",
          'tasks:add tasks:cancel task:description-error'               =>      "xpath^^.//*[@id='CancelTaskDescription-error']",
          'tasks:add tasks:cancel task:save'                            =>      "xpath^^.//*[@id='cancelTaskDialog']/following::button[text()='Save']",
          'tasks:add tasks:cancel task:cancel'                          =>      "xpath^^.//*[@id='cancelTaskDialog']/following::button[text()='Cancel']"
      }
end