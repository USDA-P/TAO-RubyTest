Given(/^the user navigates to (.*) on browser$/) do |page|
  @browser.goto(Configuration.host + page)
  clear_alert
end

Given(/^the user navigates to (.*) on browser and go to "(.*)" page after login as "(.*)" if current data row is set "(.*)" in data table$/) do |url,page_name, user_name,background_check|
  # Given(/^the user navigates to (.*) on browser and go to "(.*)" page after login as "(.*)" first time and remains on same page until all steps executed$/) do |url,page_name user_name|

    # if @browser_control_flag['first run'].downcase.eql? 'true'

  if background_check.downcase.eql? 'true'
  @browser.goto(Configuration.host + url)
  clear_alert
  step "the user clicks the link with text \"CCMS\""
  step "the user can see text \"Select a User to Login:\""
  step "the user selects \"#{user_name}\" from \"Select User\" drop down on \"Score/User/User/Login\" page"
  step "the user clicks the \"Login\" button on \"Score/User/User/Login\" page"
  step "the user clicks the link with text \"CCMS\""
  step "the user can see text \"Cases by Status\""
  step "the user clicks the link with text \"#{page_name}\""
  step "the user can see text \"Create Case\""
  step "the user clicks the link with text \"Complaint Data\""
  step 'the user waits for 2 seconds'
  end

end

# Gherkin used to wait for certain time in seconds
When(/^the user waits for (.*) seconds$/) do |secs|
  sleep secs.to_i
end

# Gherkin used to wait for certain time in minutes
When(/^the user waits for (.*) minutes$/) do |timer|
  x = timer.to_i * 60
  x = x + 30
  sleep x
end

# Gherkin used to verify the page title
Then(/^the user sees the title "(.*)"$/) do |title|
  if @browser.exists?
  page_title = @browser.title
  end
  checkpoint (page_title.eql? title),"The user didn't see #{title} title instead saw #{page_title} page title on page"
end

# Gherkin used to close the alerts on page
Then(/^the user closes alert or cancels prompts or confirms pop-ups$/) do
  if @browser.alert.exists?
  @browser.alert.close
  end
end

# Gherkin used to accpt and close alert on page
Then(/^the user closes alert and accepts prompts or confirm pop-ups$/) do
  if @browser.alert.exists?
  @browser.alert.ok
  end
end

When(/^the user press downkey and enter$/) do
  @browser.send_keys :arrow_down
  @browser.send_keys :enter
end

# Gherkin used to close the browser pop ups
Then(/^the user dismisses browser pop-ups$/) do
  # @browser.driver.switch_to.alert.present?
  if @browser.alert.exists?
  @browser.driver.switch_to.alert.accept
  else
    puts 'No Pop Up to close or accept, all good'
  end
end


# Gherkin used to switch to iframe by Name
When(/^the user switch to "(.*)" frame$/) do |frame_name|
  @main_browser_instance = @browser
  @browser = @browser.iframe(:name ,frame_name)

end

When(/^the user switch to iframe$/) do
  @main_browser_instance = @browser
  @browser = @browser.iframe(:xpath ,'.//iframe')
end

