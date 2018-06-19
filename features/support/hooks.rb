# For more information on writing hooks please read the cuke wiki
# https://github.com/cucumber/cucumber/wiki/Hooks
require 'yaml'
require 'watir'
require 'selenium-webdriver'

EXEC_ID = Time.now.strftime('%m%d%Y%H%M%S')
RESULTS_DIR = "#{Dir.pwd}/features/results/#{EXEC_ID}"

SCREEN_SHOT = false

if ENV['TEST_ENV'].downcase.include? 'score'
  TIMEOUT = 40
  @@IMPLICIT_WAIT = 30
else
  TIMEOUT = 60
  @@IMPLICIT_WAIT = 60
end
# puts "Executing on browser #{Configuration.browser.downcase}"
BROWSER_NAME = Configuration.browser.downcase

#********************To open Browser at one time and run all scenario*********************

selenium_driver = Selenium::WebDriver::Remote::Http::Default.new

selenium_driver.read_timeout = TIMEOUT
selenium_driver.open_timeout = TIMEOUT
# statement Depreciated
# selenium_driver.timeout = TIMEOUT # seconds – default is 30

@@browser = Watir::Browser.new BROWSER_NAME.to_sym, :http_client => selenium_driver

@@browser.driver.manage.timeouts.implicit_wait= @@IMPLICIT_WAIT
# @browser = get_browser
@@browser.driver.manage.window.maximize

Before do
  @browser = @@browser
end


# # == Open browser on each scenario and then close browser
# def get_browser
#   http_driver = Selenium::WebDriver::Remote::Http::Default.new
#   http_driver.read_timeout = TIMEOUT
#   http_driver.open_timeout = TIMEOUT
#   # client.timeout = TIMEOUT # seconds – default is 30
#   @browser = Watir::Browser.new BROWSER_NAME.to_sym, :http_client => http_driver
#   # @browser.driver.manage.window.maximize
#   @browser.driver.manage.timeouts.implicit_wait=30
#   # screen_width = @browser.execute_script("return screen.width;")
#   # screen_height = @browser.execute_script("return screen.height;")
#   # @browser.driver.manage.window.resize_to(screen_width,screen_height)
#   @browser
# end
#
# Before do
#   @browser = get_browser
#   @browser.driver.manage.window.maximize
# # end
#
# After do
#   @browser.close
# end


# Before ('@mobile') do
#   @browser = get_browser
# 	if DRIVER == "chrome"
#     @browser.window.resize_to(640,960)
#   else
#     @browser.window.maximize
#   end
# end
#
# Before ('@tablet') do
#   @browser = get_browser
# 	if DRIVER == "chrome"
#     @browser.window.resize_to(1024,768)
#   else
#     @browser.window.maximize
#   end
# end

Before do |scenario|
  # puts "Executing Test on #{Configuration.host}"
  SCENARIO_ID = (scenario.name).delete('^0-9')
  if SCENARIO_ID.empty?
    SCENARIO_ID = scenario.name[0, 15]
  end
  SCREENSHOT_NAME = "/#{scenario.__id__}"
end

After do |scenario|
  if scenario.failed?
    clear_alert
    capture_screenshot
  end
end

def clear_alert
  if @browser.alert.exists?
    @browser.driver.switch_to.alert.accept
  end
end

def capture_screenshot
  if SCREEN_SHOT.eql? true
    clear_alert
    directory_name="#{RESULTS_DIR}/#{SCENARIO_ID}"
    unless File.directory?(directory_name)
      FileUtils.mkdir_p(directory_name)
    end
    target_file = directory_name+SCREENSHOT_NAME+"_#{get_timestamp}.png"
    if @browser && @browser.screenshot
      @browser.screenshot.save(target_file)
      Dir.chdir(directory_name) do
        embed(target_file, SCREENSHOT_NAME)
      end
    end
  end
end