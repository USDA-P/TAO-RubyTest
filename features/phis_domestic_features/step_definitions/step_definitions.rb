
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
  else
    fail('fail')
  end
end

# Then(/^the user see "(.*)" field is "(.*)" on "(.*)" page$/) do |field, attribute, page|
#   e = get_element page, field
#   xpath = @session.page_objects.web_element_xpath page, field
#   e = @session.browser.element :xpath, xpath
#   if e.wait_until_present.exists?
#     field_attr = e.enabled?
#     if attribute.downcase.eql? 'enabled'
#       checkpoint((field_attr.eql? true), "Failed: #{field} is not Enabled on #{page} page")
#     else
#       if attribute.downcase.eql? 'disabled'
#         checkpoint((field_attr.eql? false), "Failed: #{field} is not Disabled on #{page} page")
#       end
#     end
#   else
#     fail("Failed: #{field} is not present on #{page} page")
#   end
# end

# Then(/^the user adds a new poultry record for subclass-"([^"]*)";lotnumnber-"([^"]*)";headcount-"([^"]*)";liveweight-"([^"]*)";certifiedChilledWeight-"([^"]*)";certifiedFrozenWeight-"([^"]*)";deadOnArrivalHeadCount-"([^"]*)";deadOnArrivalWeight-"([^"]*)";aMCNIDOAsHeadCount-"([^"]*)";aMCNIDOAsWeight-"([^"]*)";pMCCNYDWeight-"([^"]*)";pMCPartsWeights-"([^"]*)" page$/) do |subclass,lotnumnber,headcount,liveweight,certifiedChilledWeight,certifiedFrozenWeight,deadOnArrivalHeadCount,deadOnArrivalWeight,aMCNIDOAsHeadCount,aMCNIDOAsWeight,pMCCNYDWeight,pMCPartsWeights|
# # |subclass, lotnumnber, headcount, liveweight, certifiedCchilledweight, certifiedfrozenweight, deadOnarrivalheadCount, deadOnarrivalweight, amcnidoAsHeadCount, aMCNIDOAsWeight, pMCCNYDWeight, pMCPartsWeights |
#
#   # #Locate the Sub Class drop-down and select a sub-class.
#   step "the user selects \"subclass\" from \"sub class drop down for poultry\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Locate the Lot Number Text box and enter data.
#   step "the user types \"lotnumnber\" into \"lot number text box for poultry\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Head Count.
#   step "the user types \"headcount\" into \"head count text box for poultry\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Live Weight.
#   step "the user types \"liveweight\" into \"live weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter CC Weight.
#   step "the user types \"certifiedChilledWeight\" into \"certified chiled weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter CF Weight.
#   step "the user types \"certifiedFrozenWeight\" into \"certified frozen weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter DOA head count.
#   step "the user types \"deadOnArrivalHeadCount\" into \"dead on arrival head count text box\ on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter DOA Weight.
#   step "the user types \"deadOnArrivalWeight\" into \"dead on arrival weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Ante-mortem condemned not including DOAs (Head Count).
#   step "the user types \"aMCNIDOAsHeadCount\" into \"ante-mortem condemned not including doas head count text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Ante-mortem condemned not including DOAs (Weight).
#   step "the user types \"aMCNIDOAsWeight\" into \"ante-mortem condemned not including doas weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Post-mortem Condemned Carcass NYD (Weight).
#   step "the user types \"pMCCNYDWeight\" into \"post-mortem condemned carcass nyd weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#   # #Enter Post-mortem Condemned Parts (Weight).
#   step "the user types \"pMCPartsWeights\" into \"post-mortem condemned parts weight text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
#
# end

