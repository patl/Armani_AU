Then(/^User do mousover to Make UP$/) do
  @browser.element(:class, "AXE_MAKE_UP").hover
  @browser.element(:class, "level_2_list").wait_until_present == true
end

And(/^verify that submenu is displayed$/) do
  @browser.element(:class, "dropdown_wrapper").present? ==true
end

Then(/^user press on Make Up L1$/) do
  @browser.element(:class, "AXE_MAKE_UP").click
end

When(/^makeup is displayed verify that submenu with items is displayed$/) do
  @browser.element(:class, "secondary_navigation_sticky_wrap").present? == true
end

Then(/^user checked elements on the Make up LP$/) do
  pending
end