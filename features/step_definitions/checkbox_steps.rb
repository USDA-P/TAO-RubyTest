#**********************************************************************************************************************************************
#**********************************Step Definitions for Check box *****************************************************************************

Then(/^the user check "(.*)" checkbox on "(.*)" page$/) do |chk_box_name, page_name|

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
  selector, element_path = get_element_target(chk_box_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{chk_box_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{chk_box_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Create the checkbox object
  chk_box_obj = @browser.checkbox(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(chk_box_obj)

  # Focus on element to make it visible
  focus_on_element(chk_box_obj)

  #Check the checkbox status, Skip if already checked
  chk_box_obj = chk_box_obj.set?
  if chk_box_obj.eql? true
    # Skip Clicking on Checkbox as already checked
  else
    # Create the checkbox object
    chk_box_obj = @browser.checkbox(selector, element_path)

    # Focus on element to make it visible
    focus_on_element(chk_box_obj)

    # set value as true to check checkbox
    chk_box_obj.set
    chk_box_obj.set(true)
  end

end

Then(/^the user uncheck "(.*)" checkbox on "(.*)" page$/) do |chk_box_name, page_name|
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(chk_box_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{chk_box_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{chk_box_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Create the checkbox object
  chk_box_obj = @browser.checkbox(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(chk_box_obj)
  # chk_box_obj.present?

  # Focus on element to make it visible
  focus_on_element(chk_box_obj)

  #Check the checkbox status, uncheck if already checked
  chk_box_obj = chk_box_obj.set?
  if chk_box_obj.eql? true

    # Create the checkbox object
    chk_box_obj = @browser.checkbox(selector, element_path)

    # Clear the checkbox value and set value as false to uncheck checkbox
    chk_box_obj.clear
    chk_box_obj.set(false)
  else
    # Skip Clicking on Checkbox as already unchecked
  end
end

Then(/^the user can see "(.*)" checkbox is "(.*)" on "(.*)" page$/) do |chk_box_name, obj_state, page_name|

  chk_box_obj = nil

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(chk_box_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{chk_box_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{chk_box_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Case to check for Enable or Disable object state to verify
  case obj_state.downcase
    when 'disabled'
      # Create the checkbox object
      chk_box_obj = @browser.checkbox(selector, element_path)

      # Wait for element to be present
      wait_for_disable_element(chk_box_obj)

      # Focus on element to make it visible
      focus_on_element(chk_box_obj)

      # get the state of object
      chk_box_obj = chk_box_obj.disabled?

    when 'enabled'
      # Create the checkbox object
      chk_box_obj = @browser.checkbox(selector, element_path)

      # Wait for element to be exist, visible,present and enabled
      wait_for_element(chk_box_obj)

      # Focus on element to make it visible
      focus_on_element(chk_box_obj)

      # get the state of object
      chk_box_obj = chk_box_obj.enabled?

    when 'checked'
      # Create the checkbox object
      chk_box_obj = @browser.checkbox(selector, element_path)

      # Wait for element to be exist, visible,present and enabled
      wait_for_element(chk_box_obj)

      # Focus on element to make it visible
      focus_on_element(chk_box_obj)

      # get the state of object
      chk_box_obj = chk_box_obj.set?

    else
      fail("Entered #{obj_state} state is not found please use Disabled,Enabled and Checked only in Gherkin")
  end

  # Soft Fail the steps and continues to next step
  checkpoint (chk_box_obj.eql? true), "The #{chk_box_name} button is not #{obj_state} on page"
end

Then(/^the user check "(.*)" checkbox with hidden or overlapped the input field on "(.*)" page$/) do |chk_box_name, page_name|

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(chk_box_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{chk_box_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{chk_box_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css
  chk_box_label_path= element_path+'/following-sibling::label'
  # Create the checkbox object
  chk_box_obj_label = @browser.label(selector, chk_box_label_path)
  chk_box_obj = @browser.radio(selector, element_path)
  # Wait for element to be exist, visible,present and enabled
  wait_for_element(chk_box_obj_label)

  # Focus on element to make it visible
  focus_on_element(chk_box_obj_label)

  #Check the checkbox status, Skip if already checked
  chk_box_obj = chk_box_obj.set?
  if chk_box_obj.eql? false
    # Skip Clicking on Checkbox as already checked
    chk_box_obj_label.click
  end

end

Then(/^the user uncheck "(.*)" checkbox with hidden or overlapped the input field on "(.*)" page$/) do |chk_box_name, page_name|
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(chk_box_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{chk_box_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{chk_box_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css
  chk_box_label_path= element_path+'/following-sibling::label'

  # Create the checkbox object
  chk_box_obj_label = @browser.label(selector, chk_box_label_path)
  chk_box_obj = @browser.radio(selector, element_path)
  # Wait for element to be exist, visible,present and enabled
  wait_for_element(chk_box_obj_label)

  # Focus on element to make it visible
  focus_on_element(chk_box_obj_label)

  #Check the checkbox status, Skip if already checked
  chk_box_obj = chk_box_obj.set?
  if chk_box_obj.eql? true
    # Skip Clicking on Checkbox as already checked
    chk_box_obj_label.click
  end
end


Then(/^the user sees "(.*)" checkbox with hidden or overlapped the input field is "(.*)" on "(.*)" page$/) do |field_name, obj_state, page_name|

  # radio_btn_obj = nil

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(field_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end

  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css
  chk_box_label_path= element_path+'/following-sibling::label'

  # Create the radio button object
  chk_box_obj_label = @browser.label(selector, chk_box_label_path)
  chk_box_obj = @browser.radio(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(chk_box_obj_label)

  # Focus on element to make it visible
  focus_on_element(chk_box_obj_label)

  #Check the checkbox status, Skip if already checked
  chk_box_obj = chk_box_obj.set?

  if obj_state.downcase.eql? 'checked'
    # if radio_btn_obj.eql? false
    #   # Create the radio button object
    #   radio_btn_obj_label.click
    # end
    checkpoint (chk_box_obj.eql? true), "The #{field_name} checkbox is not #{obj_state} on page"
  else
    if obj_state.downcase.eql? 'unchecked'
      # if radio_btn_obj.eql? true
      #   # Create the radio button object
      #   radio_btn_obj_label.click
      # end
      checkpoint (chk_box_obj.eql? false), "The #{field_name} checkbox is not #{obj_state} on page"
    else
      # if obj_state.downcase.eql? 'enabled'
      #   radio_btn_obj =  radio_btn_obj.enabled?
      #   checkpoint (radio_btn_obj.eql? true), "The #{field_name} button is not #{obj_state} on page"
      # else
      #   if obj_state.downcase.eql? 'enabled'
      #   radio_btn_obj =  radio_btn_obj.disabled?
      #   checkpoint (radio_btn_obj.eql? true), "The #{field_name} button is not #{obj_state} on page"
      #   else
      fail 'Please use Checked or UnChecked in Gherkin'
      # end
      # end

    end
  end
  # if radio_btn_obj.eql? false
  #   # Create the radio button object
  #   radio_btn_obj_label.click
  # end
  #
  # # Soft Fail the steps and continues to next step
  # checkpoint (radio_btn_obj.eql? true), "The #{field_name} button is not #{obj_state} on page"
end

World(MiniTest::Assertions)