And(/^the user completes Post mortem Carcass Condemnation Details tuberculosis"([^"]*)" leukosis "([^"]*)" septicaemiaandtoxemia "([^"]*)" synovitis "([^"]*)" tumors "([^"]*)" bruises "([^"]*)" cadavers "([^"]*)" contamination "([^"]*)" cverscald "([^"]*)" airsacculitis "([^"]*)" inflammatoryprocess "([^"]*)" noviscera "([^"]*)" plantrejects "([^"]*)" miscellaneous "([^"]*)" on "([^"]*)" page$/) do |value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11, value12, value13, value14, page|
  #puts value1, value2, value3, value4, value5, value6, value7, value8, value9, value10, value11, value12, value13, value14, page
  step "the user enters \"#{value1}\" into \"tuberculosis text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value2}\" into \"leukosis text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value3}\" into \"septicaemia and toxem text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value4}\" into \"synovitis text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value5}\" into \"tumors text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value6}\" into \"bruises text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value7}\" into \"cadavers text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value8}\" into \"contamination text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value9}\" into \"overscald text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value10}\" into \"airsacculitis text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value11}\" into \"inflammatory process text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value12}\" into \"no viscera text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value13}\" into \"plant rejects text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
  step "the user enters \"#{value14}\" into \"miscellaneous text box\" on \"DispositionReporting/PoultryClassSummary_AddEdit\" page"
end

And(/^the user adds a new meat record Sub Class"([^"]*)" Head Count "([^"]*)" Live Weight "([^"]*)" Dressed Weight "([^"]*)" on "([^"]*)" page$/) do |value1, value2, value3, value4, page|
  #Click on the Add slaughter Record link.
  # step "the user waits 3 seconds"
  # if step "the user clicks \"add slaughter record link\" on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user clicks on \"add slaughter record link\" element on \"DispositionReporting/EstablishmentReporting\" page"
    # step "the user waits 6 seconds"

  # else
  #   puts "the element has already received a click."
  # end
  # step "the user waits \"2\" seconds"
  #Verify required fields.Scenario:
  # step "the user clicks \"add button for meat record\" on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user clicks the \"add button for meat record\" button on \"DispositionReporting/EstablishmentReporting\" page"
  # step "the user waits for \"5\" seconds"
  #Verify that the Sub-Class and Head Count indicates as required fields.Scenario:
  # And the user must see "<string>" text in "<string>" field on "<string>" page
  step "the user must see \"(Required)\" text in \"Required Field For Sub-Class\" field on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user must see \"(Required)\" text in \"Required Field For Head Count\" field on \"DispositionReporting/EstablishmentReporting\" page"
  #Select Sub-Class from the drop-down.
  # And the user selects "<string>" from "<string>" combo box on "<string>" page
  step "the user selects \"#{value1}\" from \"subclass dropdown\" combo box on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user waits for 4 seconds"
  # step "the user waits \"6\" seconds"
  #Locate the Head Count text-box and enter valid data.
  step "the user enters \"#{value2}\" into \"Head Count Text-Box\" on \"DispositionReporting/EstablishmentReporting\" page"
  #Locate the Live and Dressed weight text boxes and enter valid data.Scenario:
  step "the user enters \"#{value3}\" into \"Live Weight Text-Box\" on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user enters \"#{value4}\" into \"dressed weight text-box\" on \"DispositionReporting/EstablishmentReporting\" page"
  #Locate the Add button and click on it.
  # step "the user clicks \"add button for meat record\" on \"DispositionReporting/EstablishmentReporting\" page"
  step "the user clicks the \"add button for meat record\" button on \"DispositionReporting/EstablishmentReporting\" page"

  # step "the user waits \"2\" seconds"
  #Verify the added record on top of the table.
  step "the user must see \"#{value1}\" text in \"sub class column for meat\" field on \"DispositionReporting/EstablishmentReporting\" page"
end

