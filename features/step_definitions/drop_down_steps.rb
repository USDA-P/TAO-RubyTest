#**********************************************************************************************************************************************
#**********************************Step Definitions for Drop Down Lists ************************************************************************
index = {'first' => 0, 'second' => 1, 'third' => 2, 'fourth' => 3, 'fifth' => 4, 'sixth' => 5, 'seventh' => 6, 'eighth' => 7, 'ninth' => 8, 'tenth' => 9}

# Gherkin used to select given values from drop down with value in options
Then(/^the user selects "(.*)" from "(.*)" drop down on "(.*)" page$/) do |value, field_name, page_name|

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

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  # Check Select value only not already selected
  if drop_down_obj.text.squeeze(' ').strip.downcase != value.squeeze(' ').strip.downcase
    drop_down_element_path = element_path+"/option[normalize-space() = '#{value}']"
    # Create dropdown div object and wait to displayed
    drop_down_obj = @browser.element(selector, drop_down_element_path)

    # Wait for element to be exist, visible,present and enabled
    wait_for_element(drop_down_obj)

    # Focus on element to make it visible
    focus_on_element(drop_down_obj)

    drop_down_obj.wait_until_present.click
  end

end

# Gherkin used to select value based on index like first, second in drop down with value in options
Then(/^the user selects "(.*)" value from "(.*)" drop down on "(.*)" page$/) do |index_value, field_name, page_name|
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

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  # Check Select index value only not already selected
  if drop_down_obj.value != index[index_value]
    # Focus on element to make it visible
    focus_on_element(drop_down_obj)
    drop_down_obj.click
    sleep(0.25)
    # Focus on element to make it visible
    focus_on_element(drop_down_obj.option(:index, index[index_value]))
    drop_down_obj.option(:index, index[index_value]).click
    sleep(0.5)
  end

end

# Gherkin used to select the remembered value in hash to select in drop down with value in options
Then(/^the user selects current value of "(.*)" from "(.*)" drop down on "(.*)" page$/) do |key_value, field_name, page_name|

  # Get the created value from unique has table
  value = test_data_generator key_value

  # Check Fail test if value is not retrieved
  if value.nil?
    fail "Not Retrieved created value for : #{key_value}"
  end

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

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  # Check Select value only not already selected
  if drop_down_obj.text.squeeze(' ').strip.downcase != value.squeeze(' ').strip.downcase
    # Focus on element to make it visible
    focus_on_element(drop_down_obj)
    drop_down_obj.click
    sleep(0.25)
    # Focus on element to make it visible
    focus_on_element(drop_down_obj.option(:text, value))
    drop_down_obj.option(:text, value).click
    # sleep(0.5)
  end

end

# Gherkin used to see the given value is selected in drop down with value in options
Then(/^the user sees "(.*)" selected in "(.*)" drop down on "(.*)" page$/) do |value, field_name, page_name|

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

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  # Check Select value is selected
  drop_down_value = drop_down_obj.text.squeeze(' ').strip.downcase == value.squeeze(' ').strip.downcase

  # Soft Fail the steps and continues to next step
  checkpoint (drop_down_value.eql? true), "The #{value} is not selected instead saw #{drop_down_obj.text} in #{field_name} drop down on page"

end

# Gherkin used to see the saved hash table value in drop down with value in options
Then(/^the user sees current value of "(.*)" selected in "(.*)" drop down on "(.*)" page$/) do |key_value, field_name, page_name|

  # Get the created value from unique has table
  value = test_data_generator key_value

  # Check Fail test if value is not retrieved
  if value.nil?
    fail "Not Retrieved created value for : #{key_value}"
  end

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

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  # Check Select value is selected
  drop_down_value = drop_down_obj.text.squeeze(' ').strip.downcase == value.squeeze(' ').strip.downcase

  # Soft Fail the steps and continues to next step
  checkpoint (drop_down_value.eql? true), "The #{value} is not selected instead saw #{drop_down_obj.text} in #{field_name} drop down on page"
end

