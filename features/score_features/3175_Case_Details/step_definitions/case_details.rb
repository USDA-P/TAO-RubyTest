Then(/^the user "(.*)" the tasks with Brand Name-"(.*)" ,Product name-"(.*)" ,Establishment Number-"(.*)" ,Establishment District-"(.*)" and Establishment Name-"(.*)" on Task table$/) do |action, brand_name, product_name, establishment_number, establishment_district, establishment_name|
product_record_found = false
est_record_found = false
brand_name_value = nil
product_name_value = nil
establishment_number_value = nil
establishment_district_value = nil
establishment_name_value = nil

if brand_name.downcase.include? 'current value of'
    hash_key = brand_name.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    brand_name = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if brand_name.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    brand_name = brand_name
  end

  if product_name.downcase.include? 'current value of'
    hash_key = product_name.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    product_name = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if product_name.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    product_name = product_name
  end
  if establishment_number.downcase.include? 'current value of'
    hash_key = establishment_number.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    establishment_number = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if establishment_number.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    establishment_number = establishment_number
  end
  if establishment_district.downcase.include? 'current value of'
    hash_key = establishment_district.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    establishment_district = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if establishment_district.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    establishment_district = establishment_district
  end
  if establishment_name.downcase.include? 'current value of'
    hash_key = establishment_name.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    establishment_name = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if establishment_name.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    establishment_name = establishment_name
  end

  main_table_rows = get_elements_size 'xpath',".//*[@id='tasks-table']/tbody/tr"
                                                  # .//*[@id='tasks-table']/tbody/tr[1]/td[4]/descendant::table/tbody/tr
  (1..main_table_rows).each do |rows|
    brand_name_value = get_element_text 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/td[2]"
    product_name_value = get_element_text 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/td[3]"
    # puts "Brand Name in main table #{brand_name_value}"
    # puts "Product name in main table #{product_name_value}"
    # puts (brand_name_value.downcase.eql? brand_name.downcase)
    # puts (product_name_value.downcase.eql? product_name.downcase)
    if (brand_name_value.downcase.eql? brand_name.downcase) && (product_name_value.downcase.eql? product_name.downcase)
      product_record_found = true
      est_table_rows = get_elements_size 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/td[4]/descendant::table/tbody/tr"
      (1..est_table_rows).each do |est_rows|
        establishment_number_value = get_element_text 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/td[4]/descendant::table/tbody/tr[#{est_rows}]/td[1]"
        establishment_district_value = get_element_text 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/td[4]/descendant::table/tbody/tr[#{est_rows}]/td[2]"
        establishment_name_value = get_element_text 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/td[4]/descendant::table/tbody/tr[#{est_rows}]/td[3]"
        # puts "Child Establishment number for row #{est_rows} is #{establishment_number_value}"
        # puts "Child table Est district for row #{est_rows} is #{establishment_district_value}"
        # puts "Child table Est namefor row #{est_rows} is #{establishment_name_value}"
        # puts (establishment_number_value.downcase.eql? establishment_number.downcase)
        # puts (establishment_district_value.downcase.eql? establishment_district.downcase)
        # puts (establishment_name_value.downcase.eql? establishment_name.downcase)

        if (establishment_number_value.downcase.eql? establishment_number.downcase) && (establishment_district_value.downcase.eql? establishment_district.downcase) && (establishment_name_value.downcase.eql? establishment_name.downcase)
          est_record_found = true
          if action.downcase.eql? 'expands'
            expand_element_obj = get_element_obj 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/td[1]"
            click_web_element expand_element_obj
          else
            if action.downcase.eql? 'click on establishment number for'
              expand_element_obj = get_element_obj 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/td[4]/descendant::table/tbody/tr[#{est_rows}]/td[1]"
              click_web_element expand_element_obj
            else
              if action.downcase.eql? 'click on add tasks button for'
                expand_element_obj = get_element_obj 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/following-sibling::tr/descendant::button[contains(text(),'Add Task')]"
                click_web_element expand_element_obj
              else
                if action.downcase.eql? 'click on update assignee button for'
                  expand_element_obj = get_element_obj 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/following-sibling::tr/descendant::button[contains(text(),'Update Assignee')]"
                  click_web_element expand_element_obj
                else
                  if action.downcase.eql? 'click on mark complete button for'
                    expand_element_obj = get_element_obj 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/following-sibling::tr/descendant::button[contains(text(),'Mark Complete')]"
                    click_web_element expand_element_obj
                  else
                    if action.downcase.eql? 'click on task notes button for'
                      expand_element_obj = get_element_obj 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/following-sibling::tr/descendant::button[contains(text(),'Task Notes')]"
                      click_web_element expand_element_obj
                    end
                  end
                end
              end
            end
          end
          break
        end
      end
      break
    end

  end
  if product_record_found.eql? false
    fail "User didnt see tasks with Brand Name-#{brand_name} ,Product name- #{product_name},Establishment Number-#{establishment_number} ,Establishment District-#{establishment_district} and Establishment Name-#{establishment_name} on Task table,instead saw Brand Name-#{brand_name_value} ,Product name- #{product_name_value},Establishment Number-#{establishment_number_value} ,Establishment District-#{establishment_district_value} and Establishment Name-#{establishment_name_value} on Task table"
  end
  if est_record_found.eql? false
    fail "User didnt see establishment for tasks with Brand Name-#{brand_name} ,Product name- #{product_name},Establishment Number-#{establishment_number} ,Establishment District-#{establishment_district} and Establishment Name-#{establishment_name} on Task table,instead saw Brand Name-#{brand_name_value} ,Product name- #{product_name_value},Establishment Number-#{establishment_number_value} ,Establishment District-#{establishment_district_value} and Establishment Name-#{establishment_name_value} on Task table"
  end
end

And(/^the user can "(.*)" tasks under Brand Name-"(.*)",Product Name-"(.*)" with Task Type-"(.*)",Created on-"(.*)",Current Status-"(.*)" and Assigned to-"(.*)" in Add Contacts table$/) do |action, brand_name, product_name, task_type, created_on, current_status, assigned_to|
  product_record_found = false
  add_tasks_record_found = false
  brand_name_value = nil
  product_name_value = nil
  task_type_value = nil
  created_on_value = nil
  current_status_value = nil
  assigned_to_value = nil
  if brand_name.downcase.include? 'current value of'
    hash_key = brand_name.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    brand_name = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if brand_name.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    brand_name = brand_name
  end

  if product_name.downcase.include? 'current value of'
    hash_key = product_name.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    product_name = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if product_name.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    product_name = product_name
  end

  if task_type.downcase.include? 'current value of'
    hash_key = task_type.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    task_type = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if task_type.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    task_type = task_type
  end

  if created_on.downcase.include? 'current value of'
    hash_key = created_on.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    created_on = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if created_on.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    created_on = created_on
  end

  if current_status.downcase.include? 'current value of'
    hash_key = product_name.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    current_status = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if current_status.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    current_status = current_status
  end

  if assigned_to.downcase.include? 'current value of'
    hash_key = assigned_to.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    assigned_to = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if assigned_to.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    assigned_to = assigned_to
  end

  main_table_rows = get_elements_size 'xpath',".//*[@id='tasks-table']/tbody/tr"
  # .//*[@id='tasks-table']/tbody/tr[1]/td[4]/descendant::table/tbody/tr
  (1..main_table_rows).each do |rows|
    brand_name_value = get_element_text 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/td[2]"
    product_name_value = get_element_text 'xpath',".//*[@id='tasks-table']/tbody/tr[#{rows}]/td[3]"
    if (brand_name_value.downcase.eql? brand_name.downcase) && (product_name_value.downcase.eql? product_name.downcase)
      product_record_found = true
      task_table_path = ".//*[@id='tasks-table']/tbody/tr[#{rows}]/following-sibling::tr/descendant::table"
      # task_table_records_check = get_elements_size 'xpath',task_table_path+'/tbody/tr[1]/td'
      # Check task has rows
      # if task_table_records_check > 1
        task_table_rows = get_elements_size 'xpath',task_table_path+"/tbody/tr"
      # puts "Task Table rows #{task_table_rows}"
        (1..task_table_rows).each do |task_rows|
          task_type_value = get_element_text 'xpath',task_table_path+"/tbody/tr[#{task_rows}]/td[2]"
          created_on_value = get_element_text 'xpath',task_table_path+"/tbody/tr[#{task_rows}]/td[3]"
          current_status_value = get_element_text 'xpath',task_table_path+"/tbody/tr[#{task_rows}]/td[5]"
          assigned_to_value = get_element_text 'xpath',task_table_path+"/tbody/tr[#{task_rows}]/td[6]"
          # puts "Entered Value #{task_type}"
          # puts "Entered Value #{created_on}"
          # puts "Entered Value #{current_status}"
          # puts "Entered Value #{assigned_to}"
          # puts "Value in table #{task_type_value}"
          # puts "Value in table #{created_on_value}"
          # puts "Value in table #{current_status_value}"
          # puts "Value in table #{assigned_to_value}"
          # puts (task_type_value.downcase.eql? task_type.downcase)
          # puts (created_on_value.downcase.eql? created_on.downcase)
          # puts (current_status_value.downcase.eql? current_status.downcase)
          # puts (assigned_to_value.downcase.eql? assigned_to.downcase)
          if (task_type_value.downcase.eql? task_type.downcase) && (created_on_value.downcase.eql? created_on.downcase) && (current_status_value.downcase.eql? current_status.downcase) && (assigned_to_value.downcase.eql? assigned_to.downcase)
            add_tasks_record_found =  true
            if action.downcase.eql? 'sees'
              pass "User sees the Task Type-#{task_type} Created Date-#{created_on} Current Status-#{current_status} and Assigned to -#{assigned_to} in tasks> Add tasks table"
            else
              if action.downcase.eql? 'select'
                select_element_obj = get_element_obj 'xpath',task_table_path+"/tbody/tr[#{task_rows}]"
                click_web_element select_element_obj
              else
                if action.downcase.eql? 'view'
                  view_element_obj = get_element_obj 'xpath',task_table_path+"/tbody/tr[#{task_rows}]/td[7]/a[1]"
                  click_web_element view_element_obj
                else
                  if action.downcase.eql? 'edit'
                    edit_element_obj = get_element_obj 'xpath',task_table_path+"/tbody/tr[#{task_rows}]/td[7]/a[2]"
                    click_web_element edit_element_obj
                  else
                    if action.downcase.eql? 'cancel'
                      cancel_element_obj = get_element_obj 'xpath',task_table_path+"/tbody/tr[#{task_rows}]/td[7]/a[3]"
                      click_web_element cancel_element_obj
                    end
                  end
                end
              end
            end
            # Exit Task table loop if tasks match found
            break
          end
        end
      # else
      #   fail "No tasks displayed for Brand name- #{brand_name} and Product name- #{product_name} in Tasks table"
      # end
      # Exit loop if brand and product name matches
      break
    end

  end
  if product_record_found.eql? false
    fail "User didnt see tasks with Brand Name-#{brand_name} ,Product name- #{product_name} ,instead saw Brand Name-#{brand_name_value} ,Product name- #{product_name_value}on Task table"
  end
  if add_tasks_record_found.eql? false
    fail "User didnt see tasks under Brand Name-#{brand_name},Product Name-#{product_name} with Task Type-#{task_type},Created on-#{created_on},Current Status-#{current_status} and Assigned to-#{assigned_to} in Add Contacts table instead saw Task Type-#{task_type_value},Created on-#{created_on_value},Current Status-#{current_status_value} and Assigned to-#{assigned_to_value}"
  end

end

Then(/^the user sees the Task Name-"(.*)" and Assigned to-"(.*)" at "(.*)" row into Case List expand view for "(.*)" Case Number$/) do |task_name, assigned_to,row_place,case_number|

  if task_name.downcase.include? 'current value of'
    hash_key = task_name.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    task_name = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if task_name.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    task_name = task_name
  end

  if case_number.downcase.include? 'current value of'
    hash_key = case_number.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    case_number = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if case_number.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    case_number = case_number
  end

  if row_place.downcase.eql? 'first'
    row_num = 1
  else
    if row_place.downcase.eql? 'second'
      row_num = 2
    else
      if row_place.downcase.eql? 'third'
        row_num = 3
      else
        if row_place.downcase.eql? 'fourth'
          row_num = 4
        end
      end
    end
  end
  task_name_value = get_text_using_javascript 'xpath',".//*[@id='CasesTable']/descendant::a[(text()='#{case_number}')]/following::table[1]/tbody/tr[#{row_num}]/td[1]"
  assigned_to_value = get_text_using_javascript 'xpath',".//*[@id='CasesTable']/descendant::a[(text()='#{case_number}')]/following::table[1]/tbody/tr[#{row_num}]/td[2]"
  if (task_name_value.downcase.eql? task_name.downcase) && (assigned_to_value.downcase.eql? assigned_to.downcase)
    pass "User sees the values at #{row_place}"
  else
    fail "User didnt sees the values at #{row_place}"
  end

end