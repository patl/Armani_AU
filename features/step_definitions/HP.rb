When(/^the HP is opened verify that header is displayed$/) do
  @browser.element(:class, "content").visible?
end

Then(/^verify that menu is displayed$/) do
  @browser.element(:css, "div.navigation.js_menu_initialized > div.full-width").visible?
end

Then(/^verify that carousel is present$/) do
  @browser.element(:class, "image_hold").visible?
end

Then(/^verify that Products are present$/) do
  @browser.element(:class, "product_tile_wrapper").visible?
end

And(/^check that content slots are displayed$/) do
  @browser.element(:class, "hp_slot_3").visible?
  @browser.element(:class, "newsletter_holder").visible?
  @browser.element(:class, "iconic_product_holder").visible?
  @browser.element(:id, "olapic_specific_widget").visible?
  @browser.element(:class, "hp_slot_6").visible?
  @browser.element(:class, "hp_slot_7").visible?
  @browser.element(:class, "hp_slot_8").visible?
  @browser.element(:class, "hp_slot_9").visible?
  @browser.element(:class, "footer").visible?
end