And(/^the user deletes existing poultry records if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      element_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[10]/button"
      click_web_element element_obj
      ok_btn_obj = 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_btn_obj
      sleep 3
    end
  end
  end

And(/^the user delete existing meat record if any exist$/) do
  if step "the user clicks on \"delete icon for meat\" element on \"DispositionReporting/EstablishmentReporting\" page"
    # And the user clicks on "Animal Disposition" element on "FSISDashBoard/Default" page
    step 'the user dismisses browser pop-ups'
  else
    puts 'there are no record/s to delete.'
  end
end

And(/^the user "(.*)" New Meat Slaughter with Sub Class-"(.*)",Head Count-"(.*)",Live Weight-"(.*)" and Dressed Weight-"(.*)" if not present on "(.*)" page$/) do |action, sub_class, head_count, live_weight, dressed_weight, page|
  sleep 2
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00']"
  sub_class_match = 'false'
  record_found = 'false'
  if action.downcase.eql? 'adds'
    check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    if check_record_present > 2
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
      (1..table_rows).each do |rows|
        sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
        if sub_class_value.downcase.eql? sub_class.downcase
          puts "New Slaughter cannot be added as #{sub_class} Sub Class already present in table"
          sub_class_match = 'true'
          break
        end
      end
      # If there is records but sub class not added before then add new meat slaughter
      if sub_class_match.downcase.eql? 'false'
        # step "the user waits \"2\" seconds"
        step "the user clicks on \"Add Slaughter Record link\" element on \"#{page}\" page"
        # step "the user waits \"2\" seconds"
        #Select Sub-Class from the drop-down.
        step "the user selects \"#{sub_class}\" from \"sub-class drop-down\" combo box on \"#{page}\" page"
        # step "the user selects \"#{sub_class}\" from \"sub-class drop-down\" on \"#{page}\" page"
        step "the user waits \"4\" seconds"
        #Locate the Head Count text-box and enter valid data.
        # step "the user types \"#{head_count}\" into \"Head Count Text-Box\" on \"#{page}\" page"
        step "the user enters \"#{head_count}\" into \"Head Count Text-Box\" on \"#{page}\" page"
        #Locate the Live and Dressed weight text boxes and enter valid data.Scenario:
        step "the user enters \"#{live_weight}\" into \"Live Weight Text-Box\" on \"#{page}\" page"
        step "the user enters \"#{dressed_weight}\" into \"dressed weight text-box\" on \"#{page}\" page"
        #Locate the Add button and click on it.
        # step "the user clicks \"add button\" on \"#{page}\" page"
        step "the user clicks the \"add button\" button on \"DispositionReporting/EstablishmentReporting\" page"
        # step "the user waits \"2\" seconds

      end
    else
      # If no records in slaughter table add new meat slaughter
      # step "the user clicks \"Add Slaughter Record link\" on \"#{page}\" page"
      # step "the user waits \"2\" seconds"
      # #Select Sub-Class from the drop-down.
      # step "the user selects \"#{sub_class}\" from \"sub-class drop-down\" on \"#{page}\" page"
      # step "the user waits \"4\" seconds"
      # #Locate the Head Count text-box and enter valid data.
      # step "the user types \"#{head_count}\" into \"Head Count Text-Box\" on \"#{page}\" page"
      # #Locate the Live and Dressed weight text boxes and enter valid data.Scenario:
      # step "the user types \"#{live_weight}\" into \"Live Weight Text-Box\" on \"#{page}\" page"
      # step "the user types \"#{dressed_weight}\" into \"dressed weight text-box\" on \"#{page}\" page"
      # #Locate the Add button and click on it.
      # step "the user clicks \"add button\" on \"#{page}\" page"
      # step "the user waits \"2\" seconds"
      step "the user clicks on \"Add Slaughter Record link\" element on \"#{page}\" page"
      # step "the user waits \"2\" seconds"
      #Select Sub-Class from the drop-down.
      step "the user selects \"#{sub_class}\" from \"sub-class drop-down\" combo box on \"#{page}\" page"
      # step "the user selects \"#{sub_class}\" from \"sub-class drop-down\" on \"#{page}\" page"
      step "the user waits \"4\" seconds"
      #Locate the Head Count text-box and enter valid data.
      # step "the user types \"#{head_count}\" into \"Head Count Text-Box\" on \"#{page}\" page"
      step "the user enters \"#{head_count}\" into \"Head Count Text-Box\" on \"#{page}\" page"
      #Locate the Live and Dressed weight text boxes and enter valid data.Scenario:
      step "the user enters \"#{live_weight}\" into \"Live Weight Text-Box\" on \"#{page}\" page"
      step "the user enters \"#{dressed_weight}\" into \"dressed weight text-box\" on \"#{page}\" page"
      #Locate the Add button and click on it.
      # step "the user clicks \"add button\" on \"#{page}\" page"
      step "the user clicks the \"add button\" button on \"DispositionReporting/EstablishmentReporting\" page"
    end
  else
    # Perform Edit/Delete / APHIS Link and Print link click
    check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    if check_record_present > 2
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
      (1..table_rows).each do |rows|
        sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
        head_count_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[4]"
        live_weight_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[5]"
        dressed_weight_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[6]"
        if (sub_class_value.downcase.eql? sub_class.downcase) && (head_count_value.to_i.eql? head_count.to_i) && (live_weight_value.to_i.eql? live_weight.to_i) && (dressed_weight_value.to_i.eql? dressed_weight.to_i)
          record_found = 'true'
          if action.downcase.eql? 'edit'
            edit_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[9]/input"
            click_web_element edit_obj
          else
            if action.downcase.eql? 'delete'
              del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[10]/input"
              click_web_element del_obj
              step 'the user dismisses browser pop-ups'
              # sleep 2
            else
              if action.downcase.eql? 'click on aphis link'
                aphis_link_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[8]/input"
                click_web_element aphis_link_obj
              else
                if action.downcase.eql? 'click on print condemnation certification link'
                  print_conf_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[11]/input"
                  click_web_element print_conf_obj
                else
                  if action.downcase.eql? 'expands'
                    expand_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[1]/input"
                    click_web_element expand_obj
                  end
                end
              end
            end
          end
          sleep 2
          break
        end
        checkpoint (record_found.downcase.eql? 'false'), "#{action} is Failed: Given Sub Class: #{sub_class} with Head Count: #{head_count}, Live Weight: #{live_weight} and Dressed Weight: #{dressed_weight} is not found in table"
      end
    else
      fail "Failed: Sub Class #{sub_class} is not found in table, there is no records in table"
    end
  end
end

And(/^the user "(.*)" New Disposition Record under sub class-"(.*)" with Tag number-"(.*)",Tag Type-"(.*)",Condition-"(.*)",Disposition-"(.*)" and KIS-"(.*)" if not present on "(.*)" page$/) do |action, sub_class, tag_number, tag_type, condition, disposition, kis, page|
  sleep 2
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_pvMeat']/descendant::td[contains(text(),'#{sub_class}')]/following::table[1]"
  tag_number_match = 'false'
  record_found = 'false'
  if action.downcase.eql? 'adds'
    check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    if check_record_present > 2
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      (1..table_rows).each do |rows|
        tag_number_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        if tag_number_value.downcase.eql? tag_number.downcase
          puts "New Disposition cannot be added as #{tag_number} Tag Number already present in table"
          tag_number_match = 'true'
          break
        end
      end
      # If there is records but sub class not added before then add new meat slaughter
      if tag_number_match.downcase.eql? 'false'
        # step "the user waits \"2\" seconds"
        add_disp_obj = 'xpath', "#{table_path}/descendant::span[contains(@id,'btnAddDispsoition')][1]"
        click_web_element add_disp_obj
        # step "the user waits \"2\" seconds"
        step "the user clicks on \"Add Disposition Record for Meat\" element on \"DispositionReporting/EstablishmentReporting\" page"
        # step "the user waits \"2\" seconds"
        # And the user selects "<string>" from "<string>" combo box on "<string>" page
        step "the user selects \"#{tag_type}\" from \"Tag Type\" combo box on \"DispositionReporting/EstablishmentReporting\" page"
        #Locate and enter a Tag Number.
        step "the user enters \"#{tag_number}\" into \"Tag Number\" on \"DispositionReporting/EstablishmentReporting\" page"
        #Locate the Condition drop down and select a condition.Scenario:
        step "the user selects \"#{condition}\" from \"Condition\" combo box on \"DispositionReporting/EstablishmentReporting\" page"
        # step "the user waits \"4\" seconds"
        #Locate and select Disposition from the Disposition drop down.Scenario:
        step "the user selects \"#{disposition}\" from \"Disposition\" combo box on \"DispositionReporting/EstablishmentReporting\" page"
        # step "the user waits \"2\" seconds"
        #Select the Positive KIS radio button.
        if kis.downcase.eql? 'nt'
          step "the user clicks on \"KIS No Test\" element on \"DispositionReporting/EstablishmentReporting\" page"
        end
        #Locate and click on the Continue button and verify all the required fields.
        step "the user clicks \"Add\" on \"DispositionReporting/EstablishmentReporting\" page"
        step "the user waits \"2\" seconds"

      end
    else
      # If no records in slaughter table add new meat slaughter
      click_web_element 'xpath', "#{table_path}/descendant::span[contains(@id,'btnAddDispsoition')][1]"
      step "the user waits \"2\" seconds"
      step "the user selects \"#{tag_type}\" from \"Tag Type\" on \"DispositionReporting/EstablishmentReporting\" page"
      #Locate and enter a Tag Number.
      step "the user types \"#{tag_number}\" into \"Tag Number\" on \"DispositionReporting/EstablishmentReporting\" page"
      #Locate the Condition drop down and select a condition.Scenario:
      step "the user selects \"#{condition}\" from \"Condition\" on \"DispositionReporting/EstablishmentReporting\" page"
      step "the user waits \"4\" seconds"
      #Locate and select Disposition from the Disposition drop down.Scenario:
      step "the user selects \"#{disposition}\" from \"Disposition\" on \"DispositionReporting/EstablishmentReporting\" page"
      step "the user waits \"2\" seconds"
      #Select the Positive KIS radio button.
      if kis.downcase.eql? 'nt'
        step "the user clicks \"KIS No Test\" on \"DispositionReporting/EstablishmentReporting\" page"
      end
      #Locate and click on the Continue button and verify all the required fields.
      step "the user clicks the \"Add\" button on \"DispositionReporting/EstablishmentReporting\" page"
      # step "the user waits \"2\" seconds"
    end
  else
    # Perform Edit/Delete / APHIS Link and Print link click
    check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    if check_record_present > 2
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
      (1..table_rows).each do |rows|
        tag_number_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
        tag_type_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
        condition_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[4]"
        disposition_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]"
        kis_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]"
        if (tag_number_value.downcase.eql? tag_number.downcase) && (tag_type_value.downcase.eql? tag_type.downcase) && (condition_value.downcase.eql? condition.downcase) && (disposition_value.downcase.eql? disposition.downcase) &&(kis_value.downcase.eql? kis_value.downcase)
          record_found = 'true'
          if action.downcase.eql? 'edit'
            edit_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[9]/input"
            click_web_element edit_obj
          else
            if action.downcase.eql? 'delete'
              del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[10]/input"
              click_web_element del_obj
              step 'the user dismisses browser pop-ups'
              sleep 2
            end
          end
          sleep 2
          break
        end
        checkpoint (record_found.downcase.eql? 'false'), "#{action} is Failed: Given Tag Number: #{tag_number} with Tag Type: #{tag_type}, Condition: #{condition} ,Disposition: #{disposition} and KIS: #{kis} is not found in table"
      end
    else
      fail "Failed: Tag Number #{tag_number} is not found in table, there is no records in table"
    end
  end
