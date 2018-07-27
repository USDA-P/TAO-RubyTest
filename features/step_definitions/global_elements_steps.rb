# Gherkin step definitions to read and remember text of element like- div,td,tr... into hash table
Then(/^the user remembers the value of "(.*)" field on "(.*)" page$/) do |field_name, page_name|

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

  #Create the element object
  element_obj = @browser.element(selector, element_path)

  #Wait for element to be exist, visible,present and enabled
  wait_for_element(element_obj)

  #Focus on element to make it visible
  focus_on_element(element_obj)

  #get element value of object
  element_value = element_obj.text

  # Save readed value into hash table
  save_value_in_test_data_hash(field_name.downcase, element_value)

end

# Gherkin step definitions to read and remember text of element like- div,td,tr... into given hash table
Then(/^the user remembers the value of "(.*)" field into "(.*)" on "(.*)" page$/) do |field_name, hash_key_name, page_name|

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

  #Create the element object
  element_obj = @browser.element(selector, element_path)

  #Wait for element to be exist, visible,present and enabled
  wait_for_element(element_obj)

  #Focus on element to make it visible
  focus_on_element(element_obj)

  #get element value of object
  element_value = element_obj.text
  puts "the value or data you wish to remember is " +element_value

  # Save readed value into hash table
  save_value_in_test_data_hash(hash_key_name.downcase, element_value)

end

# Gherkin used to verify text in particular element or field, if match fails stop execution and skip next steps
Then(/^the user must see "(.*)" text in "(.*)" field on "(.*)" page$/) do |text_value, element_name, page_name|
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
  end

  if element_value.include? text_value
  else
    # Fail the steps and skips next steps
    fail "The user didn't see : #{text_value} text message instead saw : '#{element_value}' on #{element_name} field on #{page_name} page"
  end

end

Then(/^the user selects "(.*)" from "(.*)" score html calendar on "(.*)" page$/) do |value, field_name, page_name|

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

  calendar_icon_obj = get_element_obj selector,element_path

  click_web_element calendar_icon_obj

  # Get the Date values from date functions if requested in Gherkin parameter
  if (value.downcase.eql? 'todays date') || (value.downcase.eql? 'start date of current month')|| (value.downcase.eql? 'tomorrows date')|| (value.downcase.eql? 'next year from todays date')|| (value.downcase.eql? 'next business date')
    value = get_date_value(value)
    time = Date.strptime(value, '%m/%d/%Y')
    select_date=time.strftime('%-d')
    select_month = time.strftime('%b')
    select_year = time.strftime('%Y')
  else
    if value.include? '/'
      select_date = Date.parse(value).strftime('%-d')
      select_month = Date.parse(value).strftime('%b')
      select_year = Date.parse(value).strftime('%Y')
    end
  end

  # Select Month from Month Drop down
  calendar_month_xpath = "#{element_path}/following::select[@data-handler='selectMonth']"
  # Create Month Drop down list object
  month_drop_down_obj = @browser.select_list(selector, calendar_month_xpath)
  # Wait for element to be exist, visible,present and enabled
  wait_for_element(month_drop_down_obj)
  # Focus on element to make it visible
  focus_on_element(month_drop_down_obj)
  # Check Select value only not already selected
  if month_drop_down_obj.text.squeeze(' ').strip.downcase != select_month.squeeze(' ').strip.downcase
    month_drop_down_element_path = calendar_month_xpath+"/option[normalize-space() = '#{select_month}']"
    # Create dropdown div object and wait to displayed
    month_drop_down_obj = @browser.element(selector, month_drop_down_element_path)
    # Wait for element to be exist, visible,present and enabled
    wait_for_element(month_drop_down_obj)
    # Focus on element to make it visible
    focus_on_element(month_drop_down_obj)
    month_drop_down_obj.wait_until_present.click
  end

  # Select year from year Drop down
  calendar_year_xpath = "#{element_path}/following::select[@data-handler='selectYear']"
  # Create Month Drop down list object
  year_drop_down_obj = @browser.select_list(selector, calendar_year_xpath)
  # Wait for element to be exist, visible,present and enabled
  wait_for_element(year_drop_down_obj)
  # Focus on element to make it visible
  focus_on_element(year_drop_down_obj)
  # Check Select value only not already selected
  if year_drop_down_obj.text.squeeze(' ').strip.downcase != select_year.squeeze(' ').strip.downcase
    year_drop_down_element_path = calendar_year_xpath+"/option[normalize-space() = '#{select_year}']"
    # Create dropdown div object and wait to displayed
    year_drop_down_obj = @browser.element(selector, year_drop_down_element_path)
    # Wait for element to be exist, visible,present and enabled
    wait_for_element(year_drop_down_obj)
    # Focus on element to make it visible
    focus_on_element(year_drop_down_obj)
    year_drop_down_obj.wait_until_present.click
  end

