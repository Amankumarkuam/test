Feature: Booking Process

  Scenario: Validate the public api by creating user
    Given I create and validate the new user with name "Amanuser122", email "amanuser122@test.com"
    Then I will update the created username with "Amanuser122", and email with "amanuser122@test.com"
    Then I delete and validate the created new user

  Scenario: Validate Booking Process Confirmation
    Given I open the url "https://booking.test.env.taxdoo.com/"
    Then I should see the page text "Booking"
    When I will select average salary upto "1000"
    Then I will choose the package starter package "FREE"
    Then I will choose the addon option "OSS Export"
    Then I click on next button
    Then I should see the company page text "Company"
    Then I enter the company name "Your Name"
    Then I select the solutation "Mr"
    Then I select the firstname "Aman"
    Then I select the lastname "kumar"
    Then I click on Enter address manually
    Then I enter the street "Valentinskamp"
    Then I enter the streetNo "70"
    Then I enter the city "Habmurg"
    Then I enter the zip "20355"
    Then I enter the area "Germany"
    Then I select the country "Germany"
#    Then I select the address "Valentinskamp 70, 20355 Hamburg"
    Then I select the vatno "DE123456789"
    Then I select the email "test@gmail.com"
    Then I select the tel "1234"
    Then I click on next button second page
    Then I should see the summary page text "RECURRING PAYMENT"
    Then I choose the voluntary information option "Facebook"
    Then I accept the terms and conditions
    Then I click on the button complete booking
    Then I validate booking confirmation page
