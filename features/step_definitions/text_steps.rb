#**********************************************************************************************************************************************
#**********************************Step Definitions to Verify text on page ********************************************************************

# Gherkin used to verify partial text in particular element or field, if match fails continue to next steps
Then(/^the user can see "(.*)" partial text on "(.*)" page$/) do |text_value, page_name|

  # Get the page element having text
  element_obj = @browser.element(:visible_text => /#{text_value}/)

  # Wait for element to be present
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  # Soft Fail the steps and continues to next step
  checkpoint((element_obj.present?),"The user didn't see #{text_value} text message on #{page_name} page")

end

# Gherkin used to verify text in page, if match fails continue to next steps
Then(/^the user can see "(.*)" text on "(.*)" page$/) do |text_value, page_name|

  # Get the page element having text
  element_obj = @browser.element(:visible_text => text_value)

  # Wait for element to be present
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  # Soft Fail the steps and continues to next step
  checkpoint((element_obj.present?),"The user didn't see #{text_value} text message on #{page_name} page")

end

# Gherkin used to verify text in whole page, if match fails continue to next steps
# Note: Use this statement to verify text only when text match is 1 on page source.
# Example: For page with Multiple tabs ,verifying text on tab page 1 which is not displaying but it is also present in another tab page then this will pass the statement
Then(/^the user can see text "(.*)"$/) do |text_value|

  # get the whole page text
  page_text = @browser.html

  # Soft Fail the steps and continues to next step
  checkpoint((page_text.include? text_value),"The user didn't see #{text_value} text on page")

end

# Gherkin used to verify text in whole page, if match fails stop execution and skip next steps
# Note: Use this statement to verify text only when text match is 1 on page source.
# Example: For page with Multiple tabs ,verifying text on tab page 1 which is not displaying but it is also present in another tab page then this will pass the statement
Then(/^the user must see text "(.*)"$/) do |text_value|

  # get the whole page text
  page_text = @browser.html

  if page_text.include? text_value
  else
    # Fail the steps and skips next steps
    fail "The user didn't see #{text_value} text on page"
  end
end

# Gherkin used to verify text is not displayed in particular element or field, if match fails continue to next steps
Then(/^the user cannot see "(.*)" text in "(.*)" field on "(.*)" page$/) do |text_value, element_name, page_name|

  # Get the Date values from date functions if requested in Gherkin parameter
  if (text_value.downcase.eql? 'todays date') || (text_value.downcase.eql? 'start date of current month')|| (text_value.downcase.eql? 'tomorrows date')|| (text_value.downcase.eql? 'next year from todays date')|| (text_value.downcase.eql? 'next business date')
    text_value = get_date_value(text_value)
  else
    text_value = text_value
  end

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
  selector, element_path = get_element_target(element_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element_name} in #{page_name} page objects File")
  end

  if selector.nil? || element_path.nil?
    # Fail the steps and skips next steps
    fail("Element Xpath is not found for #{element_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Create the page element object
  element_obj = @browser.element(selector, element_path).exists?

  if element_obj.eql? true
    # Wait for element to be present
    wait_for_element(element_obj)

    # Focus on element to make it visible
    focus_on_element(element_obj)

    # Get the text in element
    element_value = element_obj.text
  else
    element_value = nil
  end

  # Soft Fail the steps and continues to next step
  checkpoint((element_value.include? text_value),"The user sees #{element_value} text message on #{element_name} field on #{page_name} page")

end

# Gherkin used to verify text in particular element or field, if match fails continue to next steps
Then(/^the user can see "(.*)" text in "(.*)" field on "(.*)" page$/) do |text_value, element_name, page_name|

  # Get the Date values from date functions if requested in Gherkin parameter
  if (text_value.downcase.eql? 'todays date') || (text_value.downcase.eql? 'start date of current month')|| (text_value.downcase.eql? 'tomorrows date')|| (text_value.downcase.eql? 'next year from todays date')|| (text_value.downcase.eql? 'next business date')
    text_value = get_date_value(text_value)
  else
    text_value = text_value
  end

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(element_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    # Fail the steps and skips next steps
    fail("Element Xpath is not found for #{element_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Create the page element object
  element_obj = @browser.element(selector, element_path)

  # Wait for element to be present
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  # Get the text in element
  if selector.downcase.to_s.eql? 'css'

    element_value = @browser.execute_script("return ( $('#{element_path}').val())")
  else
    element_value = element_obj.text
    if element_value.eql?  ''
      element_value = element_obj.value
    end
  end

  # Soft Fail the steps and continues to next step
  checkpoint((element_value.include? text_value),"The user didn't see #{text_value} text message instead saw '#{element_value}' on #{element_name} field on #{page_name} page")

end

And(/^the user can see current value of "(.*)" in "(.*)" field on "(.*)" page$/) do |key_value, element_name, page_name|
  # Get the created value from unique has table
  value = test_data_generator key_value

  # Check Fail test if value is not retrieved
  if value.nil?
    fail "Not Retrieved created value for : #{key_value}"
  end

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(element_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{element_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Create the page element object
  element_obj = @browser.element(selector, element_path)

  # Wait for element to be present
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  # Get the text in element
  if selector.downcase.to_s.eql? 'css'

    element_value = @browser.execute_script("return ( $('#{element_path}').val())")
  else
    element_value = element_obj.text
    if element_value.eql?  ''
      element_value = element_obj.value
    end
  end

  # Soft Fail the steps and continues to next step
  checkpoint((element_value.include? value),"The user didn't see '#{value}' text message instead saw '#{element_value}' on #{element_name} field on #{page_name} page")

end

World(MiniTest::Assertions)
