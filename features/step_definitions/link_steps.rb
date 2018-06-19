#**********************************************************************************************************************************************
#*******************************************Step Definitions for Links ************************************************************************
index = {'first' => 0, 'second' => 1, 'third' => 2, 'fourth' => 3, 'fifth' => 4, 'sixth' => 5, 'seventh' => 6, 'eighth' => 7, 'ninth' => 8, 'tenth' => 9}

# Gherkin used to click on link with text
Then(/^the user clicks the link with text "(.*)"$/) do |link_text|
  # Create link object
  link_obj = @browser.link(:text =>link_text)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

  # Focus on element to make it visible
  focus_on_element(link_obj)

  # Click on Link
  link_obj.click

end

# Gherkin used to click on link with URL
Then(/^the user clicks the link with URL "(.*)"$/) do |link_url|
  # Create link object
  link_obj = @browser.link(:url, link_url)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

  # Focus on element to make it visible
  focus_on_element(link_obj)

  # Click on Link
  link_obj.click

end

# Gherkin used to click on link based on index like first, second link with text
Then(/^the user clicks the "(.*)" link with text "(.*)"$/) do |index_value, link_text|
  # Create link object
  link_obj = @browser.link(:text => link_text, :index => index[index_value])

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

  # Focus on element to make it visible
  focus_on_element(link_obj)

  # Click on Link
  link_obj.click

end

# Gherkin used to click on link with partial text
Then(/^the user clicks the link with partial text "(.*)"$/) do |link_text|
  # Create link object Note: contains 'partial', case insensitive
  link_obj = @browser.link(:text, /#{link_text}/i)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

  # Focus on element to make it visible
  focus_on_element(link_obj)

  # Click on Link
  link_obj.click

end

# Gherkin used to check the presence of link with partial text, it soft fails and move to next step
Then(/^the user can see the link with partial text "(.*)"$/) do |link_text|
  # Create link object Note: contains 'partial', case insensitive
  link_obj = @browser.link(:text, /#{link_text}/i)

# Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

# Focus on element to make it visible
  focus_on_element(link_obj)

  link_obj = @browser.link(:text, /#{link_text}/i).exists?

  checkpoint((link_obj.eql? true),"The user didn't see #{link_text} link on page")

end

# Gherkin used to check the presence of link with partial text, it fails and stop execution
Then(/^the user must see the link with partial text "(.*)"$/) do |link_text|
  # Create link object Note: contains 'partial', case insensitive
  link_obj = @browser.link(:text, /#{link_text}/i)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

  # Focus on element to make it visible
  focus_on_element(link_obj)

  link_obj = @browser.link(:text, /#{link_text}/i).exists?

  if link_obj.eql? false
    raise "The user didn't see #{link_text} link on page"
  end
end

# Gherkin used to check the presence of link with text, it soft fails and move to next step
Then(/^the user can see the link with text "(.*)"$/) do |link_text|
  # Create link object Note: contains 'partial', case insensitive
  link_obj = @browser.link(:text => link_text)

# Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

# Focus on element to make it visible
  focus_on_element(link_obj)

  link_obj = @browser.link(:text => link_text).exists?

  checkpoint((link_obj.eql? true),"The user didn't see #{link_text} link on page")

end

# Gherkin used to check the presence of link with text, it fails and stop execution
Then(/^the user must see the link with text "(.*)"$/) do |link_text|
  # Create link object Note: contains 'partial', case insensitive
  link_obj = @browser.link(:text => link_text)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

  # Focus on element to make it visible
  focus_on_element(link_obj)

  link_obj = @browser.link(:text => link_text).exists?

  if link_obj.eql? false
    raise "The user didn't see #{link_text} link on page"
  end
end

# Gherkin used to check the presence of link with xpath, it soft fails and move to next step
Then(/^the user can see the "(.*)" link on "(.*)" page$/) do |link_name, page_name|
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
  selector, element_path = get_element_target(link_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{link_name} in #{page_name} page objects File")
  end

  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{link_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Create link object
  link_obj = @browser.link(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

  # Focus on element to make it visible
  focus_on_element(link_obj)

  link_obj = @browser.link(selector, element_path).exists?

  checkpoint((link_obj.eql? true),"The user didn't see #{link_name} link on page")

end

# Gherkin used to check the presence of link with text, it fails and stop execution
Then(/^the user must see the "(.*)" link on "(.*)" on page$/) do |link_name, page_name|
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(link_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{link_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{link_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Create link object
  link_obj = @browser.link(selector, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(link_obj)

  # Focus on element to make it visible
  focus_on_element(link_obj)

  link_obj = @browser.link(selector, element_path).exists?

  if link_obj.eql? false
    raise "The user didn't see #{link_name} link on page"
  end
end

World(MiniTest::Assertions)
