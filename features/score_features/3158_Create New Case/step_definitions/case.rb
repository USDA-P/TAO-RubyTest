# Gherkin used to check Case number on full case list records
Then(/^the user "(.*)" the "(.*)" all case number record on View Case table on "(.*)" page$/) do |action, case_number, page_name|
  step "the user waits till \"Case List Progress\" bar disappears on \"Score/CCMS/ViewcaseList\" page"
  if case_number.downcase.eql? 'first'
    case_number = get_element_text 'xpath', '//*[@id="CasesTable"]/tbody/tr[1]/td[3]'
  else
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
  end

  total_records_count = 0
  record_match_found = false
  table_rows = get_elements_size 'xpath', '//*[@id="CasesTable"]/tbody/tr'
  begin
    pagination_record_count = get_element_text 'xpath',".//*[@id='CasesTable_info']"
    pagination_record_count = pagination_record_count.split(' ')
    pagination_total_records = pagination_record_count[5]
  rescue
    puts 'Not able to retrieved the total records count from pagination, considering total displayed rows as total records'
    pagination_total_records = table_rows
  end
  while total_records_count.to_i <= pagination_total_records.to_i
    table_rows = get_elements_size 'xpath', '//*[@id="CasesTable"]/tbody/tr'
    (1..table_rows).each do |rows|
      case_number_value = get_element_text 'xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[3]"
      if case_number_value.eql? case_number
        record_match_found = true
        if action.downcase.eql? 'check'
          element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[2]")
          click_web_element(element_obj)
        else
          if action.downcase.eql? 'clicks'
            element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[3]/a")
            click_web_element(element_obj)
          else
            if action.downcase.eql? 'expands'
              element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[1]")
              click_web_element(element_obj)
            else
              if action.downcase.eql? 'sees'
                pass "User sees record with Case Number -#{case_number} in Case List Table"
              end
            end
          end
        end
        break
      end

    end
    # end
    if (total_records_count.to_i == pagination_total_records.to_i) || (record_match_found.eql? true)
      break
    else
      if (total_records_count.to_i <= pagination_total_records.to_i) && (record_match_found.eql? false)
        next_page_element_obj = get_element_obj 'xpath',".//*[@id='CasesTable_next']"
        click_web_element next_page_element_obj
        sleep 1
      end
    end
    total_records_count = total_records_count.to_i + table_rows.to_i
  end
  if record_match_found.eql? false
    fail "User didn't see record in case list table with Case Number -#{case_number} in Case List Table"
  end
# end

end

# Gherkin used to check Case number on first 10 rows
Then(/^the user "(.*)" the "(.*)" case number record on View Case table on "(.*)" page$/) do |action, case_number, page_name|
  step "the user waits till \"Case List Progress\" bar disappears on \"Score/CCMS/ViewcaseList\" page"
  record_found = false
  table_rows = get_elements_size 'xpath', '//*[@id="CasesTable"]/tbody/tr'
  if case_number.downcase.eql? 'first'
    case_number = get_element_text 'xpath', '//*[@id="CasesTable"]/tbody/tr[1]/td[3]'
  else
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
  end