# Gherkin to remember the selected value in hash table
Then(/^the user remembers the value of "(.*)" drop down on "(.*)" page$/) do |key_value, page_name|
  begin
    selector, element_path = get_element_target(key_value, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{key_value} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{key_value} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  # Check Select value is selected
  drop_down_value = drop_down_obj.text.squeeze(' ').strip

  save_value_in_test_data_hash(key_value.downcase, drop_down_value)

end


# Gherkin to remember the selected value in given hash key table
Then(/^the user remembers the value of "(.*)" drop down into "(.*)" on "(.*)" page$/) do |key_value, hash_key_name, page_name|
  begin
    selector, element_path = get_element_target(key_value, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{key_value} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{key_value} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  # Check Select value is selected
  drop_down_value = drop_down_obj.text.squeeze(' ').strip

  save_value_in_test_data_hash(hash_key_name.downcase, drop_down_value)

end

# Gherkin used to verify drop down with value in options is enabled or disabled
Then(/^the user can see "(.*)" drop down is "(.*)" on "(.*)" page$/) do |field_name, obj_state, page_name|
  drop_down_obj = nil
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
      # Create the button object
      drop_down_obj = @browser.select_list(selector, element_path)

      # Wait for element to be present
      wait_for_disable_element(drop_down_obj)

      # Focus on element to make it visible
      focus_on_element(drop_down_obj)

      # get the state of object
      drop_down_obj = drop_down_obj.disabled?

    when 'enabled'
      # Create the button object
      drop_down_obj = @browser.select_list(selector, element_path)

      # Wait for element to be exist, visible,present and enabled
      wait_for_element(drop_down_obj)

      # Focus on element to make it visible
      focus_on_element(drop_down_obj)

      # get the state of object
      drop_down_obj = drop_down_obj.enabled?

    else
      fail("Entered #{obj_state} state is not found please use Disabled or Enabled only in Gherkin")

  end

  # Soft Fail the steps and continues to next step
  checkpoint (drop_down_obj.eql? true), "The #{field_name} dropdown is not #{obj_state} on page"
end

# Gherkin used to verify values in drop down with value in options, use ; to enter multiple values
Then(/^the user can see "(.*)" values in "(.*)" drop down on "(.*)" page$/) do |value, field_name, page_name|
  value_found = 'false'
  match_found = 'false'
  list_value = nil
  fail_match_list = nil
  displayed_drop_down_text = nil
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

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  drop_down_values = drop_down_obj.options.map(&:text)

  if value.include? ';'
    options_text = value.split(';')
    (0..options_text.size-1).each do |index|
      value_found = 'false'
      displayed_drop_down_text = drop_down_values[index]
      if displayed_drop_down_text.to_s.downcase.strip.gsub(/[^a-zA-Z0-9\-]/, '').eql? options_text[index].downcase.strip.gsub(/[^a-zA-Z0-9\-]/, '')
        value_found = 'true'
      end
      # Soft Fail the steps and continues to next step
      checkpoint (value_found.eql? 'true'), "The #{options_text[index].strip} is not displayed; Current values is #{displayed_drop_down_text}, All Options displayed are #{drop_down_values} in #{field_name} dropdown list on #{page_name} page"
    end
  else
    (0..drop_down_values.size-1).each do |index|
      match_found = 'false'
      displayed_drop_down_text = drop_down_values[index]
      if displayed_drop_down_text.to_s.downcase.strip.gsub(/[^a-zA-Z0-9\-]/, '').eql? value.downcase.strip.gsub(/[^a-zA-Z0-9\-]/, '')
        match_found = 'true'
        break
      end
    end
    # Soft Fail the steps and continues to next step
    checkpoint (match_found.eql? 'true'), "The #{value.strip} is not displayed; Current values is #{displayed_drop_down_text} , All Options displayed are #{drop_down_values} in #{field_name} dropdown list on #{page_name} page"

  end
end

# Gherkin used to select values in list box
Then(/^the user selects "(.*)" from "(.*)" list box on "(.*)" page$/) do |value, field_name, page_name|
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

  # get all items in list box
  @browser.select_list(selector, element_path).options.each do |drop_down_value|
    if drop_down_value.text.squeeze(' ').strip.downcase.eql? value.squeeze(' ').strip.downcase
      # Focus on element to make it visible
      focus_on_element(drop_down_value)
      drop_down_value.click
      break
    end
  end
end
#-------------------------Combo box step definitions ---------------------#
# Gherkin used to select given values from drop down list
Then(/^the user selects "(.*)" from "(.*)" combo box on "(.*)" page$/) do |value, field_name, page_name|

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

  # Create Combo box object
  combo_box_obj = @browser.element(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(combo_box_obj)

  # Focus on element to make it visible
  focus_on_element(combo_box_obj)

  selected_value = combo_box_obj.value.to_s.squeeze(' ').strip.downcase
  to_select_value = value.to_s.squeeze(' ').strip.downcase

  # Check Select value only not already selected
  if selected_value != to_select_value

    # Focus on element to make it visible
    focus_on_element(combo_box_obj)

    combo_box_obj.wait_until_present.click
    sleep 1

    drop_down_element_path = element_path.sub(/'\]/, "_DropDown']/descendant::li[normalize-space() = '#{value}']")
    # Create dropdown div object and wait to displayed
    drop_down_obj = @browser.element(selector, drop_down_element_path)

    # Wait for element to be exist, visible,present and enabled
    wait_for_element(drop_down_obj)

    # Focus on element to make it visible
    focus_on_element(drop_down_obj)

    drop_down_obj.wait_until_present.click
  end
end

# Gherkin used to select the remembered value in hash to select in drop down list
Then(/^the user selects current value of "(.*)" from "(.*)" combo box on "(.*)" page$/) do |key_value, field_name, page_name|

  # Get the created value from unique has table
  value = test_data_generator key_value

  # Check Fail test if value is not retrieved
  if value.nil?
    fail "Not Retrieved created value for : #{key_value}"
  end

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

  # Create Combo box object
  combo_box_obj = @browser.element(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(combo_box_obj)

  # Focus on element to make it visible
  focus_on_element(combo_box_obj)

  selected_value = combo_box_obj.value.to_s.squeeze(' ').strip.downcase
  to_select_value = value.to_s.squeeze(' ').strip.downcase

  # Check Select value only not already selected
  if selected_value.strip != to_select_value.strip

    combo_box_obj.wait_until_present.click
    sleep 1

    drop_down_element_path = element_path.sub(/'\]/, "_DropDown']/descendant::li[normalize-space() = '#{value}']")
    # Create dropdown div object and wait to displayed
    drop_down_obj = @browser.element(selector, drop_down_element_path)

    # Wait for element to be exist, visible,present and enabled
    wait_for_element(drop_down_obj)

    # Focus on element to make it visible
    focus_on_element(drop_down_obj)

    drop_down_obj.wait_until_present.click
  end

end

# Gherkin used to see the given value is selected in drop down list
Then(/^the user sees "(.*)" selected in "(.*)" combo box on "(.*)" page$/) do |value, field_name, page_name|

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

  # Create Combo box object
  combo_box_obj = @browser.element(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(combo_box_obj)

  # Focus on element to make it visible
  focus_on_element(combo_box_obj)

  selected_value = combo_box_obj.value.to_s.squeeze(' ').strip.downcase
  to_select_value = value.to_s.squeeze(' ').strip.downcase

  # Check Select value is selected
  drop_down_value = selected_value.eql? to_select_value

  # Soft Fail the steps and continues to next step
  checkpoint (drop_down_value.eql? true), "The #{value} is not selected in #{field_name} combo box on page"

end

# Gherkin used to see the saved hash table value in drop down list
Then(/^the user sees current value of "(.*)" selected in "(.*)" combo box on "(.*)" page$/) do |key_value, field_name, page_name|

  # Get the created value from unique has table
  value = test_data_generator key_value

  # Check Fail test if value is not retrieved
  if value.nil?
    fail "Not Retrieved created value for : #{key_value}"
  end

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

  # Create Combo box object
  combo_box_obj = @browser.element(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(combo_box_obj)

  # Focus on element to make it visible
  focus_on_element(combo_box_obj)

  selected_value = combo_box_obj.value.to_s.squeeze(' ').strip.downcase
  to_select_value = value.to_s.squeeze(' ').strip.downcase

  # Check Select value is selected
  drop_down_value = selected_value.eql? to_select_value

  # Soft Fail the steps and continues to next step
  checkpoint (drop_down_value.eql? true), "The #{value} is not selected in #{field_name} combo box on page"
end

# Gherkin used to verify drop down list is enabled or disabled
Then(/^the user can see "(.*)" combo box is "(.*)" on "(.*)" page$/) do |field_name, obj_state, page_name|
  drop_down_obj = nil
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
      # Create the button object
      drop_down_obj = @browser.element(selector, element_path)

      # Wait for element to be present
      wait_for_disable_element(drop_down_obj)

      # Focus on element to make it visible
      focus_on_element(drop_down_obj)

      # get the state of object
      drop_down_obj = drop_down_obj.disabled?

    when 'enabled'
      # Create the button object
      drop_down_obj = @browser.element(selector, element_path)

      # Wait for element to be exist, visible,present and enabled
      wait_for_element(drop_down_obj)

      # Focus on element to make it visible
      focus_on_element(drop_down_obj)

      # get the state of object
      drop_down_obj = drop_down_obj.enabled?

    else
      fail("Entered #{obj_state} state is not found please use Disabled or Enabled only in Gherkin")

  end

  # Soft Fail the steps and continues to next step
  checkpoint (drop_down_obj.eql? true), "The #{field_name} combo box is not #{obj_state} on page"
end

# Gherkin used to verify values in drop down list, use ; to enter multiple values
Then(/^the user can see "(.*)" values in "(.*)" combo box on "(.*)" page$/) do |value, field_name, page_name|
  value_found = 'false'
  list_value = nil
  fail_match_list = nil
  options = nil
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

  # Create Combo box object
  combo_box_obj = @browser.element(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(combo_box_obj)

  # Focus on element to make it visible
  focus_on_element(combo_box_obj)

  selected_value = combo_box_obj.value

  combo_box_obj.wait_until_present.click
  sleep 1

  # Create XPATH for Dropdown list items
  drop_down_element_path = element_path.sub(/'\]/, "_DropDown']/descendant::li")

  # Create dropdown div object and wait to displayed
  drop_down_obj = @browser.element(selector, drop_down_element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  # Get the lists of items
  options = @browser.elements(selector, drop_down_element_path)

  # Condition to check there is multiple values to be verify and if true split value and verify in drop down list else check value in single iteration
  if value.include? ';'
    options_text = value.split(';')
    options_text.each do |text|
      value_found = 'false'
      # get all items in drop down
      options.each do |option|
        if option.text.to_s.squeeze(' ').strip.downcase == value.to_s.squeeze(' ').strip.downcase
          value_found = 'true'
          break
        end
      end
      list_value = list_value.to_s + option.text + ','
      if value_found.eql? 'false'
        fail_match_list = fail_match_list.to_s + text + ','
      end
      # Soft Fail the steps and continues to next step
      checkpoint (value_found.eql? 'true'), "The #{fail_match_list} is not displayed; Current values is #{list_value} in #{field_name} combo box on #{page_name} page"
    end
  else
    # get all items in drop down
    options.each do |option|
      list_value = list_value.to_s + option.text + ','
      if option.text.to_s.squeeze(' ').strip.downcase == value.to_s.squeeze(' ').strip.downcase
        value_found = 'true'
        break
      end
    end
    # Soft Fail the steps and continues to next step
    checkpoint (value_found.eql? 'true'), "The #{value} is not displayed; Current values is #{list_value} in #{field_name} combo box on #{page_name} page"
  end
  # Click on cobobox options to close the dropdown
  drop_down_selected_path = element_path.sub(/'\]/, "_DropDown']/descendant::li[text()='#{selected_value}']")
  @browser.element(selector, drop_down_selected_path).click
end

Then(/^the user sees values in "(.*)" drop down in alphabetical order on "(.*)" page$/) do |field_name, page_name|
  # sort_index = nil
  # last_index = nil
  # other_value = 'false'
  # value_match = 'true'
  # # get the XPATH or CSS from page object file , Raises Error if not found
  # begin
  #   selector, element_path = get_element_target(field_name, page_name).split('^^')
  # rescue
  #   fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  # end
  # if selector.nil? || element_path.nil?
  #   fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  # end
  # selector =(selector.downcase.include? 'xpath') ? :xpath : :css
  #
  # # Create Dropdown list object
  # drop_down_obj = @browser.select_list(selector, element_path)
  #
  # # Wait for element to be exist, visible,present and enabled
  # wait_for_element(drop_down_obj)
  #
  # # Focus on element to make it visible
  # focus_on_element(drop_down_obj)
  #
  # drop_down_values = drop_down_obj.options.map(&:text)
  #
  # # Sorting the dropdown values and swap Other option to last
  # sorted_drop_down_values = drop_down_values.sort
  # (0..sorted_drop_down_values.size-1).each do |index|
  #   if sorted_drop_down_values[index].downcase.strip.eql? 'other'
  #     sort_index = index
  #     other_value = 'true'
  #   end
  #   last_index = index
  # end
  # if other_value.eql? 'true'
  #   sorted_drop_down_values[sort_index],sorted_drop_down_values[last_index] = sorted_drop_down_values[last_index],sorted_drop_down_values[sort_index]
  # end
  #
  # (0..sorted_drop_down_values.size-1).each do |sorted_value|
  #   if sorted_drop_down_values[sorted_value].strip != drop_down_values[sorted_value].strip
  #     value_match = 'false'
  #     break
  #   end
  # end
  # checkpoint (value_match.eql? 'true'), "Drop down Options are not in ascending order for #{field_name} ,the user sees #{drop_down_values} instead of #{sorted_drop_down_values} on #{page_name} page"
  value_match = 'true'
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

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  drop_down_values = drop_down_obj.options.map(&:text)
  sorted_drop_down_values = drop_down_values.sort


  (0..sorted_drop_down_values.size-1).each do |sorted_value|
    if sorted_drop_down_values[sorted_value].strip != drop_down_values[sorted_value].strip
      value_match = 'false'
      break
    end
    # puts sorted_drop_down_values[sorted_value]
    # puts drop_down_values[sorted_value]
  end
  checkpoint (value_match.eql? 'true'), "Drop down Options are not in ascending order for #{field_name} ,the user sees #{drop_down_values} instead of #{sorted_drop_down_values} on #{page_name} page"

end

#Gherkin used to verify dropdown values in alphabetical oder with default values as first value
Then(/^the user sees values in "(.*)" drop down in alphabetical order with default as "(.*)" on "(.*)" page$/) do |field_name, default_drop_down_value, page_name|
  value_match = 'false'
  default_value_match = 'false'
  other_value_match = 'false'
  unknown_value_match = 'false'
  default_value = nil
  other_value = nil
  unknown_value = nil
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

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  drop_down_values = drop_down_obj.options.map(&:text)
  sorted_drop_down_values = drop_down_values.sort
  (0..sorted_drop_down_values.size-1).each do |value_index|
    if sorted_drop_down_values[value_index].strip.downcase.eql? default_drop_down_value.downcase
      default_value = sorted_drop_down_values[value_index].strip
      default_value_match = 'true'
    end
    if sorted_drop_down_values[value_index].strip.downcase.include? 'other'
      other_value = sorted_drop_down_values[value_index].strip
      other_value_match = 'true'
    end
    if sorted_drop_down_values[value_index].strip.downcase.eql? 'unknown'
      unknown_value = sorted_drop_down_values[value_index].strip
      unknown_value_match = 'true'
    end
  end
  if default_value_match.eql? 'true'
    sorted_drop_down_values.delete_if {|value| value.downcase.eql? default_drop_down_value.downcase}
    sorted_drop_down_values.insert(0, default_value)
  else
    if unknown_value_match.eql? 'true'
      sorted_drop_down_values.delete_if {|value| value.downcase.eql? 'unknown'}
      sorted_drop_down_values.insert(-1, unknown_value)
    else
      if other_value_match.eql? 'true'
        sorted_drop_down_values.delete_if {|value| value.downcase.include? 'other'}
        sorted_drop_down_values.insert(-1, other_value)
      end
    end
  end

  (0..sorted_drop_down_values.size-1).each do |sorted_value|
    if sorted_drop_down_values[sorted_value].strip != drop_down_values[sorted_value].strip
      value_match = 'true'
      break
    end
    # puts sorted_drop_down_values[sorted_value]
    # puts drop_down_values[sorted_value]
  end
  # puts value_match
  checkpoint (value_match.eql? 'false'), "Drop down Options are not in ascending order for #{field_name} ,the user sees #{drop_down_values} instead of #{sorted_drop_down_values} on #{page_name} page"

end

# Gherkin used to verify alphabetical order with last values as unknown then other if present
Then(/^the user sees values in "(.*)" drop down in alphabetical order with last values as unknown then other if present on "(.*)" page$/) do |field_name, page_name|
  value_match = 'false'
  other_value_match = 'false'
  unknown_value_match = 'false'
  other_value = nil
  unknown_value = nil
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

  # Create Dropdown list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  drop_down_values = drop_down_obj.options.map(&:text)
  sorted_drop_down_values = drop_down_values.sort
  (0..sorted_drop_down_values.size-1).each do |value_index|
    if sorted_drop_down_values[value_index].strip.downcase.include? 'other'
      other_value = sorted_drop_down_values[value_index].strip
      other_value_match = 'true'
    end
    if sorted_drop_down_values[value_index].strip.downcase.eql? 'unknown'
      unknown_value = sorted_drop_down_values[value_index].strip
      unknown_value_match = 'true'
    end
  end
  if unknown_value_match.eql? 'true'
    sorted_drop_down_values.delete_if {|value| value.downcase.eql? 'unknown'}
    sorted_drop_down_values.insert(-1, unknown_value)
  else
    if other_value_match.eql? 'true'
      sorted_drop_down_values.delete_if {|value| value.downcase.include? 'other'}
      sorted_drop_down_values.insert(-1, other_value)
    end
  end

  (0..sorted_drop_down_values.size-1).each do |sorted_value|

    if sorted_drop_down_values[sorted_value].strip != drop_down_values[sorted_value].strip
      value_match = 'true'
      break
    end
  end

  checkpoint (value_match.eql? 'false'), "Drop down Options are not in ascending order for #{field_name} ,the user sees #{drop_down_values} instead of #{sorted_drop_down_values} on #{page_name} page"

end

# Gherkin used to verify drop down with value in options is enabled or disabled
Then(/^the user can see "(.*)" multi-select drop down is "(.*)" on "(.*)" page$/) do |field_name, obj_state, page_name|
  drop_down_obj = nil
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
      # Create the button object
      drop_down_obj = @browser.select_list(selector, element_path)

      # Wait for element to be present
      drop_down_obj.exist?
      drop_down_obj.present?

      # Focus on element to make it visible
      focus_on_element(drop_down_obj)

      # get the state of object
      drop_down_obj = drop_down_obj.disabled?

    when 'enabled'
      # Create the button object
      drop_down_obj = @browser.select_list(selector, element_path)

      # Wait for element to be exist, visible,present and enabled
      drop_down_obj.exist?
      drop_down_obj.present?

      # Focus on element to make it visible
      focus_on_element(drop_down_obj)

      # get the state of object
      drop_down_obj = drop_down_obj.enabled?

    else
      fail("Entered #{obj_state} state is not found please use Disabled or Enabled only in Gherkin")

  end

  # Soft Fail the steps and continues to next step
  checkpoint (drop_down_obj.eql? true), "The #{field_name} dropdown is not #{obj_state} on page"
end

# Gherkin used to verify values in multi-select drop down with value in options, use ; to enter multiple values
Then(/^the user can see "(.*)" values in "(.*)" multi-select drop down on "(.*)" page$/) do |value, field_name, page_name|
  value_found = 'false'
  match_found = 'false'
  list_value = nil
  fail_match_list = nil
  displayed_drop_down_text = nil
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

  # Whether or not Watir should wait for an element to be found or present before taking an action. Defaults to true.
  Watir.relaxed_locate = false

  # Create Drop down list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  drop_down_values = drop_down_obj.options.map(&:text)

  # Whether or not Watir should wait for an element to be found or present before taking an action. Defaults to true.
  Watir.relaxed_locate = true

  if value.include? ';'
    options_text = value.split(';')
    (0..options_text.size-1).each do |index|
      value_found = 'false'
      displayed_drop_down_text = drop_down_values[index]
      if displayed_drop_down_text.to_s.downcase.strip.gsub(/[^a-zA-Z0-9\-]/, '').eql? options_text[index].downcase.strip.gsub(/[^a-zA-Z0-9\-]/, '')
        value_found = 'true'
      end
      # Soft Fail the steps and continues to next step
      checkpoint (value_found.eql? 'true'), "The #{options_text[index].strip} is not displayed; Current values is #{displayed_drop_down_text}, All Options displayed are #{drop_down_values} in #{field_name} dropdown list on #{page_name} page"
    end
  else
    (0..drop_down_values.size-1).each do |index|
      match_found = 'false'
      displayed_drop_down_text = drop_down_values[index]
      if displayed_drop_down_text.to_s.downcase.strip.gsub(/[^a-zA-Z0-9\-]/, '').eql? value.downcase.strip.gsub(/[^a-zA-Z0-9\-]/, '')
        match_found = 'true'
        break
      end
    end
    # Soft Fail the steps and continues to next step
    checkpoint (match_found.eql? 'true'), "The #{value.strip} is not displayed; Current values is #{displayed_drop_down_text} , All Options displayed are #{drop_down_values} in #{field_name} dropdown list on #{page_name} page"

  end
end

# Gherkin used to select given values from multi-select drop down with value in options
Then(/^the user selects "(.*)" from "(.*)" multi-select drop down on "(.*)" page$/) do |value, field_name, page_name|

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

  drop_down_div_element_path = element_path+'/following::input'
  drop_down_obj = @browser.element(selector, drop_down_div_element_path)

  # # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  drop_down_obj.wait_until_present.click

  # click_web_element dropdown_div_element_path
  drop_down_element_path = element_path+"/following::div[@class='chosen-drop']/descendant::li[text()='#{value}']"
  # Create dropdown div object and wait to displayed
  drop_down_obj = @browser.element(selector, drop_down_element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(drop_down_obj)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  drop_down_obj.wait_until_present.click
  sleep 1

end

# Gherkin used to verify multi-select fropdown values in alphabetical order
Then(/^the user sees values in "(.*)" multi-select drop down in alphabetical order on "(.*)" page$/) do |field_name, page_name|
  sort_index = nil
  last_index = nil
  value_match = 'true'
  other_value = 'false'
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

  # Whether or not Watir should wait for an element to be found or present before taking an action. Defaults to true.
  Watir.relaxed_locate = false

  # Create Drop down list object
  drop_down_obj = @browser.select_list(selector, element_path)

  # Focus on element to make it visible
  focus_on_element(drop_down_obj)

  drop_down_values = drop_down_obj.options.map(&:text)

  # Whether or not Watir should wait for an element to be found or present before taking an action. Defaults to true.
  Watir.relaxed_locate = true
  # Sorting the dropdown values and swap Other option to last
  sorted_drop_down_values = drop_down_values.sort
  (0..sorted_drop_down_values.size-1).each do |index|
    if sorted_drop_down_values[index].downcase.strip.eql? 'other'
      sort_index = index
      other_value = 'true'
    end
    last_index = index
  end
  if other_value.eql? 'true'
    sorted_drop_down_values[sort_index], sorted_drop_down_values[last_index] = sorted_drop_down_values[last_index], sorted_drop_down_values[sort_index]
  end

  (0..sorted_drop_down_values.size-1).each do |sorted_value|
    if sorted_drop_down_values[sorted_value].strip != drop_down_values[sorted_value].strip
      value_match = 'false'
      break
    end
  end
  checkpoint (value_match.eql? 'true'), "Drop down Options are not in ascending order for #{field_name} ,the user sees #{drop_down_values} instead of #{sorted_drop_down_values} on #{page_name} page"
end

Then(/^the user removes selected "(.*)" option from "(.*)" multi-select drop down on "(.*)" page$/) do |option_text, field_name, page_name|
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

  remove_path = element_path+"/following::span[(text()='#{option_text}')]/following::a[1]"

  # Create the Element object
  element_obj = @browser.element(selector, remove_path)

  # Wait for element to be present
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  element_obj.click
end

World(MiniTest::Assertions)
