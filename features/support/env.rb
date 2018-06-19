
require 'bundler/setup'
require 'yaml'
require 'hashie'
require 'watir'
require 'watir-webdriver/extensions/alerts'
require 'selenium-webdriver'
require 'watir-webdriver-performance'
require 'watir-webdriver/attribute_helper'
# require 'minitest/autorun'
# require 'minitest/unit'

ENV['TEST_ENV'] ||= 'test31'
ENV['BROWSER']  ||= 'chrome'


if ENV['HEADLESS']
  require 'headless'
  headless = Headless.new
  headless.start
  at_exit do
    headless.destroy
  end
end

# custom attribute can now be used for locating objects. I found the solution here
# http://jkotests.wordpress.com/2012/09/04/locate-element-via-custom-attribute-extending-watir-webdriver/
# module Watir
#   class ElementLocator
#     alias :old_normalize_selector :normalize_selector
#
#     def normalize_selector(how, what)
#       case how
#         when :'ng-model'
#           [how, what]
#         else
#           old_normalize_selector(how, what)
#       end
#     end
#   end
# end

# Wait fo Element to Present and enable on page
def wait_for_element(obj)
  # exists? – Returns whether this element actually exists.
  #  present? – Returns true if the element exists and is visible on the page , equivalent to visible and exists
  # visible? – If any parent element isn’t visible then we cannot write to the element. The only reliable way to determine this is to
  # iterate up the DOM element tree checking every element to make sure it’s visible.
  # obj.exists?
  # obj.visible?
  obj.wait_until_present
  obj.present?
  obj.enabled?


end

# AJAX or JAVASCRIPT Wait fo Element to Present and enable on page
def wait_for_ajax_element(obj)
# Add gem watir-dom-wait
  obj.wait_until(&:dom_changed?).present?
  obj.wait_until(&:dom_changed?).enabled?
  obj.wait_while_present # For AJAX and Javascript loads

end

# Wait for Disanble element to be present
def wait_for_disable_element(obj)
  # exists? – Returns whether this element actually exists.
  #  present? – Returns true if the element exists and is visible on the page , equivalent to visible and exists
  # visible? – If any parent element isn’t visible then we cannot write to the element. The only reliable way to determine this is to
  # obj.exists?
  obj.present?
  obj.wait_until_present

end

# Focus on the element
def focus_on_element(element)
  element.scroll_into_view
  element.focus
  # @browser.execute_script('return arguments[0].focus()',element)
  # @browser.execute_script('return arguments[0].scrollIntoView(true);', element)
  # element.scroll_into_view

end

# Function to Enter text values in text box
def type_value_in_element(selector, element_text, value)
  # Create the button object
  text_obj = @browser.text_field(selector, element_text)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(text_obj)

  # Focus on element to make it visible
  focus_on_element(text_obj)

  # Clear the existing value in text box
  text_obj.wait_until_present.clear

  # Enter values in text box
  begin
    text_obj.set! value
  rescue
    text_obj.set value
  end
end

# Function to Click on Element object
def click_web_element(element_obj)
  # Wait for element to be exist, visible,present and enabled
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  # bypass browser check by directly triggering the click event, like if element is hidden by some dropdown then this will work
  element_obj.click!

  sleep 0.5

end

# Function to get element size , generally used to count rows in table or no of fields
def get_elements_size(selector, element_path)
  # Create the element object
  element_obj = @browser.element(selector.to_sym, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  # Return the total count of elements
  @browser.elements(selector.to_sym, element_path).count

end

# Function to get element text , generally used to get the text from table row,column
def get_element_text(selector, element_path)
  # Create the element object

  element_obj = @browser.element(selector.to_sym, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  # Return the text in element
  element_obj.text

end

# Function to get element text , generally used to get the text from table row,column
def get_text_using_javascript(selector, element_path)
  # Create the element object

  element_obj = @browser.element(selector.to_sym, element_path)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  # Return the text in element
  @browser.execute_script("return arguments[0].textContent", element_obj)

end


def get_element_obj(selector, element_path)
  element_obj = @browser.element(selector.to_sym, element_path)

  # Wait for element to be exist, visible,present and enabled
  wait_for_element(element_obj)

  # Focus on element to make it visible
  focus_on_element(element_obj)

  element_obj
end


# Function to check the field present in page by element count
def check_element_present(selector, element_path)

  # Change the element locator wait to 5 seconds
  @browser.driver.manage.timeouts.implicit_wait = 5

  # Return the total count of elements
  element_found = @browser.elements(selector.to_sym, element_path).count

  if element_found > 0
    element_found = true
  else
    element_found = false
  end

  # Set back the default element locator timeout defined in hooks.rb file
  @browser.driver.manage.timeouts.implicit_wait = @@IMPLICIT_WAIT

  element_found
end


# World(MiniTest::Assertions)