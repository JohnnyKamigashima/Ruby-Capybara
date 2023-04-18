require 'rubygems'
require 'selenium-webdriver'
require "capybara/cucumber"
require 'webdrivers'
require 'rspec'
require 'site_prism'
require_relative '../pages/page_helper.rb' #require o arquivo pagehelper
require_relative 'screen_shot.rb'

World(Capybara::DSL) #Define globais que podem ser acessados de qualquer parte do programa
World(Capybara::RSpecMatchers)
World(Pages)
World(Screenshot)

HEADLESS=ENV['HEADLESS']
ENVIRONMENT_TYPE=ENV['ENVIRONMENT_TYPE'] #seta o ambiente para o arquivo yml

CONFIG = YAML.load_file(File.dirname(__FILE__) +  "/data/#{ENVIRONMENT_TYPE}.yml")

Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, browser: :safari)
end

Capybara.configure do |config|
  config.default_driver = :selenium
  config.default_max_wait_time = 40
  config.default_selector = :css
  config.app_host = CONFIG['url_home']
end

Capybara.page.driver.browser.manage.window.resize_to(1280,1024)