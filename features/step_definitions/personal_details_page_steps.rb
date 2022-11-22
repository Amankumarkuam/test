
Then(/^I should see the company page text "([^"]*)"$/) do |page_text|
  @page.landing_page.validate_homepage_text(page_text)
end

Then(/^I enter the company name "([^"]*)"$/) do |company_name|
  @page.personal_form_page.select_company(company_name)
end

Then(/^I select the solutation "([^"]*)"$/) do |solutation|
  @page.personal_form_page.select_solutation(solutation)
end

Then(/^I select the firstname "([^"]*)"$/) do |firstname|
  @page.personal_form_page.enter_first_name(firstname)
end

Then(/^I select the lastname "([^"]*)"$/) do |lastname|
  @page.personal_form_page.enter_last_name(lastname)
end

#auto completion need to be implemented
Then(/^I select the address "([^"]*)"$/) do |address|
  fill_in 'address', with: address
end

Then(/^I select the vatno "([^"]*)"$/) do |vatno|
  @page.personal_form_page.enter_vatnumber(vatno)
end

Then(/^I select the email "([^"]*)"$/) do |email|
  @page.personal_form_page.enter_email(email)
end

Then(/^I select the tel "([^"]*)"$/) do |tel|
  @page.personal_form_page.enter_telephone(tel)
end

Then(/^I click on next button second page$/) do
  @page.landing_page.select_next
end

Then(/^I should see the summary page text "([^"]*)"$/) do |page_text|
  @page.landing_page.validate_homepage_text(page_text)
end

Then(/^I click on Enter address manually$/) do
  @page.personal_form_page.click_manual_address
end

Then(/^I enter the street "([^"]*)"$/) do |street|
  @page.personal_form_page.enter_streat(street)
end

Then(/^I enter the streetNo "([^"]*)"$/) do |streetNo|
  @page.personal_form_page.enter_streat_number(streetNo)
end

Then(/^I enter the city "([^"]*)"$/) do |city|
  @page.personal_form_page.enter_city(city)
end

Then(/^I enter the zip "([^"]*)"$/) do |zip|
  @page.personal_form_page.enter_zip(zip)
end

Then(/^I enter the area "([^"]*)"$/) do |area|
  @page.personal_form_page.enter_area(area)
end

Then(/^I select the country "([^"]*)"$/) do |country|
  @page.personal_form_page.select_country(country)
end
