Then(/^the user "(.*)" the Complaint type record with Complaint Type:"(.*)" , Medical Visit:"(.*)" and Complaint Description:"(.*)" on "(.*)" page$/) do |action, complaint_type, medical_visit, complaint_description, page_name|
  sleep 1
  description= nil
  record_found = false
  if complaint_type.downcase.include? 'current value of'
    hash_key = complaint_type.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    complaint_type = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if complaint_type.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    complaint_type = complaint_type
  end

  if complaint_description.downcase.include? 'current value of'
    hash_key = complaint_description.split('#')
    hash_key.each do |key_value|
      if key_value.downcase.include? 'current value of'
      else
        # Get the created value from unique has table
        description = "#{description.to_s} " + "#{test_data_generator(key_value)}"
      end
    end
    complaint_description = description

    # Check Fail test if value is not retrieved
    if complaint_description.nil?
      fail "Not Retrieved created value for : #{hash_key}"
    end
    # end
  else
    complaint_description = complaint_description
  end

  table_name = ".//*[@id='complaint-type-table']"
  chk_record_count = get_elements_size 'xpath', "#{table_name}/tbody/tr/td"
  if chk_record_count > 1
    table_rows = get_elements_size 'xpath', "#{table_name}/tbody/tr"
    (1..table_rows).each do |rows|
      complaint_type_value = get_element_text 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[2]"
      medical_visit_value = get_element_text 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[3]"
      complaint_description_value = get_element_text 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[4]"
      # puts "Actual #{complaint_type_value} Expected #{complaint_type} "
      # puts "Actual #{medical_visit_value} Expected #{medical_visit}"
      # puts "Actual #{complaint_description_value} Expected #{complaint_description}"
      # puts (complaint_type_value.downcase.eql? complaint_type.downcase)
      # puts (medical_visit_value.downcase.eql? medical_visit.downcase)
      # puts (complaint_description_value.downcase.strip.eql? complaint_description.downcase.strip)

      if (complaint_type_value.downcase.eql? complaint_type.downcase) && (medical_visit_value.downcase.eql? medical_visit.downcase) && (complaint_description_value.downcase.strip.eql? complaint_description.downcase.strip)
        # puts 'match found'
        if action.downcase.eql? 'sees'
          record_found = true
          break
        else
          if action.downcase.eql? 'edit'
            record_found = true
            element_obj = get_element_obj('xpath', "#{table_name}/tbody/tr[#{rows}]/td[5]/a[@class='editComplaintType']")
            click_web_element(element_obj)
            break
          else
            if action.downcase.eql? 'view'
              record_found = true
              element_obj = get_element_obj('xpath', "#{table_name}/tbody/tr[#{rows}]/td[5]/a[@class='viewComplaintType']")
              click_web_element(element_obj)
              break
            else
              if action.downcase.eql? 'delete'
                record_found = true
                element_obj = get_element_obj('xpath', "#{table_name}/tbody/tr[#{rows}]/td[5]/a[@class='deleteComplaintType']")
                click_web_element(element_obj)
                step "the user clicks button with text \"Yes\" on \"Create Case > Complaint Type > Economic Adulteration\" page"
                break
              else
                if action.downcase.eql? 'selects'
                  record_found = true
                  element_obj = get_element_obj('xpath', "#{table_name}/tbody/tr[#{rows}]/td[1]")
                  click_web_element(element_obj)
                  break
                else
                  if action.downcase.eql? 'sees primary checkbox checked for'
                    record_found = true
                    element_obj = check_element_present 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[1]/span[@class='fas fa-check-circle']"
                    if element_obj.eql? false
                      fail "User didn't see Primary Checkbox checked for Complaint Type - #{complaint_type} with Description - #{complaint_description}"
                    end
                    break
                  else
                    if action.downcase.eql? 'sees primary checkbox not checked for'
                      record_found = true
                      element_obj = check_element_present 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[1]/span[@class='fas fa-check-circle']"
                      if element_obj.eql? true
                        fail "User see Primary Checkbox is checked instead of Unchecked for Complaint Type - #{complaint_type} with Description - #{complaint_description}"
                      end
                      break
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
# puts "record found #{record_found}"
# Soft Fail the steps and continues to next step
    checkpoint (record_found.eql? true), "Complaint Type is not seen in Complaint Type table on #{page_name} page"

  else
    puts 'No complaint types record is displayed on complaint type table'
  end
end

Then(/^the user deletes all added complaint type$/) do
  sleep 1
  table_name = ".//*[@id='complaint-type-table']"
  chk_record_count = get_elements_size 'xpath', "#{table_name}/tbody/tr/td"
  if chk_record_count > 1
    table_rows = get_elements_size 'xpath', "#{table_name}/tbody/tr"
    (1..table_rows).each do |rows|
      element_obj = get_element_obj('xpath', "#{table_name}/tbody/tr[#{rows}]/td[5]/a[@id='deleteComplaintType']")
      click_web_element(element_obj)
      step "the user clicks button with text \"Yes\" on \"Score/CCMS/Case/ComplaintType\" page"
      step "the user can see \"Successfully deleted complaint type.\" text in \"Complaint Type:Success Alert Message\" field on \"Score/CCMS/Case/ComplaintType\" page"
    end
  end
end