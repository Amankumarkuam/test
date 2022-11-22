
Then(/^I choose the voluntary information option "([^"]*)"$/) do |option|
  @page.summary_page.select_voluntary_optiion(option)
end

Then(/^I accept the terms and conditions$/) do
  @page.summary_page.accept_terms
end

Then(/^I click on the button complete booking$/) do
  @page.summary_page.click_complete_booking
end

Then(/^I validate booking confirmation page$/) do
  @page.summary_page.validate_booking_confimation
end
