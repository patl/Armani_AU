Feature: CLP
  Background:
    Given open the site
    And close the newsletter pop-up

    Scenario: Make Up
      `zThen User do mousover to Make UP
      And verify that submenu is displayed
      Then user press on Make Up L1
      When makeup is displayed verify that submenu with items is displayed
      Then user checked elements on the Make up LP

