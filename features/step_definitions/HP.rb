When(/^the HP is opened verify that header is displayed$/) do
  @browser.element(:class, "content").present? == true
end

Then(/^verify that menu is displayed$/) do
  @browser.element(:css, "div.navigation.js_menu_initialized > div.full-width").present? == true
end

Then(/^verify that carousel is present$/) do
  @browser.element(:class, "product_category").present? == true
end

Then(/^verify that Products are present$/) do
  @browser.element(:class, "product_tile_wrapper").present? == true
end

And(/^check that content slots are displayed$/) do
  @browser.element(:class, "hp_slot_3").present? == true
  @browser.element(:class, "newsletter_holder").present? == true
  @browser.element(:class, "iconic_product_holder").present? == true
  @browser.element(:id, "olapic_specific_widget").present? == true
  @browser.element(:class, "hp_slot_6").present? == true
  @browser.element(:class, "hp_slot_7").present? == true
  @browser.element(:class, "hp_slot_8").present? == true
  @browser.element(:class, "hp_slot_9").present? == true
  @browser.element(:class, "footer").present? == true
end