# Click on Date
  calendar_date_xpath = "#{element_path}/following::a[text()='#{select_date}']"
  calendar_date_obj = get_element_obj selector,calendar_date_xpath
  click_web_element calendar_date_obj

end

  Then(/^the user clicks on "(.*)" element on "(.*)" page$/) do |field_name, page_name|
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

    # Create the Element object
    element_obj = @browser.element(selector, element_path)

    # Wait for element to be present
    wait_for_element(element_obj)

    # Focus on element to make it visible
    focus_on_element(element_obj)

    element_obj.click

  end

# Check element is enable or disable
Then(/^the user can see "(.*)" element is "(.*)" on "(.*)" page$/) do |field_name, obj_state, page_name|

  element_obj = nil

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
      # Create the text area object
      element_obj = @browser.element(selector, element_path)

      # Wait for element to be present
      wait_for_disable_element(element_obj)

      # Focus on element to make it visible
      focus_on_element(element_obj)

      # get the state of object
      element_obj = element_obj.disabled?

    when 'enabled'
      # Create the text area object
      element_obj = @browser.element(selector, element_path)

      # Wait for element to be exist, visible,present and enabled
      wait_for_element(element_obj)

      # Focus on element to make it visible
      focus_on_element(element_obj)

      # get the state of object
      element_obj = element_obj.enabled?

    else
      fail("Entered #{obj_state} state is not found please use Disabled or Enabled only in Gherkin")

  end

  # Soft Fail the steps and continues to next step
  checkpoint (element_obj.eql? true), "The #{field_name} button is not #{obj_state} on page"
end

# Check element is not present in page
Then(/^the user cannot see "(.*)" element on "(.*)" page$/) do |field_name, page_name|

  element_obj = nil

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

  element_obj = check_element_present selector,element_path

  # Soft Fail the steps and continues to next step
  checkpoint (element_obj.eql? false), "The #{field_name} is present on #{page_name} page"

end

And(/^the user reviews document for "([^"]*)" seconds before closing tab$/) do |value|
  @browser.windows.last.use.switch_to.window
  sleep value.to_i
  @browser.execute_script('window.history.back();')

end

When(/^user attached "(.*)" file into "(.*)" on "(.*)" page$/) do |attached_file_location, field_name, page_name|
  suite_dir_path="#{Dir.pwd}"+'/features/support/documents/'+attached_file_location

  suite_dir_path = suite_dir_path.gsub! '/', '\\'

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

  @browser.element(selector, element_path).send_keys suite_dir_path
  sleep 1
  # @browser.element(selector,".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_signature_lincPassSignatureSubmit']").click

end

Then(/^the user right clicks the element with text "(.*)" for export$/) do |link_text|
  # Create link object for export task
  link_obj = @browser.contains(:text =>link_text)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

  # Focus on element to make it visible
  focus_on_element(link_obj)

  # Right Click on element
  @browser.action.context_click(link_obj).perform

end

When(/^the user right-click "([^"]*)" task with current value of "(.*)" and selects "(.*)" on Task Calendar page$/) do |task,key_value,option|
  value = test_data_generator key_value

  # Check Fail test if value is not retrieved
  if value.nil?
    fail "Not Retrieved created value for : #{key_value}"
  end

  calendar_task_name = "(#{value}) #{task} :"

  calendar_task_xpath = ".//*[contains(text(),'#{calendar_task_name}')]"
  obj= get_element_obj('xpath',calendar_task_xpath)
  obj.right_click
  sleep 0.5
  option_element_xpath = ".//*/body/ul[not(contains(@style,'display: none'))]/descendant::span[contains(text(),'#{option}')]"

  @browser.span(:xpath,option_element_xpath).click

end

  World(MiniTest::Assertions)
