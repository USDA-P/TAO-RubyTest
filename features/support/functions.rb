require 'watir'
require 'date'
require 'minitest'

$VERBOSE = nil # TO SUPPRESS WARNINGS MESSAGES

# Get the dates from Date Generator function
def get_date_value(date_value)

  case date_value.downcase

    when 'todays date'
      return get_today_date

    when 'start date of current month'
      return get_start_date_of_current_month_year

    when 'tomorrows date'
      return get_tomorrow_date

    when 'next year from todays date'
      return get_next_year_from_today

    when 'next business date'
      return next_business_day

    when 'two years before'
      return two_years_before

    when 'yesterday date'
      return get_yesterday_date

  end
end

# Save run time values into hash table
def save_value_in_test_data_hash(hash_key, value)
  @test_data_hash = Hash.new if @test_data_hash.nil?
  @test_data_hash[hash_key] = value
end

# Soft fail validations and continue tests
def checkpoint(exp, msg)
  @error_found = false
  begin
    assert(exp, msg)
  rescue Exception => e
    capture_screenshot
    puts "<div><span style='color: red; font-weight: bold'>CHECKPOINT FAILED:</span> " + e.message.to_str + '</div>'
    nil
  end
end

# # Get the Page objects from Page object file
# def get_element_target(field, page)
#
#   case
#
#     when (page.downcase.include? 'ccms login')
#       ccms_login_page_element field, page
#
#     when (page.downcase.include? 'test module')
#       test_element_target field, page
#
#     when (page.downcase.include? 'ccms home')
#       ccms_home_page_element field, page
#
#     when (page.downcase.include? 'create case') || (page.downcase.include? 'create details')
#       create_case_page_element field, page
#
#     when (page.downcase.include? 'case list')
#     case_list_page_element field, page
#
#     when (page.downcase.include? 'save discard dialog') || (page.downcase.include? 'cancel yes no dialog') || (page.downcase.include? 'delete yes no dialog')
#     save_discard_popup_page_element field, page
#
#     else
#       fail "Unable to find page object file for #{page}, Please check page name given in Gherkin"
#   end
# end

# def del_file_from_download_folder(file_name)
#   # Create downoads if not exists
#   directory_name="#{Dir.pwd}/features/support/downloads"
#   Dir.mkdir(directory_name) unless File.exists?(directory_name)
#   Dir.new(directory_name).each { |download_file_name|
#     if download_file_name.include? "#{file_name}"
#       File.delete(directory_name+"/" +download_file_name)
#     end
#   }
#   # Dir.new("#{Dir.pwd}/features/support/downloads").each { |download_file_name|
#   #   if download_file_name.include? "#{file_name}"
#   #     File.delete("#{Dir.pwd}/features/support/downloads/"+download_file_name)
#   #   end
#   # }
# end

# def wait_for_element_displayed(element_xpath)
#   start_time = Time.now.min
#   element_present_flag = 'false'
#   while element_present_flag == 'false' do
#     element_obj = PageModuleOld.page_util.find_element(:xpath, element_xpath).displayed? rescue false
#     # element_obj = PageModuleOld.driver.find_element(:xpath, element_xpath).displayed? rescue Selenium::WebDriver::Error false
#
#     if element_obj.eql? true
#       element_present_flag = 'true'
#       break
#     end
#     time_counter = Time.now.min
#     if (time_counter.to_i - start_time.to_i) > 2
#       raise "Element #{element_xpath} is not displayed in 2 mins"
#     end
#   end
# end
#
#
# # get the text on web element
# def get_web_element_text(selector, element_text, attempts=10)
#   delay(1)
#   obj = nil
#   err = nil
#   (0..attempts).each do
#     begin
#       obj = PageModuleOld.page_util.find_element(selector, element_text)
#       if obj.displayed?
#         PageModuleOld.focus_on_element obj
#         # PageModuleOld.page_util.scroll_to_view(obj, 250)
#         break
#       end
#       # if (obj.text.include? 'No records to display') || (obj.text.size <= 0)
#       #   sleep 1
#       # else
#       #   PageModuleOld.focus_on_element obj
#         # PageModuleOld.page_util.scroll_to_view(obj, 250)
#       #   break
#       # end
#         # rescue => e
#     rescue Selenium::WebDriver::Error::WebDriverError || Net::ReadTimeout || Selenium::WebDriver::Error::StaleElementReferenceError => e
#       err = e
#       sleep 1
#       nil
#       next
#     end
#   end
#
#   raise err if obj == nil
#
#   obj.text
# end
#
# # Get the total number of elements of web element
# def get_web_elements_size(selector, element_text, attempts=10)
#   obj_size = nil
#   err = nil
#   (0..attempts).each do
#     begin
#       obj_size = PageModuleOld.page_util.find_elements(selector, element_text).size
#       if obj_size.to_i >= 1
#         break
#       end
#     # rescue => e
#     rescue Selenium::WebDriver::Error::WebDriverError || Net::ReadTimeout || Selenium::WebDriver::Error::StaleElementReferenceError => e
#       err = e
#       sleep 1
#       nil
#       next
#     end
#   end
#
#   raise err if obj_size == nil
#
#   obj_size
# end

# def select_rad_combobox_checkbox_option (value, field, page, attempts=10)
#   #get the object map
#   # selector, element_text = get_web_element_on_page(field, page)
#   selector, element_text = get_element_target(field, page).split('^^')
#   selector =(selector.downcase.include? 'xpath') ? :xpath : :css
#
#   #Click the dropdown
#   obj = click_web_element selector, element_text, attempts
#   sleep(1)
#   # obj = PageModuleOld.page_util.find_element(selector, element_text).click
#   checkpoint((!obj.nil?), %{Unable to select "#{value}" in field "#{field}" on "#{page}" page.})
#   if obj.nil?
#     return nil
#   end
#
#   #add the list value to the xpath
#   list_text = element_text.sub(/'\]/, "_DropDown']/descendant::li/label[contains(text(),'#{value}')]/input")
#   if list_text == element_text
#     list_text = element_text.sub(/'\)\]/, "_DropDown')]/descendant::li/label[contains(text(),'#{value}')]/input")
#   end
#
#   (0..attempts).each do
#     obj = PageModuleOld.page_util.find_element selector, list_text
#     next if (obj == nil)
#
#     break if obj.text.include? value
#   end
#
#   #Click the item from the list
#   obj = click_web_element selector, list_text, attempts
#   sleep(2)
#   # obj = PageModuleOld.page_util.find_element(selector, list_text).click
#   checkpoint((!obj.nil?), %{Unable to select "#{value}" in field "#{field}" on "#{page}" page.})
#
#   obj
# end

