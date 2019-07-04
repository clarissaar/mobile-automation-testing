require 'appium_lib'
require 'appium_lib/driver'
require 'minitest/assertions'
require 'minitest/autorun'

class BasePage < Appium::Driver

  def initialize(*opts)
    super
  end

  def query(type, element)
    $driver.find_element(:"#{type}", element.to_s)
  end

  def tap_on(type, element)
    query(type, element).click
  end

  def element_exists(type, element)
    elem = query(type, element)
    elem.displayed?
  end

  def base_page
    @base_page ||= BasePage.new
  end
end