end

  And(/^the user delete Slaughter Record with if present$/) do
    table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00']"
    # Delete all slaughter record with given sub class in table
    check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    if check_record_present > 2
      table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
      (1..table_rows).each do |rows|
        # sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
        # if sub_class_value.downcase.eql? sub_class.downcase
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[10]/input"
          click_web_element del_obj
          step 'the user dismisses browser pop-ups'
          sleep 2
        # end
      end
    end
  end


And(/^the user delete Slaughter Record with "(.*)" sub-class if present$/) do |sub_class|
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter_ctl00']"
  # Delete all slaughter record with given sub class in table
  check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
  if check_record_present > 2
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      if sub_class_value.downcase.eql? sub_class.downcase
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[10]/input"
        click_web_element del_obj
        step 'the user dismisses browser pop-ups'
        sleep 2
      end
    end
  end
end

And(/^user dismisses questionnaire pop\-ups$/) do
  (1..10).each do
    begin
      if @browser.alert.exists?
        @browser.alert.accept
      end
      break
    rescue
      sleep 1
      nil
      next
    end
  end
end

And(/^the user deletes existing record if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_MeatSlaughterSummaryControl_rgMeatSlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/table/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow']//button"
      click_web_element del_obj
      ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_conf_obj
      sleep 4
    end
  end
end


And(/^user accept browser pop\-ups$/) do
  if @browser.alert.exists?
  @browser.alert.ok
  else
    puts 'No Pop Up to close or accept, all good'
  end
end

And(/^the user delete existing ratite record if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_RatiteSlaughterSummaryControl_rgMeatSlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/table/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow']"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/table/tbody/tr[@class='rgRow'][#{rows}]/td[10]/button"
      click_web_element del_obj
      ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_conf_obj
      sleep 7
    end
  end
end

And(/^the user deletes existing poultry record if any$/) do
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_PoultryClassSummaryControl_rgPoultrySlaughter']"
  check_record_present = get_elements_size 'xpath', "#{table_path}/table/tbody/tr/td"
  if check_record_present > 2
    # Delete all slaughter record with given sub class in table
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/table/tbody/tr"
    (1..table_rows).each do |rows|
      #sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[@class='rgRow'][#{rows}]/td[2]"
      #if sub_class_value.downcase.eql? sub_class.downcase
      del_obj = get_element_obj 'xpath', "#{table_path}/table/tbody/tr//button"
      click_web_element del_obj
      ok_conf_obj = get_element_obj 'xpath', ".//*[contains(text(),'OK')]"
      click_web_element ok_conf_obj
      sleep 4
    end
  end
end

And(/^the user verify if the establishment already have a no kill period$/) do
  check_record_present = get_elements_size 'xpath', ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_ucMessageBox_MessageList']/li/div[2]/span"
  if check_record_present > 1
    #Click on the No Kill Period from the left navigation.
    step "the user clicks on \"no kill period\" element on \"DispositionReporting/EstablishmentReporting\" page"
    # step "the user waits \"3\" seconds"
    #Select an Establishment to add the Ni Kill Period to.
    step "the user selects \"Pilgrims Pride - P843\" from \"establishment dropdown\" combo box on \"DispositionReporting/EstablishmentReporting\" page"
    #Select shift.
    step "the user selects \"Shift 1\" from \"shift dropdown\" combo box on \"DispositionReporting/EstablishmentReporting\" page"
    #Delete the No Kill Period to the Establishment.
    step "the user clicks on \"delete icon for added no kill period\" element on \"DispositionReporting/EstablishmentReporting\" page"
    step "the user dismisses browser pop-ups"
    #Locate and click on the Establishment Reporting from the Left nav.
    step "the user clicks on \"Establishment Reporting\" element on \"FSISDashBoard/Default\" page"
  else
    puts 'No kill Period has not yet been added to the selected Establishment'
    end
  end


And(/^the user sign out and close the browser$/) do
  step "the user clicks on \"sign out button\" element on \"DispositionReporting/EstablishmentReporting\" page"
  #@browser.close
end


And(/^the user print condemnation certificate for meat$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link'
  element1 = 'un select all link'
  element2 = 'cancel button iframe'
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector1 =(selector1.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector2 =(selector2.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector3 =(selector3.downcase.include? 'xpath') ? :xpath : :css

  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path1).click
  # step "the user waits \"3\" seconds"
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path2).click
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path3).click
end

And(/^the user switch to main tab$/) do
  # @session.browser.switch_to
  @browser.driver.switch_to
end

And(/^the user print disposition records for meat$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link for disposition record'
  element1 = 'un select all link for disposition record'
  element2 = 'sort column iframe for disposition record'
  element3 = 'cancel button iframe'
  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # xpath_element3 = @session.page_objects.web_element_xpath page, element3
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element3).click

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector1 =(selector1.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector2 =(selector2.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element3, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  selector3 =(selector3.downcase.include? 'xpath') ? :xpath : :css

  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path).click
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path1).click
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path2).click
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path3).click

