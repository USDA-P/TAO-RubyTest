
And(/^check for "(.*)" status$/) do |status|
  value=get_element_text 'xpath', "//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_GrdReasons_ctl00__0']/td[4]"
  puts "#{value}"
  if value.include? status
    puts "object found"
  else
    fail("Element Xpath is not found ")
  end

end


And(/^check for lot event$/)do
  table_name='//*[@id="ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_rgLotEventList_ctl00"]/tbody'
  status=false
  table_rows = get_elements_size 'xpath', "#{table_name}/tr"
  puts "#{table_rows}"
  (1..table_rows).each do |rows|
    lot_event=get_element_text 'xpath', "#{table_name}/tr[#{rows}]/td[1]"
    puts "#{lot_event}"
    if lot_event.downcase.include? 'rectified'
      status=true
      break
    end

  end
  if status.equal?true
    puts "found"
  else
    fail("element not found")
  end
end


And(/^generate and enter unique number into "(.*)" on "(.*)" page$/) do |field_name,page_name|
  value= SecureRandom.random_number(10000)
  puts "#{value}"
  selector, element_path = get_element_target(field_name, page_name).split('^^')

  # Check if value is nil fail the test
  if value.nil?
    fail "Not Retrieved unique value for : #{value}"
  end


  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Enter value in text box
  type_value_in_element selector, element_path, value
  save_value_in_test_data_hash(field_name, value)

end


And(/^count and delete table rows$/) do
  # table_path=".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_HACCP/Species_userControl_gridHACCPAndSpecies_ctl00']"
  table_path=".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_HACCP/Species_userControl_gridHACCPAndSpecies_ctl00']"
  puts "found table"
  haccp_table_rows=get_elements_size 'xpath', "#{table_path}/tbody/tr"
  puts "#{haccp_table_rows}"

  if haccp_table_rows == 1
    puts "in table"
    row_element=get_element_text 'xpath', "#{table_path}/tbody/tr"
    puts "#{row_element}"
    if row_element.include?'There are no records to display'
      puts "no elements"
    end

  else
    (1..haccp_table_rows).each do |rows|
      del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr/td[5]/input[1]"
      puts "found object"
      click_web_element del_obj
      puts "deleted one"
      step "the user clicks button with text \"Delete\" on \"Imports\" page"
      step "the return to main page"
    end

  end
end


And(/^the user checks the table$/) do
  table_path=".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_HACCP/Species_userControl_gridHACCPAndSpecies_ctl00']"
  puts "found table"
  haccp_table_rows=get_elements_size 'xpath', "#{table_path}/tbody/tr"
  puts "#{haccp_table_rows}"
  if haccp_table_rows > 1
    puts "elements added succesfully"
  else
    fail("Element is not added")
  end
end


Then(/^the user selects value of "(.*)" from "(.*)" combo box on "(.*)" page$/) do |value, field_name, page_name|

  # get the XPATH or CSS from page object file , Raises Error if not found

  selector1, element_path1 = get_element_target(field_name, page_name).split('^^')
  selector2, element_path2 = get_element_target(value, page_name).split('^^')
  element_value=get_element_text(selector2,element_path2)
  puts "#{element_value}"


  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector1 =(selector1.downcase.include? 'xpath') ? :xpath : :css

  # Create Combo box object
  combo_box_obj = @browser.element(selector1, element_path1)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(combo_box_obj)

  # Focus on element to make it visible
  focus_on_element(combo_box_obj)

  selected_value = combo_box_obj.value.to_s.squeeze(' ').strip.downcase
  to_select_value = element_value.to_s.squeeze(' ').strip.downcase

  # Check Select value only not already selected
  if selected_value != to_select_value

    # Focus on element to make it visible
    focus_on_element(combo_box_obj)

    combo_box_obj.wait_until_present.click
    sleep 1

    drop_down_element_path = element_path1.sub(/'\]/, "_DropDown']/descendant::li[normalize-space() = '#{element_value}']")
    # Create dropdown div object and wait to displayed
    drop_down_obj = @browser.element(selector1, drop_down_element_path)

    # Wait for element to be exist, visible,present and enabled
    wait_for_element(drop_down_obj)

    # Focus on element to make it visible
    focus_on_element(drop_down_obj)

    drop_down_obj.wait_until_present.click
  end
end

Then(/^the user cannot see "(.*)" values in "(.*)" combo box on "(.*)" page$/) do |value, field_name, page_name|
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
  puts "#{value}"
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
      checkpoint (value_found.eql? 'false'), "The #{fail_match_list} is not displayed; Current values is #{list_value} in #{field_name} combo box on #{page_name} page"
    end
  else
    # get all items in drop down
    options.each do |option|
      list_value = list_value.to_s + option.text + ','
      puts "#{list_value}"
      test=option.text.to_s.squeeze(' ').strip.downcase
      puts "Selecetd"
      puts "#{test}"
      if option.text.to_s.squeeze(' ').strip.downcase == value.to_s.squeeze(' ').strip.downcase
        value_found = 'true'
        break
      end
    end
    # Soft Fail the steps and continues to next step
    checkpoint (value_found.eql? 'false'), "The #{value} is displayed in #{field_name} combo box on #{page_name} page"
  end
  # Click on cobobox options to close the dropdown
  drop_down_selected_path = element_path.sub(/'\]/, "_DropDown']/descendant::li[text()='#{selected_value}']")
  @browser.element(selector, drop_down_selected_path).click
