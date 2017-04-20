When(/^user press on QV$/) do
  @browser.element(:class, "b-shop_now-link").click
end

Then(/^he see QV pop\-up$/) do
  @browser.element(:class, "quickview").wait_until_present.visible?
end

And(/^verify elements on QV popup$/) do
  @browser.element(:xpath, ".//*[@id='pdp_section_topcontent']/div[2]/div[1]/div[1]/h3").visible?
  @productname= @browser.element(:xpath, ".//*[@id='pdp_section_topcontent']/div[2]/div[1]/div[1]/h3").text
  end

Then(/^user changed qnty\/color$/) do
  @browser.element(:xpath, "//img[@alt='2']").wait_until_present.click
  #@browser.element(:xpath, "(//select[@name='quantity'])[2]").click
  @browser.element(:xpath, "(//img[@alt='4'])[2]").wait_until_present.click
end

And(/^press on Add to cart button$/) do
  @browser.element(:xpath, "//button[@value='Add to Bag']").wait_until_present.click
end

Then(/^he should see this product in minicart$/) do
  @browser.element(:class, "addedtocart_dialog").wait_until_present.visible?
  @browser.element(:class, "close_dialog_button").wait_until_present.click
  
end

When(/^user do mouseover on minicart$/) do
  @browser.element(:id, "minicart").hover
end

Then(/^he should see the Minicart pop\-up with added product$/) do
  @browser.element(:class, "mini_cart_with_products").wait_until_present.visible?
  @browser.element(:xpath, ".//*[@id='minicart']/form/div/div/div[2]/div/ul/li/div[2]/div[1]/div[1]/h3/a").text == @productname
  @browser.element(:link, "Secure Checkout".upcase).wait_until_present.click
end

Then(/^user verify the next popup after QV$/) do
  @browser.element(:class, "addedtocart_dialog").wait_until_present.visible?
end

And(/^press on go to my cart button$/) do
  @browser.element(:class, "addedtocart_popup_link").wait_until_present.click
end

When(/^user is on My cart page$/) do
  @browser.element(:class, "cart_title").text.include? 'Your shopping cart'.upcase
end

Then(/^verify that added product is disaplyed$/) do
  @browser.element(:xpath, ".//*[@id='cart_table']/tbody/tr/td[2]/div[1]/div[1]/a").text == @productname
end