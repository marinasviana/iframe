require 'capybara'
require 'capybara/cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'site_prism'

Capybara.register_driver :selenium do |app|
    Capybara::Selenium::Driver.new(
        app,
        browser: :chrome,
        :desired_capabilities => Selenium::WebDriver::Remote::Capabilities.chrome(
            'chromeOptions' => {
            'args' => ['--disable-infobars', 'window-size=1600,1024']
            }
        )
    )
end

Capybara.configure do |config|
    config.default_driver = :selenium
    config.default_max_wait_time = 30
end