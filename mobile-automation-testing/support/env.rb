# frozen_string_literal: true


require 'appium_lib'
require 'cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'faker'
require 'rspec'


time  = Time.new
time = time.strftime('%d-%m-%Y')
$logger = Logger.new("./exec-logs/exec-logs-#{time}.log")



def load_appium_configuration()
  dir = "#{Dir.pwd}/config/caps/android/appium.txt"
  Appium.load_appium_txt file: File.expand_path(dir, __FILE__), verbose: true
end

caps = load_appium_configuration
caps[:appium_lib][:export_session] = true

Appium::Driver.new(caps, true)
Appium.promote_appium_methods Object