end

And(/^the user can see "([^"]*)" checkbox is unchecked on "([^"]*)" page$/) do |chk_box_name, page_name|
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

  chk_box_obj = @browser.checkbox(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(chk_box_obj)

  # Focus on element to make it visible
  focus_on_element(chk_box_obj)

  # get the state of object
  chk_box_obj = chk_box_obj.set?

  # else
  #   fail("Entered #{obj_state} state is not found please use Disabled,Enabled and Checked only in Gherkin")


  # # Soft Fail the steps and continues to next step
  checkpoint (chk_box_obj.eql? false), "The #{chk_box_name} button is not unchecked on page"
end

#
And(/^the user edits the toi status for current value of "([^"]*)"$/) do |key_value|
  value = test_data_generator key_value
  puts "#{value}"
  toi_table=".//*[@class='rgMasterTable']"
  puts "found table"
  toi_table_rows=get_elements_size 'xpath', "#{toi_table}/tbody/tr"
  puts "#{toi_table_rows}"
  (1..toi_table_rows).each do |toi_table_rows|
    name_value=get_element_text 'xpath',"#{toi_table}/tbody/tr[#{toi_table_rows}]/td[2]"
    puts "#{name_value}"
    if (name_value.to_i == value)
      record_found = true
      @browser.element(:xpath => "#{toi_table}/tbody/tr[#{toi_table_rows}]/td[4]").click
      step "the user waits for 2 seconds"
      puts "Element Clicked"
      step "the user selects \"IMPPATH\" from \"lab project\" combo box on \"Imports\" page"
      step "the user waits for 2 seconds"
      step "the user uncheck \"active checkbox\" checkbox on \"Imports\" page"
      step "the user clicks on \"save maintain tois details\" element on \"Imports\" page"
      break
    end
    # record_found =false
  end
end

And(/^the user checks the status of current "([^"]*)" as "([^"]*)"$/) do |key_value, status|
  value = test_data_generator key_value
  puts "#{value}"
  puts "#{status}"
  toi_table=".//*[@class='rgMasterTable']"
  puts "found table"
  record_found=false
  toi_table_rows=get_elements_size 'xpath', "#{toi_table}/tbody/tr"
  puts "#{toi_table_rows}"
  (1..toi_table_rows).each do |toi_table_rows|
    name_value=get_element_text 'xpath',"#{toi_table}/tbody/tr[#{toi_table_rows}]/td[2]"
    puts "#{name_value}"
    if (name_value.to_i== value)
      record_found = true
      actual_status=get_element_text 'xpath',"#{toi_table}/tbody/tr[#{toi_table_rows}]/td[3]"
      puts "#{actual_status}"
      if(actual_status.eql?status)
        puts "element matched"
        record_found=true
      else
        fail("element not found")
      end
      break

    end
  end
end




Then(/^the user cannot see the current value of "(.*)" in "(.*)" combo box on "(.*)" page$/) do |key_value, field_name, page_name|
  value = test_data_generator key_value
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
  puts "#{value}"
  options.each do |option|
    list_value = list_value.to_s + option.text + ','
    puts "#{list_value}"
    test=option.text.to_s.squeeze(' ').strip.downcase
    puts "Selected"
    puts "#{test}"
    if option.text.to_s.squeeze(' ').strip.downcase == value.to_s.squeeze(' ').strip.downcase
      value_found = 'true'
      break
    end
  end
  checkpoint (value_found.eql? 'false'), "The #{value} is displayed in #{field_name} combo box on #{page_name} page"
  drop_down_selected_path = element_path.sub(/'\]/, "_DropDown']/descendant::li[text()='#{selected_value}']")

end



Then(/^the user cannot see "(.*)" field on "(.*)" page$/) do |field_name, page_name|
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

  e = @browser.select selector, element_path
  if e.exists?
    fail('fail')
  else

  end
end



Then(/^the user validates the Import establishment$/) do
  table=".//*[@class='rgMasterTable']"
  table_rows=get_elements_size 'xpath', "#{table}/tbody/tr"
  puts "#{table_rows}"
  (2..table_rows).each do |table_rows|
    name_value=get_element_text 'xpath',"#{table}/tbody/tr[#{table_rows+1}]/td[5]"
    puts "#{name_value}"
    if name_value.include?'I271'
      puts "matched"
    else
      fail()
    end
  end

end






