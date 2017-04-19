Feature: HP
  Background:
   Given open the site
    And close the newsletter pop-up

    Scenario: Verify that element are present on HP
      When the HP is opened verify that header is displayed
      Then verify that menu is displayed
      Then verify that carousel is present
      Then verify that Products are present
      And check that content slots are displayed
