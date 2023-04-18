require "rubygems"
require "selenium-webdriver"
require "capybara/cucumber"
require "webdrivers"
require "rspec"
require "site_prism"
# require "fileutils"

require_relative "../pages/page_helper.rb" #require o arquivo pagehelper
require_relative "screen_shot.rb"

# include Capybara::DSL
World(Capybara::DSL) #Define globais que podem ser acessados de qualquer parte do programa
World(Capybara::RSpecMatchers)
World(Pages)
World(Screenshot)

AMBIENTE = ENV["AMBIENTE"] #seta o ambiente para o arquivo yml
BROWSER = ENV["BROWSER"]
CONFIG = YAML.load_file(File.dirname(__FILE__) + "/ambientes/#{AMBIENTE}.yml") ## Le os arquivos de ambientes da pasta /ambientes e joga na var CONFIG

Capybara.register_driver :selenium do |app|
  if BROWSER.eql?("chrome")
    browser_options = Selenium::WebDriver::Chrome::Options.new(args: ["--window-size=1920,1920"])
    Capybara::Selenium::Driver.new(app, :browser => :chrome, options: browser_options)
  elsif BROWSER.eql?("chrome_headless")
    browser_options = Selenium::WebDriver::Chrome::Options.new(args: %w[headless no-sandbox disable-gpu])
    Capybara::Selenium::Driver.new(app, :browser => :chrome, options: browser_options)
  elsif BROWSER.eql?("firefox")
    Capybara::Selenium::Driver.new(app, :browser => :firefox, :marionette => true)
  elsif BROWSER.eql?("firefox_headless")
    browser_options = Selenium::WebDriver::Firefox::Options.new(args: ["--headless"])
    Capybara::Selenium::Driver.new(app, :browser => :firefox, options: browser_options)
  elsif BROWSER.eql?("ie")
    Capybara::Selenium::Driver.new(app, :browser => :internet_explorer)
  elsif BROWSER.eql?("safari")
    Capybara::Selenium::Driver.new(app, :browser => :safari)
    options = { js_errors: false }
  elsif BROWSER.eql?("poltergeist")
    Capybara::Poltergeist::Driver.new(app, options)
  end
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.app_host = CONFIG["url_home"] ##seta para url base a variavel url_home lida na variavel CONFIG
  config.default_max_wait_time = 30
  config.default_selector = :css
end

# Capybara.page.driver.browser.manage.window.resize_to(1280,1024)