# total_records_count = get_element_text 'xpath',".//*[@id='CasesTable_info']"
# total_records_count = total_records_count.split('of')
# begin
# total_displayed_records_count = total_records_count[1]..delete('^0-9')
# rescue
#   total_displayed_records_count = table_rows
# end
(1..table_rows).each do |row_num|
  # record_rows = get_elements_size 'xpath', '//*[@id="CasesTable"]/tbody/tr'
  # total_record_rows = total_record_rows + record_rows
  # (1..table_rows).each do |row_num|
    case_number_value = get_element_text 'xpath', "//*[@id='CasesTable']/tbody/tr[#{row_num}]/td[3]"
    # puts "Case number in case list table is #{case_number_value}"
    if case_number_value == case_number
      record_found = true
      if action.downcase.eql? 'check'
        element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[#{row_num}]/td[2]")
        click_web_element(element_obj)
      else
        if action.downcase.eql? 'clicks'
          element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[#{row_num}]/td[3]/a")
          click_web_element(element_obj)
        else
          if action.downcase.eql? 'expands'
            element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[#{row_num}]/td[1]")
            click_web_element(element_obj)
          else
            if action.downcase.eql? 'sees'
              pass "User sees the Case number: #{case_number} in Case List Table"
            end
          end
        end
      end
      break
    end
  # if (record_found.eql? false) || (record_rows<=total_displayed_records_count)
  #
  # end
  end
  if record_found.eql? false
    fail "User didnt see case #{case_number} in case list results table"
  end
end

# Perfor actions on Case Details based on parameter provided
# Then(/^the user sees created case on top with case number-"(.*)",Reported Date-"(.*)",Complaint Type-"(.*)",Est District-"(.*)",Complainant District-"(.*)",Status-"(.*)" and Est-"(.*)" on Case List table$/) do |case_number, reported_date, complaint_type, est_district,complainant_district ,status, est_number|
Then(/^the user "(.*)" created case at "(.*)" with case number-"(.*)",Reported Date-"(.*)",Complaint Type-"(.*)",Est District-"(.*)",Complainant District-"(.*)",Status-"(.*)" and Est-"(.*)" on Case List table$/) do |action, action_row, case_number, reported_date, complaint_type, est_district, complainant_district, status, est_number|
  step "the user waits till \"Case List Progress\" bar disappears on \"Score/CCMS/ViewcaseList\" page"
  total_records_count = 0
  record_match_found = false
  case_match = false
  case_number_value = nil
  reported_date_value = nil
  complaint_type_value = nil
  est_district_value = nil
  complainant_district_value = nil
  status_value = nil
  est_number_value = nil
  # match_result = nil
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
  if reported_date.downcase.eql? 'todays date'
    # time = Time.new
    # reported_date = time.strftime('%-m/%-d/%Y')
    reported_date = get_today_date
  else
    if reported_date.downcase.include? 'current value of'
      hash_key = reported_date.split('#')
      key_value = hash_key[1].strip
      # Get the created value from unique has table
      reported_date = test_data_generator key_value
      reported_date = reported_date.sub(/^[0]+/, '')
      # puts "reported date retrived from has table eris #{reported_date}"
      # Check Fail test if value is not retrieved
      if reported_date.nil?
        fail "Not Retrieved created value for : #{key_value}"
      end
    else
      reported_date = reported_date
    end
  end

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

  if est_district.downcase.include? 'current value of'
    hash_key = est_district.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    est_district = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if est_district.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    est_district = est_district
  end

  if complainant_district.downcase.include? 'current value of'
    hash_key = complainant_district.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    complainant_district = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if complainant_district.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    complainant_district = complainant_district
  end

  if status.downcase.include? 'current value of'
    hash_key = status.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    status = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if status.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    status = status
  end

  if est_number.downcase.include? 'current value of'
    hash_key = est_number.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    est_number = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if est_number.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    est_number = est_number
  end
  # reported_date = reported_date.sub!(/^[0]+/,'')
  # puts "Reported date after sub is #{reported_date}"
  chk_record_present = get_elements_size 'xpath', '//*[@id="CasesTable"]/tbody/tr[1]/td'
  if chk_record_present > 1
    if action_row.downcase.eql? 'top'
      case_number_value = get_element_text 'xpath', '//*[@id="CasesTable"]/tbody/tr[1]/td[3]'
      reported_date_value = get_element_text 'xpath', '//*[@id="CasesTable"]/tbody/tr[1]/td[4]'
      complaint_type_value = get_element_text 'xpath', '//*[@id="CasesTable"]/tbody/tr[1]/td[6]'
      est_district_value = get_element_text 'xpath', '//*[@id="CasesTable"]/tbody/tr[1]/td[7]'
      complainant_district_value = get_element_text 'xpath', '//*[@id="CasesTable"]/tbody/tr[1]/td[8]'
      status_value = get_element_text 'xpath', '//*[@id="CasesTable"]/tbody/tr[1]/td[9]'
      est_number_value = get_element_text 'xpath', '//*[@id="CasesTable"]/tbody/tr[1]/td[10]'
      match_result = (case_number_value.strip.eql? case_number.strip) && (reported_date_value.strip.eql? reported_date.strip) && (complaint_type_value.gsub("\n", ' ').squeeze(' ').downcase.strip.include? complaint_type.downcase.strip) && (est_district_value.gsub("\n", ' ').squeeze(' ').downcase.strip.include? est_district.downcase.strip) && (complainant_district_value.downcase.strip.gsub("\n", ' ').squeeze(' ').include? complainant_district.downcase.strip) && (status_value.downcase.strip.eql? status.downcase.strip) && (est_number_value.downcase.strip.gsub(' ','').include? est_number.downcase.strip)
      # match_result = (case_number_value.strip.eql? case_number.strip) && (reported_date_value.strip.eql? reported_date.strip) && (complaint_type_value.gsub("\n", ' ').squeeze(' ').downcase.strip.include? complaint_type.downcase.strip) && (est_district_value.gsub("\n", ' ').squeeze(' ').downcase.strip.include? est_district.downcase.strip) && (complainant_district_value.downcase.strip.gsub("\n", ' ').squeeze(' ').include? complainant_district.downcase.strip) && (status_value.downcase.strip.eql? status.downcase.strip) && (est_number_value.downcase.strip.gsub("\n", ' ').squeeze(' ').include? est_number.downcase.strip)
      # puts "Actual is #{case_number_value} and Expected is #{case_number.strip}"
      # puts "Actual is #{reported_date_value} and Expected is#{reported_date.strip}"
      # puts "Actual is #{complaint_type_value.gsub("\n", ' ').squeeze(' ').downcase.strip} and Expected is #{complaint_type.downcase.strip}"
      # puts "Actual is #{est_district_value.gsub("\n", ' ').squeeze(' ').downcase.strip} and Expected is #{est_district.downcase.strip}"
      # puts "Actual is #{complainant_district_value.downcase.strip.gsub("\n", ' ').squeeze(' ')} and Expected is #{complainant_district.downcase.strip}"
      # puts "Actual is #{status_value.downcase.strip} and Expected is #{status.downcase.strip}"
      # puts "Actual is #{est_number_value.downcase.strip.gsub(' ','')} and Expected is #{est_number.downcase.strip}"
      # puts "case Number Match result is #{(case_number_value.strip.eql? case_number.strip)}"
      # puts "Reported date match result is #{(reported_date_value.strip.eql? reported_date.strip)}"
      # puts "Complaint type match result is #{(complaint_type_value.gsub("\n", ' ').squeeze(' ').downcase.strip.include? complaint_type.downcase.strip)}"
      # puts "Est District Match result is #{(est_district_value.gsub("\n", ' ').squeeze(' ').downcase.strip.include? est_district.downcase.strip)}"
      # puts "Complainant District amtch result is #{(complainant_district_value.downcase.strip.gsub("\n", ' ').squeeze(' ').include? complainant_district.downcase.strip)}"
      # puts "Status Match result is #{(status_value.downcase.strip.eql? status.downcase.strip)}"
      # puts "Est Number match result is #{(est_number_value.downcase.strip.gsub(' ','').include? est_number.downcase.strip)}"
      if match_result.eql? true
        if action.downcase.eql? 'check'
          element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[1]/td[2]")
          click_web_element(element_obj)
        else
          if action.downcase.eql? 'clicks'
            element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[1]/td[3]/a")
            click_web_element(element_obj)
          else
            if action.downcase.eql? 'expands'
              element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[1]/td[1]")
              click_web_element(element_obj)
            else
              if action.downcase.eql? 'sees'
                pass "User sees record with Case Number -#{case_number},Reported Date -#{reported_date},Complaint Type-#{complaint_type},Est District-#{est_district},Complainant District-#{complainant_district},Status-#{status} and Est Number-#{est_number} in Case List Table"
              end
            end
          end
        end
      else
        fail "User didn't see record with Case Number -#{case_number},Reported Date -#{reported_date},Complaint Type-#{complaint_type},Est District-#{est_district},Complainant District-#{complainant_district},Status-#{status} and Est Number-#{est_number} in case list table instead saw- Case Number -#{case_number_value},Reported Date -#{reported_date_value},Complaint Type-#{complaint_type_value},Est District-#{est_district_value},Complainant District-#{complainant_district_value},Status-#{status_value} and Est Number-#{est_number_value}"
      end
    else
      table_rows = get_elements_size 'xpath', '//*[@id="CasesTable"]/tbody/tr'
      begin
      pagination_record_count = get_element_text 'xpath',".//*[@id='CasesTable_info']"
      pagination_record_count = pagination_record_count.split(' ')
      pagination_total_records = pagination_record_count[5]
      rescue
        puts 'Not able to retrieved the total records count from pagination, considering total displayed rows as total records'
        pagination_total_records = table_rows
      end
      while total_records_count.to_i <= pagination_total_records.to_i
        table_rows = get_elements_size 'xpath', '//*[@id="CasesTable"]/tbody/tr'
        (1..table_rows).each do |rows|
            case_number_value = get_element_text 'xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[3]"
            reported_date_value = get_element_text 'xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[4]"
            complaint_type_value = get_element_text 'xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[6]"
            est_district_value = get_element_text 'xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[7]"
            complainant_district_value = get_element_text 'xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[8]"
            status_value = get_element_text 'xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[9]"
            est_number_value = get_element_text 'xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[10]"
            # match_result = (case_number_value.eql? case_number) && (reported_date_value.eql? reported_date) && (complaint_type.downcase.eql? complaint_type_value.downcase) && (est_district_value.downcase.eql? est_district.downcase) && (complainant_district_value.downcase.eql? complainant_district.downcase) && (status_value.downcase.eql? status.downcase) && (est_number_value.downcase.eql? est_number.downcase)
            if case_number_value.eql? case_number
              case_match = true
              match_result = (case_number_value.eql? case_number) && (reported_date_value.eql? reported_date) && (complaint_type_value.downcase.gsub("\n", ' ').squeeze(' ').include? complaint_type.downcase) && (est_district_value.downcase.gsub("\n", ' ').squeeze(' ').include? est_district.downcase) && (complainant_district_value.downcase.include? complainant_district.downcase) && (status_value.downcase.eql? status.downcase) && (est_number_value.downcase.gsub("\n", ' ').squeeze(' ').include? est_number.downcase)
              # puts (case_number_value.eql? case_number)
              # puts (reported_date_value.eql? reported_date)
              # puts (complaint_type_value.downcase.include? complaint_type.downcase)
              # puts (est_district_value.downcase.include? est_district.downcase)
              # puts (complainant_district_value.downcase.include? complainant_district.downcase)
              # puts (status_value.downcase.eql? status.downcase)
              # puts (est_number_value.downcase.include? est_number.downcase)
              if match_result.eql? true
              record_match_found = true
              if action.downcase.eql? 'check'
                element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[2]")
                click_web_element(element_obj)
              else
                if action.downcase.eql? 'clicks'
                  element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[3]/a")
                  click_web_element(element_obj)
                else
                  if action.downcase.eql? 'expands'
                    element_obj = get_element_obj('xpath', "//*[@id='CasesTable']/tbody/tr[#{rows}]/td[1]")
                    click_web_element(element_obj)
                  else
                    if action.downcase.eql? 'sees'
                      pass "User sees record with Case Number -#{case_number},Reported Date -#{reported_date},Complaint Type-#{complaint_type},Est District-#{est_district},Complainant District-#{complainant_district},Status-#{status} and Est Number-#{est_number} in Case List Table"
                    end
                  end
                end
              end
              end
              break
          end
        end
        if (total_records_count.to_i == pagination_total_records.to_i) || (record_match_found.eql? true) || (case_match.eql? true)
          break
        else
          if (total_records_count.to_i <= pagination_total_records.to_i) && (record_match_found.eql? false) && (case_match.eql? false)
            next_page_element_obj = get_element_obj 'xpath',".//*[@id='CasesTable_next']"
            click_web_element next_page_element_obj
            sleep 1
          end
        end
        total_records_count = total_records_count.to_i + table_rows.to_i
      end
       if record_match_found.eql? false
         fail "User didn't see record in case list table with Case Number -#{case_number},Reported Date -#{reported_date},Complaint Type-#{complaint_type},Est District-#{est_district},Complainant District-#{complainant_district},Status-#{status} and Est Number-#{est_number} in case list table instead saw- Case Number -#{case_number_value},Reported Date -#{reported_date_value},Complaint Type-#{complaint_type_value},Est District-#{est_district_value},Complainant District-#{complainant_district_value},Status-#{status_value} and Est Number-#{est_number_value}"
       end
    end
  else
    fail 'No records present in Case List table'
  end

end

# Perform Actions on Establishment lookup search results
Then(/^the user "(.*)" for state-"(.*)",Establishment number-"(.*)",District-"(.*)",Name-"(.*)"and Closed-"(.*)" on Establishment lookup table$/) do |action, est_state, establishment_number, est_district, est_name, closed|
  # sleep 2
  if est_state.downcase.include? 'current value of'
    hash_key = est_state.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    est_state = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if est_state.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    est_state = est_state
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
  if est_district.downcase.include? 'current value of'
    hash_key = est_district.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    est_district = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if est_district.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    est_district = est_district
  end

  if est_name.downcase.include? 'current value of'
    hash_key = est_name.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    est_name = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if est_name.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    est_name = est_name
  end

  if closed.downcase.include? 'current value of'
    hash_key = closed.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    closed = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if closed.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    closed = closed
  end

  table_name =".//*[@id='establishment-search-results']"
  chk_record_present = get_elements_size 'xpath', "#{table_name}/tbody/tr/td"
  # puts "recotds in table is #{chk_record_present}"
  if chk_record_present > 1
    est_state_value = get_element_text 'xpath', "#{table_name}/tbody/tr/td[2]"
    establishment_number_value = get_element_text 'xpath', "#{table_name}/tbody/tr/td[3]"
    est_district_value = get_element_text 'xpath', "#{table_name}/tbody/tr/td[4]"
    est_name_value = get_element_text 'xpath', "#{table_name}/tbody/tr/td[5]"
    closed_value = get_element_text 'xpath', "#{table_name}/tbody/tr/td[6]"

    match_result = (est_state_value.downcase.eql? est_state.downcase) && (establishment_number_value.downcase.eql? establishment_number.downcase) && (est_district_value.downcase.eql? est_district.downcase) && (est_name_value.downcase.eql? est_name.downcase) && (closed_value.downcase.eql? closed.downcase)
    if match_result.eql? true
      if action.downcase.eql? 'check the checkbox'
        chk_box_obj = get_element_obj 'xpath', "#{table_name}/tbody/tr/td[1]"
        click_web_element chk_box_obj
        if action.downcase.eql? 'click establishment number'
          est_num_obj = get_element_obj 'xpath', "#{table_name}/tbody/tr/td[3]/a"
          click_web_element est_num_obj
        end
      end
    else
      fail "Not found search establishment with state-#{est_state},Establishment number-#{establishment_number},District-#{est_district},Name-#{est_name} and Closed-#{closed} Instead saw establishment with state-#{est_state_value},Establishment number-#{establishment_number_value},District-#{est_district_value},Name-#{est_name_value} and Closed-#{closed_value} the Establishment Search table"
    end
  else
    fail 'No Records displayed after Search in Products>Search Establishment Table '
  end
end

# Tp perform actions on Products results table Create Case> Products table
Then(/^the user can "(.*)" Product with Brand Name-"(.*)",Product Name-"(.*)",Establishment Number-"(.*)",Establishment District-"(.*)",Establishment Name-"(.*)" on Products table$/) do |action, brand_name, product_name, est_number, est_district, est_name|
  # puts "Funtion start time check #{Time.now}"
  # get_product = false
  product_match_found = false
product_with_est_match_found = false
brand_name_value = nil
product_name_value = nil
est_number_value = nil
est_district_value = nil
est_name_value = nil
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

  if est_number.downcase.include? 'current value of'
    hash_key = est_number.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    est_number = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if est_number.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else

    est_number = est_number
  end

  if est_district.downcase.include? 'current value of'
    hash_key = est_district.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    est_district = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if est_district.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    est_district = est_district
  end

  if est_name.downcase.include? 'current value of'
    hash_key = est_name.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    est_name = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if est_name.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    est_name = est_name
  end
  # puts "Funtion after retrive hash values time check #{Time.now}"
  table_name =".//*[@id='products-table']"
  chk_record_present = get_elements_size 'xpath', "#{table_name}/tbody/tr/td"

  if chk_record_present > 1
    # puts "After record check if condition time check #{Time.now}"

    # brand_name = nil
    table_rows = get_elements_size 'xpath', "#{table_name}/tbody/tr"
    (1..table_rows).each do |rows|
    # puts "Before check #{Time.now}"
    chk_brand_name = @browser.element(:xpath,"#{table_name}/tbody/tr[#{rows}]/td[1][@rowspan]").exists?
    # puts "After Check #{Time.now}"
    # puts "Brand name check flag for row #{rows} is #{chk_brand_name}"
      if chk_brand_name.eql? true
        # puts "Row #{rows} and text is #{@browser.element(:xpath,"#{table_name}/tbody/tr[#{rows}]/td[1][@rowspan]").text}"
        brand_name_value = @browser.element(:xpath,"#{table_name}/tbody/tr[#{rows}]/td[1][@rowspan]").text
      else
        # puts "row #{rows} and brand element not accessible"
        brand_name_value = brand_name_value
      end
      # puts "Brand name value for row #{rows} is #{brand_name_value}"

      # puts "Before product check #{Time.now}"
      chk_product_name = @browser.element(:xpath,"#{table_name}/tbody/tr[#{rows}]/td[1][@rowspan]").exists?
      # puts "After product Check #{Time.now}"
      # puts "Product name check flag for row #{rows} is #{chk_product_name}"
      if chk_brand_name.eql? true
        # puts "Row #{rows} and text is #{@browser.element(:xpath,"#{table_name}/tbody/tr[#{rows}]/td[1][@rowspan]").text}"
        product_name_value = @browser.element(:xpath,"#{table_name}/tbody/tr[#{rows}]/td[2][@rowspan]").text
      else
        # puts "row #{rows} and brand element not accessible"
        product_name_value = product_name_value
      end
      # puts "Product name value for row #{rows} is #{product_name_value}"

      if (brand_name_value.downcase.strip.eql? brand_name.downcase.strip) && (product_name_value.downcase.strip.eql? product_name.downcase.strip)
        product_match_found = true
      end

      est_number_value = get_element_text 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[3]"
      est_district_value = get_element_text 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[4]"
      est_name_value = get_element_text 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[5]"
      # puts (brand_name_value.downcase.strip.eql? brand_name.downcase.strip)
      # puts (product_name_value.downcase.strip.eql? product_name.downcase.strip)
      # puts (est_number_value.downcase.strip.eql? est_number.downcase.strip)
      # puts (est_district_value.downcase.strip.eql? est_district.downcase.strip)
      # puts (est_name_value.downcase.strip.eql? est_name.downcase.strip)
      # puts brand_name_value
      # puts product_name_value
      # puts est_number_value
      # puts est_district_value
      # puts est_name_value
      # match_result = (brand_name_value.downcase.strip.eql? brand_name.downcase.strip) &&  (product_name_value.downcase.strip.eql? product_name.downcase.strip) && (est_number_value.downcase.strip.eql? est_number.downcase.strip) && (est_district_value.downcase.strip.eql? est_district.downcase.strip) && (est_name_value.downcase.strip.eql? est_name.downcase.strip)
      match_result = (brand_name_value.downcase.strip.eql? brand_name.downcase.strip) && (product_name_value.downcase.strip.eql? product_name.downcase.strip) && (est_number_value.downcase.strip.eql? est_number.downcase.strip) && (est_district_value.downcase.strip.eql? est_district.downcase.strip)
      if match_result.eql? true
        product_with_est_match_found = true
        if action.downcase.eql? 'see'
          pass "User sees Product with Brand Name-#{brand_name},Product Name-#{product_name},Establishment Number-#{est_number},Establishment District-#{est_district},Establishment Name-#{est_name} in Product Table"
        else
          if action.downcase.eql? 'clicks on establishment number'
            est_num_obj = get_element_obj 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[3]/a[2]"
            click_web_element est_num_obj
          else
            if action.downcase.eql? 'view'
              view_obj = get_element_obj 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[6]/a[1]"
              click_web_element view_obj
            else
              if action.downcase.eql? 'edit'
                edit_obj = get_element_obj 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[6]/a[2]"
                click_web_element edit_obj
              else
                if action.downcase.eql? 'delete'
                  delete_obj = get_element_obj 'xpath', "#{table_name}/tbody/tr[#{rows}]/td[6]/a[3]"
                  click_web_element delete_obj
                  step "the user clicks button with text \"Delete\" on \"Create Case > Complaint Type > Economic Adulteration\" page"
                end
              end
            end
          end
        end
        break
      end
    end
    if product_match_found.eql? false
      fail "Not found Search Product with Brand Name-#{brand_name},Product Name-#{product_name}, Instead saw Product with Brand Name-#{brand_name_value},Product Name-#{product_name_value} in Product Table"
    else
      if product_with_est_match_found.eql? false
        fail "Not found Establishment for Product with Brand Name-#{brand_name},Product Name-#{product_name},Establishment Number-#{est_number},Establishment District-#{est_district},Establishment Name-#{est_name} Instead saw Product with Brand Name-#{brand_name_value},Product Name-#{product_name_value},Establishment Number-#{est_number_value},Establishment District-#{est_district_value},Establishment Name-#{est_name_value} in Product Table"
      end
    end
    # puts "Time after end of loop check #{Time.now}"
  else
    fail 'There is No products displayed in Products Table'
  end
end

# Verify the Complaint details displayed in Case Contacts page, Create Case > Case Contacts
Then(/^the user sees current value of "(.*)" "(.*)" - "(.*)" in "(.*)" accordion row on "(.*)" page$/) do |first_name_key, last_name_key, complaint_type, element_name, page_name|
  if last_name_key.downcase.eql? 'anonymous'
    value = last_name_key + ' - '+complaint_type
  else
    begin
      value = (test_data_generator first_name_key) +' '+ (test_data_generator last_name_key) + ' - '+complaint_type
    rescue
      fail 'Not able to retrieve current values for First Name and Last Name'
    end
  end
  # puts "accordion name created is #{value}"
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
    if element_value.eql? ''
      element_value = element_obj.value
    end
  end

  # Soft Fail the steps and continues to next step
  checkpoint((element_value.include? value), "The user didn't see '#{value}' text message instead saw '#{element_value}' on #{element_name} field on #{page_name} page")

end

# Step Definitions for edit or delete Contact Details on case contacts page
Then(/^the user "(.*)" contact details with contact type-"(.*)" and contact info-"(.*)" for "(.*)" on "(.*)" page$/) do |action, contact_type, contact_info, accordion_name, page_name|
  record_found = false
  element_path = nil
  if contact_type.downcase.include? 'current value of'
    hash_key = contact_type.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    contact_type = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if contact_type.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    contact_type = contact_type
  end

  if contact_info.downcase.include? 'current value of'
    hash_key = contact_info.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    contact_info = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if contact_info.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    contact_info = contact_info
  end

  element_name = accordion_name.downcase
  begin
    selector, element_path = get_element_target(element_name, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element_name} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{element_name} in #{page_name} page objects File")
  end

  case_contact_table_path = element_path + '/following-sibling::div/descendant::table/tbody'

  table_rows = get_elements_size 'xpath',"#{case_contact_table_path}"+'/tr'
  (1..table_rows).each do |rows|
    contact_type_value = get_element_text 'xpath',"#{case_contact_table_path}"+"/tr[#{rows}]/td[1]"
    contact_info_value = get_element_text 'xpath',"#{case_contact_table_path}"+"/tr[#{rows}]/td[2]"
    if (contact_type_value.downcase.eql? contact_type.downcase) && (contact_info_value.downcase.eql? contact_info.downcase)
      record_found = true
      if action.downcase.eql? 'sees'
        pass "User sees the Contact Type #{contact_type} and Contact Info - #{contact_info} in #{accordion_name} on #{page_name} page"
      else
        if action.downcase.eql? 'edit'
          complaint_edit_obj = get_element_obj 'xpath',"#{case_contact_table_path}"+"/tr[#{rows}]/td[3]/a[1]"
          click_web_element complaint_edit_obj
        else
          if action.downcase.eql? 'delete'
            complaint_delete_obj = get_element_obj 'xpath',"#{case_contact_table_path}"+"/tr[#{rows}]/td[3]/a[2]"
            click_web_element complaint_delete_obj
          end
        end
      end
    end
  end

if record_found.eql? false
  fail "User didn't sees the Contact Type #{contact_type} and Contact Info - #{contact_info} in #{accordion_name} on #{page_name} page"
end
end

# Step Definitions for edit or delete Contact Details on complaint type  page
Then(/^the user "(.*)" contact details with contact type-"(.*)" and contact info-"(.*)" on Complaint Data page$/) do |action, contact_type, contact_info|
  record_found = false
  if contact_type.downcase.include? 'current value of'
    hash_key = contact_type.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    contact_type = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if contact_type.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    contact_type = contact_type
  end

  if contact_info.downcase.include? 'current value of'
    hash_key = contact_info.split('#')
    key_value = hash_key[1].strip

    # Get the created value from unique has table
    contact_info = test_data_generator key_value

    # Check Fail test if value is not retrieved
    if contact_info.nil?
      fail "Not Retrieved created value for : #{key_value}"
    end
  else
    contact_info = contact_info
  end

  case_contact_table_path = ".//*[@id='ContactsTable1']/tbody"

  table_rows = get_elements_size 'xpath',"#{case_contact_table_path}"+'/tr'
  (1..table_rows).each do |rows|
    contact_type_value = get_element_text 'xpath',"#{case_contact_table_path}"+"/tr[#{rows}]/td[1]"
    contact_info_value = get_element_text 'xpath',"#{case_contact_table_path}"+"/tr[#{rows}]/td[2]"
    if (contact_type_value.downcase.eql? contact_type.downcase) && (contact_info_value.downcase.eql? contact_info.downcase)
      record_found = true
      if action.downcase.eql? 'sees'
        pass "User sees the Contact Type #{contact_type} and Contact Info - #{contact_info} in Complaint Type page"
      else
        if action.downcase.eql? 'edit'
          complaint_edit_obj = get_element_obj 'xpath',"#{case_contact_table_path}"+"/tr[#{rows}]/td[3]/a[1]"
          click_web_element complaint_edit_obj
        else
          if action.downcase.eql? 'delete'
            complaint_delete_obj = get_element_obj 'xpath',"#{case_contact_table_path}"+"/tr[#{rows}]/td[3]/a[2]"
            click_web_element complaint_delete_obj
          end
        end
      end
    end
  end

  if record_found.eql? false
    fail "User didn't sees the Contact Type - #{contact_type} and Contact Info - #{contact_info} in Complaint Type page"
  end

end


Then(/^the user "(.*)" the submitted case success message with case number- "(.*)" in "(.*)" on "(.*)" page$/) do |action, case_number, field_name, page_name|
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
  success_text = "Success. Case #{case_number} created successfully."
  success_text_value = get_element_text selector,element_path
  # puts "Displayed Success message in page #{success_text_value}"
  # puts "Expected Success message in page #{success_text}"
  # puts success_text_value.downcase.eql? success_text.downcase
  if success_text_value.downcase.eql? success_text.downcase
    if action.downcase.eql? 'sees'
    pass "Success message is displayed after submission of case with case number-#{case_number}"
    else
      if action.downcase.eql? 'clicks on case number link in'
        case_no_link_obj = get_element_obj 'xpath',".//a[text()='#{case_number}']"
        click_web_element case_no_link_obj
      end
    end
  else
    fail "Success message is not displayed after submission of case with case number -#{case_number},User sees - #{success_text_value} instead of - #{success_text}"
  end
end

# Then(/^the user click on case number with-"" in submitted case success message on page$/) do |case_number|
#   pending
# end