# Gherkin used to switch to iframe by XPATH
When(/^the user find and switch to "(.*)" frame on "(.*)" page$/) do |element_name, page_name|
  # get the XPATH or CSS from page object file, Raises Error if not found
  selector, element_path = get_element_target(element_name,page_name).split('^^')
  if selector.nil? || element_path.nil?
    # Fail the steps and skips next steps
    fail("Element Xpath is not found for #{element_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css
  @main_browser_instance = @browser
  @browser = @browser.iframe(selector, element_path)
end

# Gherkin used to switch to back to Main browser window
When(/^the user switch back to main window/) do
  @browser = @main_browser_instance
end

#Gherkin to Switch to new tab page and Close it
Then(/^the switch to new tab page and close$/) do
  @browser.windows.last.use
  sleep 2
  @browser.windows.last.close
end

# Gherkin to switch to new open tab page
Then(/^the switch to new tab page$/) do
  @browser.windows.last.use
end

Then(/^the return to main page$/) do
  # @browser.driver.switch_to.window(@browser.driver.window_handles.first)
  # @browser.driver.switch_to.default_content
  @browser.windows.first.use
end

#
# Then(/^the user right click and select "(.*)" on browser context menu$/) do |option_text|
#   browser.goto('http://the-internet.herokuapp.com/context_menu')
#
#   copy_link = 7
#   link = browser.link(:text, 'this open issue').when_present
#   browser.driver.action.context_click(link.wd).perform
#   (1..copy_link).each do
#         @browser.driver.action.send_keys(:arrow_down).perform
#   end
#   browser.driver.action.send_keys(:enter).perform
#
#   puts Clipboard.paste
# end
#
# Then(/^the user right click and select "([^"]*)" on user context menu$/) do |option_text|
#   browser.div(:id, 'mythingy').when_present.right_click
#   list = browser.ul(:text, /My Popup Menu/).when_present
#   target = list.li(:text, /Cheese/).when_present
#   target.click
#   alert = browser.alert.when_present
#   if alert.text =~ /clicked 5/
#     puts "Found the cheese."
#   end
#   alert.ok
#   if list.visible?
#     puts "Popup menu still visible."
#   end
# end
#
# Then(/^the user right click and select "([^"]*)" using key from context menu$/) do |option_text|
#   browser.goto "https://cucumber.io/"
#   browser.a(:text,"Training").click (:shift)
#   browser.a(:text,"Training").click (:F10)
# end

Then(/^the user extends "(.*)" and clicks "(.*)" in top navigation section$/) do |btn_span_text, link_text|
  # Create the button object
  btn_obj = @browser.span(:text, btn_span_text)

  if btn_obj.nil?
    fail("Button with text #{btn_span_text} is not found in page")
  end

  # Click on button
  click_web_element(btn_obj)

  # Create the link object for submenu
  link_obj = @browser.link(:text =>link_text)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

  # Focus on element to make it visible
  focus_on_element(link_obj)

  # Click on Link
  link_obj.click
end

Then(/^the user can see "(.*)" header in table on "(.*)" page$/) do |header_text, page_name|
  # Create the header element object
  header_obj = @browser.th(:text, header_text)
  if header_obj.nil?
    fail("Header with text #{header_text} is not found in #{page_name} page")
  end
end

When(/^user scrolls down the page$/) do
  @browser.execute_script 'javascript:window.scrollBy(0, 5000)'
end

# # Gherkin used to check field is present on page
# Then(/^the user can see "(.*)" on "(.*)" page$/) do |element_name, page_name|
#
#   # get the XPATH or CSS from page object file, Raises Error if not found
#   selector, element_path = get_element_target(element_name, page_name).split('^^')
#   if selector.nil? || element_path.nil?
#     fail("Element Xpath is not found for #{element_name} in #{page_name} page objects File")
#   end
#
#   selector =(selector.downcase.include? 'xpath') ? :xpath : :css
#   element_obj = @browser.element(selector, element_path).exists?
#
#   # Soft fail step and continue execution
#   checkpoint (element_obj.eql? true), "The #{element_name} field is not seen on #{page_name} page"
#
# end


And(/^the user clicks the link with text "(.*)" if the current row is set to "(.*)" in data table$/) do |link_text, end_scenario|
  if end_scenario.downcase.eql? 'true'
    step "the user clicks the link with text \"Create New Case\""
    step "the user clicks the \"Discard\" button on \"Score/Dialog\" page"
    step "the user clicks the link with text \"#{link_text}\""
  end

end

Then(/^the user clicks the "([^"]*)" button on "([^"]*)" page if opens$/) do |btn_name, page_name|
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
  element_obj = check_element_present selector,element_path
  if element_obj.eql? true
    btn_obj = get_element_obj selector , element_path
    click_web_element btn_obj
  end

end

Then(/^the user sign out from the score application and if pop up opens click discard button$/) do
  step "the user clicks on \"Logout\" element on \"Score/home\" page"
  btn_name = 'Discard'
  page_name = 'Score/Dialog'
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
  element_obj = check_element_present selector,element_path
  if element_obj.eql? true
    btn_obj = get_element_obj selector , element_path
    click_web_element btn_obj
  end
  # step "the user clicks the \"Discard\" button on \"Score/Dialog\" page if opens"
  step "the user can see text \"Select a User to Login:\""
end

Then(/^the user sign out from the score application$/) do
  step "the user clicks on \"Logout\" element on \"Score/home\" page"
  step "the user can see text \"Select a User to Login:\""
end

Then(/^the user waits till "(.*)" bar disappears on "(.*)" page$/) do |field_name, page_name|
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

  @browser.element(selector,element_path).wait_while_present.visible?
  # @browser.element(:xpath,".//*[@id='CasesTable_processing']").wait_while_present.visible?


end