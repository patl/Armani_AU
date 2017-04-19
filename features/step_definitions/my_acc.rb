When(/^user do mouseover on My account link form header$/) do
  @browser.element(:link_text, 'My Account'.upcase).hover
end

Then(/^he should see the Sign In pop\-up$/) do
  @browser.element(:id, "my_account_slot").present? ==true
end

And(/^verify that Fb button is displayed$/) do
  @browser.element(:css,"#gigyaLoginContainerLogin_p0 > tbody > tr > td > table > tbody > tr > td > center > div[alt='Facebook'] > div").present? == true
end

And(/^verify that New customer section is displayed$/) do
  pending
end

Then(/^press on Create an account button$/) do
  pending
end

And(/^Verify that Create My Account page is displayed$/) do
  pending
end

And(/^Verify that Fb icon is displayed$/) do
  pending
end

Then(/^Fill greeting Mr or Mrs or Miss$/) do
  pending
  
end