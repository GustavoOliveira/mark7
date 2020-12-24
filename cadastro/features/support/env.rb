require 'capybara'
require 'capybara/cucumber'

Capybara.configure do |config|
    config.default_driver =:selenium_chrome
    config.app_host = 'http://localhost:5000'
end