Feature: Add Contacts

  As an user
  I want to save contacts in my app
  So I am able to access them when it is needed

@android @ui
  Scenario: Access page to fill new contact information
    Given I am on the Contact Manager app
    When I click to add a new contact
    Then I should access the page to fill new contact information

  Scenario: Add a new contact
    Given I am on the Contact Manager app
    When I fill all required fields for a new contact
    Then I should be able to save successfully