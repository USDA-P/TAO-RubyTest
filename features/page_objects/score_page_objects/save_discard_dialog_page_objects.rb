def save_discard_popup_page_element(field, page)

  # Create new hash table for page object
  @save_discard_dialog_hash = Hash.new if @save_discard_dialog_hash.nil?
  field.downcase!

  # Check if page name has child page if yes then get the last child page name, else return page name
  if page.include? '>'
    page_name = page.split('>')
    page_name = page_name[page_name.length-1].strip
  else
    page_name = page
  end

  # Switch case to get the page objects of requested page
  case page_name.downcase

    when 'save discard dialog'
      save_discard_dialog_page_objects
    when 'cancel yes no dialog'
      cancel_yes_no_dialog_page_objects
    when 'delete yes no dialog'
      delete_yes_no_dialog_page_objects
    else

      fail("Not able to retrieve page objects; Hash key function is not found for #{page_name} in page object file")

  end
  @save_discard_dialog_hash[field]

end

# Page Objects for overview page
def save_discard_dialog_page_objects
  # @save_discard_dialog_hash['save']="xpath^^.//span[text()='Please Save Changes']/following::button[text()='Save'][1]"
  # @save_discard_dialog_hash['discard']="xpath^^.//span[text()='Please Save Changes']/following::button[text()='Discard'][1]"
  # @save_discard_dialog_hash['cancel']="xpath^^.//span[text()='Please Save Changes']/following::button[text()='Cancel'][1]"
end

def cancel_yes_no_dialog_page_objects
  # @save_discard_dialog_hash['cancel dialog:yes']="xpath^^.//p[contains(text(),'Are you sure you want to')]/following::button[text()='Yes']"
  # @save_discard_dialog_hash['cancel dialog:no']="xpath^^.//p[contains(text(),'Are you sure you want to')]/following::button[text()='No']"
end

def delete_yes_no_dialog_page_objects
  # @save_discard_dialog_hash['delete dialog:yes']="xpath^^.//p[contains(text(),'Are you sure you want to delete')]/following::button[text()='Yes']"
  # @save_discard_dialog_hash['delete dialog:no']="xpath^^.//p[contains(text(),'Are you sure you want to delete')]/following::button[text()='No']"
end