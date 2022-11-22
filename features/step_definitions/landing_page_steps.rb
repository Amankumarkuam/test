Given(/^I open the url "([^"]*)"$/) do |url|
  visit url
end

Then(/^I should see the page text "([^"]*)"$/) do |page_text|
  @page.landing_page.validate_homepage_text(page_text)

  #Handling alert window
  begin
    page.accept_confirm { click_button "Save" }
  rescue
    #ignored
  end
end

Then(/^I will select average salary upto "([^"]*)"$/) do |arg|
  @page.landing_page.select_element(arg)
end

Then(/^I will choose the package starter package "([^"]*)"$/) do |option|
  @page.landing_page.select_package(option)
end

Then(/^I will choose the addon option "([^"]*)"$/) do |option|
  @page.landing_page.select_addon(option)
end

Then(/^I click on next button$/) do
  @page.landing_page.select_next
end
