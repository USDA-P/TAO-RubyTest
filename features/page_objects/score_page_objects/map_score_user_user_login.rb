# This file contains page objects xpath for Score Login page after Login

def map_score_user_user_login
  @page_objects['score_user_user_login'] =
      {
        'select user' => "xpath^^.//*[@id='SelectedUser']",
        'login' => "xpath^^.//input[@value='Login']"
      }
end