
require "Capybara"
require "Capybara/cucumber"
require "rspec"
require "selenium-webdriver"

include RSpec::Matchers

$timeout = 50
Capybara.configure do |capybara|

  Capybara.register_driver :selenium do |app|
  Selenium::WebDriver::Chrome.driver_path="/Users/cinthiabarbosa/Downloads/chromedriver"
  Capybara::Selenium::Driver.new(app, browser: :chrome)
  end
  Capybara.default_driver = :selenium #set the browser you want to run the test on
  capybara.run_server = false
  capybara.app_host ="https://auto1.com/en/our-cars"

 RSpec.configure do |config|
  config.include Capybara::DSL
end
end
