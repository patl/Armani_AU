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
  @browser.element(:xpath, "(//img[@alt='5'])[2]").wait_until_present.click
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

Then(/^user add Gift box to cart$/) do
  @browser.element(:class, 'dwfrm_cart_isGift').click
end

And(/^verify that Gift Box is addd to Order summary section$/) do

end

And(/^press on secure checkout button$/) do
  @browser.element(:xpath, ".//*[@id='cart-page']/body/div[3]/div/div[5]/div/div/form/fieldset/button").click
end

Then(/^verify that 1checkout method step is disaplyed$/) do

end

And(/^press on proceed to checkout button as guest$/) do
  @browser.element(:name,"dwfrm_login_unregistered").click
end

Then(/^he fill shipping address First name$/) do
  @browser.element(:id, "dwfrm_singleshipping_shippingAddress_addressFields_firstName").send_keys (@name1)
end

And(/^shipping address Last name$/) do
  @browser.element(:id, "dwfrm_singleshipping_shippingAddress_addressFields_lastName").send_keys (@name2)
end

And(/^Company name$/) do
  @browser.element(:id, "dwfrm_singleshipping_shippingAddress_addressFields_companyName").send_keys ('Company Name')
end

And(/^Street address$/) do
  @browser.element(:id, "dwfrm_singleshipping_shippingAddress_addressFields_address1").send_keys "16U Mahony Rd"
end


And(/^select shipping state$/) do
  @browser.element(:id, "dwfrm_singleshipping_shippingAddress_addressFields_states_stateSelectBoxItArrowContainer").click
  @browser.element(:link_text, "NSW").click
end

And(/^entered shipping city$/) do
  @browser.element(:id, "dwfrm_singleshipping_shippingAddress_addressFields_city").send_keys "Constitution Hill"
end

And(/^Post code$/) do
  @browser.element(:id, "dwfrm_singleshipping_shippingAddress_addressFields_zip").send_keys "2145"
end

And(/^phone number$/) do
  @browser.element(:id, "dwfrm_singleshipping_shippingAddress_addressFields_phone").send_keys "0999999999"
end

And(/^fill shipping email address$/) do
  @browser.element(:xpath, "//div[2]/div[3]/div/div/div/input").send_keys "review@review.com"
end

Then(/^he press on OCntinue to shipping and payment button$/) do
  @browser.element(:class, "section_submit_button").click
end

When(/^he is on 4shipping and payment step$/) do
  @browser.element(:id, "dwfrm_billing_paymentMethods_creditCard_owner").send_keys "CC name"
  @browser.element(:id, "dwfrm_billing_paymentMethods_creditCard_number").send_keys "4111111111111111"
  @browser.element(:id, "dwfrm_billing_paymentMethods_creditCard_cvn").send_keys "123"
  @browser.element(:id, "dwfrm_billing_paymentMethods_creditCard_typeSelectBoxItArrowContainer").click
  @browser.element(:xpath, "html/body/div[3]/div/div[1]/form/div[1]/div[2]/div[1]/div/div[4]/div[2]/div[3]/div/div/div/fieldset/div[1]/div/fieldset/div[2]/span/ul/li[2]/a").wait_until_present.click
  @browser.element(:id, "dwfrm_billing_paymentMethods_creditCard_monthSelectBoxItArrowContainer").click
  @browser.element(:xpath, "html/body/div[3]/div/div[1]/form/div[1]/div[2]/div[1]/div/div[4]/div[2]/div[3]/div/div/div/fieldset/div[1]/div/fieldset/div[4]/div[1]/span/ul/li[2]/a").wait_until_present.click
  @browser.element(:id, "dwfrm_billing_paymentMethods_creditCard_yearSelectBoxItArrowContainer").click
  @browser.element(:xpath, "html/body/div[3]/div/div[1]/form/div[1]/div[2]/div[1]/div/div[4]/div[2]/div[3]/div/div/div/fieldset/div[1]/div/fieldset/div[4]/div[2]/span/ul/li[3]/a").wait_until_present.click
@browser.element(:class, "section_submit_button").click
  @browser.element(:xpath, ".//*[@id='js_checkout_app']/div[1]/div[2]/div[1]/div/div[5]/div[2]/div[1]/div/div/div[7]/div/label").click
  @browser.element(:class, "section_submit_button").click
end