require './features/pages/base_page'

class AddContactPage < BasePage
  attr_reader :phone_text_field
  attr_reader :name_text_field
  attr_reader :contact_save_button

  def initialize
    @phone_text_field = 'com.example.android.contactmanager:id/contactPhoneEditText'
    @name_text_field = 'com.example.android.contactmanager:id/contactNameEditText'
    @contact_save_button = 'com.example.android.contactmanager:id/contactSaveButton'
  end

  def screen_loaded?
    element_exists('id', phone_text_field)
  end

  def enter_name
    find_element(:id, name_text_field).send_keys("Anne")
  end

  def enter_phone
    find_element(:id, phone_text_field).send_keys("12345678")
  end

  def tap_save_contact
    tap_on('id', contact_save_button)
  end
end

