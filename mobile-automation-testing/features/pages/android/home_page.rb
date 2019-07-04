class HomePage < BasePage
  attr_reader :add_contact_button

  def initialize
    @add_contact_button = 'com.example.android.contactmanager:id/addContactButton'
  end

  def main_screen?
    element_exists('id', add_contact_button)
  end

  def tap_add_contact
    tap_on('id', add_contact_button)
  end
end