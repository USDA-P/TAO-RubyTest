#**********************************************************************************************************************************************
#**********************************Step Definitions for Text Box*******************************************************************************

Then(/^the user enters "(.*)" into "(.*)" on "(.*)" page$/) do |value, field_name, page_name|

  # get the XPATH or CSS from page object file , Raises Error if not found
  begin
    selector, element_path = get_element_target(field_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Get the Date values from date functions if requested in Gherkin parameter
  if (value.downcase.eql? 'todays date') || (value.downcase.eql? 'start date of current month')|| (value.downcase.eql? 'tomorrows date')|| (value.downcase.eql? 'next year from todays date')|| (value.downcase.eql? 'next business date')
    value = get_date_value(value)
  else
    value = value
  end

  # Enter value in text box
  type_value_in_element selector, element_path, value
end

Then(/^the user enters unique "(.*)" into "(.*)" on "(.*)" page$/) do |unique_value_key, field_name, page_name|

  # Get the Unique value of field from has table
  value = test_data_generator unique_value_key

  # Check if value is nil fail the test
  if value.nil?
    fail "Not Retrieved unique value for : #{unique_value_key}"
  end

  # get the XPATH or CSS from page object file
  selector, element_path = get_element_target(field_name, page_name).split('^^')
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Enter value in text box
  type_value_in_element selector, element_path, value

end

# This will enter the unique value into field
Then(/^the user enters current value of "(.*)" into "(.*)" on "(.*)" page$/) do |key_value, field_name, page_name|

  # Get the created value from unique has table
  value = test_data_generator key_value

  # Check Fail test if value is not retrieved
  if value.nil?
    fail "Not Retrieved created value for : #{key_value}"
  end

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

  # Enter value in text box
  type_value_in_element selector, element_path, value
end

# Check text box is enable or disable
Then(/^the user can see "(.*)" text box is "(.*)" on "([^"]*)" page$/) do |field_name, obj_state, page_name|

  text_obj = nil

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
      # Create the text box object
      text_obj = @browser.text_field(selector, element_path)

      # Wait for element to be present
      wait_for_disable_element(text_obj)

      # Focus on element to make it visible
      focus_on_element(text_obj)

      # get the state of object
      text_obj = text_obj.disabled?

    when 'enabled'
      # Create the text box object
      text_obj = @browser.text_field(selector, element_path)

      # Wait for element to be exist, visible,present and enabled
      wait_for_element(text_obj)

      # Focus on element to make it visible
      focus_on_element(text_obj)

      # get the state of object
      text_obj = text_obj.enabled?

    else
      fail("Entered #{obj_state} state is not found please use Disabled or Enabled only in Gherkin")

  end

  # Soft Fail the steps and continues to next step
  checkpoint (text_obj.eql? true), "The #{field_name} button is not #{obj_state} on page"
end

# Gherkin step definitions to read and remember value of text box into hash table
Then(/^the user remembers the value of "(.*)" text box on "(.*)" page$/) do |field_name, page_name|

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

  #Create the text box object
  text_obj = @browser.text_field(selector, element_path)

  #Wait for element to be exist, visible,present and enabled
  wait_for_element(text_obj)

  #Focus on element to make it visible
  focus_on_element(text_obj)

  #get text box value of object
  text_obj_value = text_obj.value

  # Save readed value into hash table
  save_value_in_test_data_hash(field_name.downcase, text_obj_value)

end

# Gherkin step definitions to read and remember value of text box into given hash table
Then(/^the user remembers the value of "(.*)" text box into "(.*)" on "(.*)" page$/) do |field_name, hash_key_name, page_name|

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

  #Create the text box object
  text_obj = @browser.text_field(selector, element_path)

  #Wait for element to be exist, visible,present and enabled
  wait_for_element(text_obj)

  #Focus on element to make it visible
  focus_on_element(text_obj)

  #get text box value of object
  text_obj_value = text_obj.value

  # Save readed value into hash table
  save_value_in_test_data_hash(hash_key_name.downcase, text_obj_value)

end

World(MiniTest::Assertions)