end

And(/^the user print condemnation certificate for ratite$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link for ratite record'
  element1 = 'un select all link for ratite record'
  element2 = 'cancel button iframe for ratite record'
  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector1 =(selector1.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector2 =(selector2.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector3 =(selector3.downcase.include? 'xpath') ? :xpath : :css

  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path1).click
  # step "the user waits \"3\" seconds"
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path2).click
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path3).click

end

And(/^the user print disposition records for raite$/) do
  page_name = 'DispositionReporting/EstablishmentReporting'
  element = 'select all link for disposition record for ratite'
  element1 = 'un select all link for disposition record for ratite'
  element2 = 'sort column iframe for disposition record for ratite'
  element3 = 'cancel button iframe for ratite record'
  # xpath_element = @session.page_objects.web_element_xpath page, element
  # xpath_element1 = @session.page_objects.web_element_xpath page, element1
  # xpath_element2 = @session.page_objects.web_element_xpath page, element2
  # xpath_element3 = @session.page_objects.web_element_xpath page, element3
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element1).click
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element2).click
  # step "the user waits \"3\" seconds"
  # @session.browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,xpath_element3).click
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector, element_path = get_element_target(element, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  if selector.nil? || element_path.nil?
    fail("Element Xpath is not found for #{element} in #{page_name} page objects File")
  end
  selector =(selector.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector1, element_path1 = get_element_target(element1, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  if selector1.nil? || element_path1.nil?
    fail("Element Xpath is not found for #{element1} in #{page_name} page objects File")
  end
  selector1 =(selector1.downcase.include? 'xpath') ? :xpath : :css
  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector2, element_path2 = get_element_target(element2, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  if selector2.nil? || element_path2.nil?
    fail("Element Xpath is not found for #{element2} in #{page_name} page objects File")
  end
  selector2 =(selector2.downcase.include? 'xpath') ? :xpath : :css

  # get the XPATH or CSS from page object file, Raises Error if not found
  begin
    selector3, element_path3 = get_element_target(element3, page_name).split('^^')
  rescue
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  if selector3.nil? || element_path3.nil?
    fail("Element Xpath is not found for #{element3} in #{page_name} page objects File")
  end
  selector3 =(selector3.downcase.include? 'xpath') ? :xpath : :css

  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path).click
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path1).click
  # step "the user waits \"3\" seconds"
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path2).click
  @browser.iframe(:xpath,".//*[@name='CondemnParamPage']").element(:xpath,element_path3).click

end

# And (/^the user types in to an empty text box or upload "([^"]*)" into "([^"]*)" on "([^"]*)" page$/) do |value, element, page|
#   types_into_element page, element, value
# end


And(/^the user deletes any existing added documents for a country$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_UploadDocuments_rgUploadDocuments_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[1]"
      new_document = "Automation_Test_Doc.pdf"
      if delete_icons_row.downcase.eql? new_document.downcase
        record_found = true
      del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[5]/input"
      click_web_element del_obj
      step "user accept browser pop-ups"
      # sleep 4r7y,o
    end
    end
    checkpoint (record_found.eql? true), "No document found in table that matches the document to be deleted"
    end
  end

And(/^the user delete all existing collection$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radRuleCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      new_collection = "Automation_Test_Date112"
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[7]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^the user click on the added rule collection to be edited$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radRuleCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[2]"
      new_collection = "Automation_Test_Date112"
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[6]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user click on the added validator record to be edited$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radValidatorCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Date112 Automation Test Description data."
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[8]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user delete validator records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radValidatorCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Date112 Automation Test Description data."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[11]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end

And(/^user refresh the browser$/) do
    @browser.refresh
end

And(/^the user perform the enter key command$/) do
  @browser.send_keys :enter
end

And(/^the user click on the added instruction to be edited$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radInstructionCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      sub_class_value = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      puts 'the newly added instruction is ' +sub_class_value
      new_collection = "Automation_Test_Instruction101 Automation Test Description data11."
      if sub_class_value.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[8]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be edited"
  end
end

And(/^the user delete the added instruction records created by test$/) do
  record_found = false
  table_path = ".//*[@id='ctl00_ctl00_ContentPlaceHolder1_ContentPlaceHolder1_radInstructionCollections_ctl00']"
  check_record_present = get_elements_size 'xpath', "#{table_path}//tbody/tr/td"
  if check_record_present > 2
    #check_record_present = get_elements_size 'xpath', "#{table_path}/tbody/tr/td"
    table_rows = get_elements_size 'xpath', "#{table_path}/tbody/tr"
    (1..table_rows).each do |rows|
      delete_icons_row = get_element_text 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[3]"
      new_collection = "Automation_Test_Instruction101 Automation Test Description data11."
      if delete_icons_row.downcase.eql? new_collection.downcase
        record_found = true
        del_obj = get_element_obj 'xpath', "#{table_path}/tbody/tr[#{rows}]/td[11]/input"
        click_web_element del_obj
        step "user accept browser pop-ups"
        sleep 4
        break
      end
    end
    checkpoint (record_found.eql? true), "No Records found in table that matches the record to be deleted"
  end
end