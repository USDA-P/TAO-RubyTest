#**********************************************************************************************************************************************
#**********************************Step Definitions for Radio Buttons *************************************************************************

Then(/^the user click "(.*)" radio button on "(.*)" page$/) do |btn_name, page_name|

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
  selector, element_path = get_element_target(btn_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{btn_name} in #{page_name} page objects File")
  end

  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{btn_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Create the radio button object
  radio_btn_obj = @browser.radio(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(radio_btn_obj)

  # Focus on element to make it visible
  focus_on_element(radio_btn_obj)

  # #Check the checkbox status, Skip if already checked
  # radio_btn_obj = radio_btn_obj.set?
  # if radio_btn_obj.eql? true
  #   # Skip Clicking on radio button as already checked
  # else
    # Create the radio button object
    # radio_btn_obj = @browser.radio(selector, element_path)

    # Click on radio button
    radio_btn_obj.set

  # end

end

Then(/^the user sees "([^"]*)" radio button is "([^"]*)" on "([^"]*)" page$/) do |field_name, obj_state, page_name|

  radio_btn_obj = nil

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

  # Case to check for Enable or Disable object state to verify
  case obj_state.downcase
    when 'disabled'
      # Create the radio button object
      radio_btn_obj = @browser.radio(selector, element_path)

      # Wait for element to be present
      wait_for_disable_element(radio_btn_obj)

      # Focus on element to make it visible
      focus_on_element(radio_btn_obj)

      # get the state of object
      radio_btn_obj = radio_btn_obj.disabled?

    when 'enabled'
      # Create the radio button object
      radio_btn_obj = @browser.radio(selector, element_path)

      # Wait for element to be exist, visible,present and enabled
      wait_for_element(radio_btn_obj)

      # Focus on element to make it visible
      focus_on_element(radio_btn_obj)

      # get the state of object
      radio_btn_obj = radio_btn_obj.enabled?

    else
      fail("Entered #{obj_state} state is not found please use Disabled or Enabled only in Gherkin")

  end

  # Soft Fail the steps and continues to next step
  checkpoint (radio_btn_obj.eql? true), "The #{field_name} button is not #{obj_state} on page"
end

# Gherkin used to set styled radio buttons that have hidden or overlapped the input field
Then(/^the user "(.*)" the "(.*)" radio button with hidden or overlapped the input field on "(.*)" page$/) do |action, btn_name, page_name|

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(btn_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{btn_name} in #{page_name} page objects File")
  end

  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{btn_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css
radio_btn_label_path= element_path+'/following-sibling::label'

  # Create the radio button object
  radio_btn_obj_label = @browser.label(selector, radio_btn_label_path)
  radio_btn_obj = @browser.radio(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(radio_btn_obj_label)

  # Focus on element to make it visible
  focus_on_element(radio_btn_obj_label)

  #Check the checkbox status, Skip if already checked
  radio_btn_obj = radio_btn_obj.set?
  if action.downcase.eql? 'check'
    if radio_btn_obj.eql? false
      # Create the radio button object
      radio_btn_obj_label.click
    end
  else
    if action.downcase.eql? 'uncheck'
      if radio_btn_obj.eql? true
        # Create the radio button object
        radio_btn_obj_label.click
      end
    end
  end
  if radio_btn_obj.eql? false
    # Create the radio button object
    radio_btn_obj_label.click
  end

end


Then(/^the user sees "(.*)" radio button with hidden or overlapped the input field is "(.*)" on "(.*)" page$/) do |field_name, obj_state, page_name|

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
  radio_btn_label_path= element_path+'/following-sibling::label'

  # Create the radio button object
  radio_btn_obj_label = @browser.label(selector, radio_btn_label_path)
  radio_btn_obj = @browser.radio(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(radio_btn_obj_label)

  # Focus on element to make it visible
  focus_on_element(radio_btn_obj_label)

  #Check the checkbox status, Skip if already checked
  radio_btn_obj = radio_btn_obj.set?

  if obj_state.downcase.eql? 'checked'
    # if radio_btn_obj.eql? false
    #   # Create the radio button object
    #   radio_btn_obj_label.click
    # end
    checkpoint (radio_btn_obj.eql? true), "The #{field_name} button is not #{obj_state} on page"
  else
    if obj_state.downcase.eql? 'unchecked'
      # if radio_btn_obj.eql? true
      #   # Create the radio button object
      #   radio_btn_obj_label.click
      # end
      checkpoint (radio_btn_obj.eql? false), "The #{field_name} button is not #{obj_state} on page"
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
