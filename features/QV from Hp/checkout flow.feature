Feature: QV
  Background:
    Given open the site
    And close the newsletter pop-up

    Scenario: QV from HP
    When user press on QV
      Then he see QV pop-up
      And verify elements on QV popup
      Then user changed qnty/color
      And press on Add to cart button
      Then he should see this product in minicart
      When user do mouseover on minicart
      Then he should see the Minicart pop-up with added product

      Scenario: QV - navigate to My cart page - as guest user - checkout
        When user press on QV
        Then he see QV pop-up
        And verify elements on QV popup
        Then user changed qnty/color
        And press on Add to cart button
        Then user verify the next popup after QV
        And press on go to my cart button
        When user is on My cart page
        Then verify that added product is disaplyed
        Then user add Gift box to cart
        And verify that Gift Box is addd to Order summary section
        And press on secure checkout button
        Then verify that 1checkout method step is disaplyed
        And press on proceed to checkout button as guest
        When user is on 2Select your samples step
        Then he select first sample by pressing on Add button
        And verify that text is change from Add to remove
        And verify that Sample item is added to your shopping cart
        Then user press on Continue to contact details
        When user is on 3Contact detail step
        Then he fill shipping address First name
        And shipping address Last name
        And Company name
        And Street address
        And Apt
        And select shipping state
        And entered shipping city
        And Post code
        And phone number
        And fill shipping email address
        Then he press on OCntinue to shipping and payment button
        When he is on 4shipping and payment step
       












