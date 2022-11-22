require_relative '../pages/page_objects'

Before do |scenario|
  @page=Page.new

  url = 'https://gorest.co.in/'
  @req = Http_Request.new url, {Authorization:"Bearer 74d838593ddbec662eafd0558cda94643ef1a6bc27e9376cc951a6be7a6cc3d2"}
end

After do |scenario|
  Capybara.current_session.driver.quit
end

After do |scenario|
  if scenario.failed?
    page.driver.browser.manage.window.maximize
    page.driver.browser.save_screenshot("reports/#{scenario.name}.png")
    # encoded_img = page.driver.browser.screenshot_as(:base64)
    # scenario.embed("data:image/png;base64,#{encoded_img}",'image/png', scenario.name)
  end
end
