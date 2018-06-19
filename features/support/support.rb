
Before do |scenario|
  # puts ("begin #{scenario.feature.name}")
  puts ("Started executing Scenario : #{scenario.name}")
  if scenario.failed?
    # scenario_id=scenario.name.split(" ")
    # result_dir= "C:/test_results/"+"#{scenario_id[0]}"+"#{get_timestamp.to_s}"+".png"
    # @driver.save_screenshot(result_dir)
    #Do something if scenario fails.
    if Configuration.host.downcase.include? 'score'
      step 'the user navigates to /score on browser'
      step "the user clicks the link with text \"Logout\""
    else
      step "the user clicks on \"sign out button\" element on \"DispositionReporting/EstablishmentReporting\" page"
      @browser.close
    end

  end
  # @driver.action.send_keys(:N)
  # The +scenario+ argument is optional, but if you use it, you can get the title,
  # description, or name (title + description) of the scenario that is about to be
  # executed.

  # @@world = self
end

After do |scenario|
  # Do something after each scenario.
  # The +scenario+ argument is optional, but
  # if you use it, you can inspect status with
  # the #failed?, #passed? and #exception methods.
  # puts ("End of #{scenario.feature.name}")
  puts ("Finished executing Scenario : #{scenario.name}")
  # raise @err if @err != nil
  if scenario.failed?
    # scenario_id=scenario.name.split(" ")
    # result_dir= "C:/test_results/"+"#{scenario_id[0]}"+"#{get_timestamp.to_s}"+".png"
    # @driver.save_screenshot(result_dir)
    #Do something if scenario fails.
    if Configuration.host.downcase.include? 'score'
      step 'the user navigates to /score on browser'
      step "the user clicks the link with text \"Logout\""
    else
      step "the user clicks on \"sign out button\" element on \"DispositionReporting/EstablishmentReporting\" page"
      #@browser.close
    end
  end
  end