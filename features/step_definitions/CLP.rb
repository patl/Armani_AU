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
  @browser.element(:class, "header_image").visible?
  @browser.element(:id, "F1_MAKE_UP_FACE-1").visible?
  @browser.element(:class, "view_btn").visible?
  @browser.element(:id, "F1_MAKE_UP_LIPS-1").visible?
  @browser.element(:id, "F1_MAKE_UP_EYE-1").visible?
  @browser.element(:id, "F1_MAKE_UP_ACCESSORIES-1").visible?
  @browser.element(:class, "push_image").visible?
  @browser.element(:class, "iconic_product_container") .visible?
  @browser.element(:class, "mozaic_push_content").visible?
  @browser.element(:id,"F1_MAKE_UP_COLLECTIONS-1").visible?
  @browser.element(:class, "bottom_push").visible?
end