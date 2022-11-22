require 'capybara/cucumber'
require 'selenium-webdriver'
require 'capybara/rspec'
require 'rest_client'
require 'json'
require 'pry'
# require 'capybara-screenshot/cucumber'
require 'capybara-screenshot/rspec'

Capybara.register_driver :chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument("--window-size=1024,768")

  Capybara::Selenium::Driver.new(app,
                                 browser: :chrome,
                                 options: options
  )
end

Capybara.default_driver = :chrome
Capybara.default_selector = :css
Capybara.default_max_wait_time = 10


