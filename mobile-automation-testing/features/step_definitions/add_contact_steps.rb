Given(/^I am on the Contact Manager app$/) do
  @home_page = HomePage.new
  @home_page.main_screen?
end

When(/^I click to add a new contact$/) do
  @home_page.tap_add_contact
end

Then(/^I should access the page to fill new contact information$/) do
  @add_contact_page = AddContactPage.new
  @add_contact_page.screen_loaded?
end

When(/^I fill all required fields for a new contact$/) do
  @home_page.tap_add_contact
  @add_contact_page = AddContactPage.new
  @add_contact_page.screen_loaded?
  @add_contact_page.enter_name
  @add_contact_page.enter_phone
end

Then(/^I should be able to save successfully$/) do
  @add_contact_page.tap_save_contact
end