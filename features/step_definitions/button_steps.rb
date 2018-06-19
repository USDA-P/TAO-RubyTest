#**********************************************************************************************************************************************
#**********************************Step Definitions for Buttons *******************************************************************************

Then(/^the user clicks the "(.*)" button on "(.*)" page$/) do |btn_name, page_name|

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

  # Create the button object
  btn_obj = @browser.button(selector, element_path)

  # Click on button
  click_web_element(btn_obj)

end

Then(/^the user clicks button with text "(.*)" on "(.*)" page$/) do |btn_value, page_name|

  # Create the button object
  btn_obj = @browser.button(:value, btn_value)

  if btn_obj.nil?
    fail("Button with text #{btn_value} is not found in #{page_name} page")
  end

  # Click on button
  click_web_element(btn_obj)

end

Then(/^the user can see the "(.*)" button is "(.*)" on "(.*)" page$/) do |btn_name, obj_state, page_name|

  btn_state = nil

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

  # Case to check for Enable or Disable object state to verify
  case obj_state.downcase
    when 'disabled'
      # Create the button object
      btn_obj = @browser.button(selector, element_path)

      # Wait for element to be present
      wait_for_disable_element(btn_obj)

      # Focus on element to make it visible
      focus_on_element(btn_obj)

      # get the state of object
      btn_state = btn_obj.disabled?

    when 'enabled'
      # Create the button object
      btn_obj = @browser.button(selector, element_path)

      # Wait for element to be exist, visible,present and enabled
      wait_for_element(btn_obj)

      # Focus on element to make it visible
      focus_on_element(btn_obj)

      # get the state of object
      btn_state = btn_obj.enabled?

    else
      fail("Entered #{obj_state} state is not found please use Enabled or Disabled in Gherkin")
  end

  # Soft fail step and continue execution
  checkpoint (btn_state.eql? true), "The #{btn_name} button is not #{obj_state} on page"
end

Then(/^the user can see button with text "(.*)" is "(.*)" on "(.*)" page$/) do |btn_value, obj_state, page_name|

  btn_state = nil

  # Case to check for Enable or Disable object state to verify
  case obj_state.downcase
    when 'disabled'
      # Create the button object
      btn_obj = @browser.button(:value, btn_value)

      # Wait for element to be present
      wait_for_disable_element(btn_obj)

      # Focus on element to make it visible
      focus_on_element(btn_obj)

      # get the state of object
      btn_state = btn_obj.disabled?

    when 'enabled'
      # Create the button object
      btn_obj = @browser.button(:value, btn_value)

      # Wait for element to be exist, visible,present and enabled
      wait_for_element(btn_obj)

      # Focus on element to make it visible
      focus_on_element(btn_obj)

      # get the state of object
      btn_state = btn_obj.enabled?

    else
      fail("Entered #{obj_state} state is not found please use Enabled or Disabled in Gherkin")
  end

  # Soft fail step and continue execution
  checkpoint (btn_state.eql? true), "The #{btn_value} button is not #{obj_state} on #{page_name} page"
end


World(MiniTest::Assertions)