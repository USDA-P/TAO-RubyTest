#Investigation file number search
Then(/^the user split and enters current value of "(.*)" into "(.*)" on "(.*)" page$/) do |key_value,field_name, page_name|
  # Get the created value from unique has table
  puts "#{key_value}"
  value = test_data_generator key_value
  value=value.split(':')
  value[1]=value[1].strip
  puts "#{value}"
  # Check Fail test if value is not retrieved
  if value.nil?
    fail "Not Retrieved created value for : #{key_value}"
  end

  # get the XPATH or CSS from page object file, Raises Error if not found
  selector, element_path = get_element_target(field_name, page_name).split('^^')
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{field_name} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # Enter value in text box
  type_value_in_element selector, element_path, value[1]
end

# Star Step Definition

And(/^the user clicks the name with current value of "(.*)" ipps table on "(.*)" page$/) do |key_value, page_name|
  sleep 1
  # value='46'
  value = test_data_generator key_value
  puts "#{value}"
  record_found=false
  page_table_name="/html/body/div/table[2]/tbody/tr[1]/td[2]/table/tbody/tr[2]/td[1]/table[2]/tbody/tr/td[1]"
  table_name = ".//*[@class='dataContainerHeader']"
  page_table_size=get_elements_size('xpath', "#{page_table_name}/a")
  puts "#{page_table_size}"
  table_rows = get_elements_size 'xpath', "#{table_name}/tbody/tr"
  puts "#{table_rows}"
  (2..table_rows).each do |table_rows|
    name_value=get_element_text 'xpath',"#{table_name}/tbody/tr[#{table_rows}]/td[3]"
    puts "#{name_value}"
    if (name_value.eql? value)
      record_found = true
      @browser.element(:xpath => "#{table_name}/tbody/tr[#{table_rows}]/td/a").click
      break
    end
    record_found =false
  end
  if record_found.equal?false
    (2..page_table_size).each do |page_table_size|
      # puts "#{page_table_size}"
      puts "Entered loop"
      @browser.element(:xpath => "#{ page_table_name}/a[#{page_table_size}]").click
      table_rows = get_elements_size 'xpath', "#{table_name}/tbody/tr"
      puts "#{table_rows}"
      (2..table_rows).each do |table_rows|
        name_value=get_element_text 'xpath',"#{table_name}/tbody/tr[#{table_rows}]/td[3]"
        puts "#{name_value}"
        if (name_value.eql? value)
          @browser.element(:xpath => "#{table_name}/tbody/tr[#{table_rows}]/td/a").click
          record_found = true
          break
          puts "found value"
        else
          record_found=false
        end

      end
      if record_found.equal?true
        break
      end
    end
  end
end


And(/^the user clicks the name with current value of "(.*)" star table on "(.*)" page$/) do |key_value, page_name|
  sleep 1
  # value='71'
  value = test_data_generator key_value
  puts "#{value}"
  record_found=false
  # selector, element_path = get_element_target(page_name).split('^^')
  if page_name.downcase.include?"IPPS"
    page_table_name="/html/body/div/table[2]/tbody/tr[1]/td[2]/table/tbody/tr[2]/td[1]/table[2]/tbody/tr/td[1]"
    table_name = ".//*[@class='dataContainerHeader']"
    puts "ipps"
    page_table_size=get_elements_size('xpath', "#{page_table_name}/a")
    puts "#{page_table_size}"
    table_rows = get_elements_size 'xpath', "#{table_name}/tbody/tr"
    puts "#{table_rows}"
    (2..table_rows).each do |table_rows|
      name_value=get_element_text 'xpath',"#{table_name}/tbody/tr[#{table_rows}]/td[3]"
      puts "#{name_value}"
      if (name_value.eql? value)
        record_found = true
        @browser.element(:xpath => "#{table_name}/tbody/tr[#{table_rows}]/td/a").click
        break
      end
      record_found =false
    end
    if record_found.equal?false
      (2..page_table_size).each do |page_table_size|
        # puts "#{page_table_size}"
        puts "Entered loop"
        @browser.element(:xpath => "#{ page_table_name}/a[#{page_table_size}]").click
        table_rows = get_elements_size 'xpath', "#{table_name}/tbody/tr"
        puts "#{table_rows}"
        (2..table_rows).each do |table_rows|
          name_value=get_element_text 'xpath',"#{table_name}/tbody/tr[#{table_rows}]/td[3]"
          puts "#{name_value}"
          if (name_value.eql? value)
            @browser.element(:xpath => "#{table_name}/tbody/tr[#{table_rows}]/td/a").click
            record_found = true
            break
            puts "found value"
          else
            record_found=false
          end

        end
        if record_found.equal?true
          break
        end
      end
    end
  else
    page_table_name="/html/body/div/table[2]/tbody/tr[1]/td[2]/table/tbody/tr[2]/td[1]/table[2]/tbody/tr/td"
    table_name = ".//*[@class='dataContainerHeader575']"
    puts "star"

    page_table_size=get_elements_size('xpath', "#{page_table_name}/a")
    puts "#{page_table_size}"
    table_rows = get_elements_size 'xpath', "#{table_name}/tbody/tr"
    puts "#{table_rows}"
    (2..table_rows).each do |table_rows|
      name_value=get_element_text 'xpath',"#{table_name}/tbody/tr[#{table_rows}]/td[4]"
      # puts "#{name_value}"
      if (name_value.eql? value)
        record_found = true
        @browser.element(:xpath => "#{table_name}/tbody/tr[#{table_rows}]/td/a").click
        break
      end
    end
    if record_found.equal?false
      (2..page_table_size).each do |page_table_size|
        puts "Entered loop"
        @browser.element(:xpath => "#{ page_table_name}/a[#{page_table_size}]").click
        puts "#{table_rows}"
        table_rows = get_elements_size 'xpath', "#{table_name}/tbody/tr"
        (2..table_rows).each do |table_rows|
          name_value=get_element_text 'xpath',"#{table_name}/tbody/tr[#{table_rows}]/td[4]"
          puts "#{name_value}"
          if (name_value.eql? value)
            @browser.element(:xpath => "#{table_name}/tbody/tr[#{table_rows}]/td/a").click
            record_found = true
            break
            puts "found value"

          end

        end
        if record_found.equal?true
          break
        end
      end
    end
  end
end

