class LandingPage
  include BASEPAGE

  def element_average_revenue_1000
    "average-gross-1000"
  end

  def element_average_revenue_10000
    "average-gross-10000"
  end

  def element_average_revenue_25000
    "average-gross-25000"
  end

  def element_package_free
    "//body/div[@id='booking_form']/div[1]/div[1]/div[1]/div[1]/div[1]/div[1]/form[1]/div[1]/div[1]/div[2]/div[2]/div[1]/div[1]/div[3]"
  end

  def element_addon_oss_export
    "//div[@id='booking_form']/div/div/div/div/div/div/form/div/div/div[4]/div[2]/label[2]"
  end

  def validate_homepage_text(text)
    expect(page).to have_text text
  end

  def select_element(option)
    case option
    when "1000"
      choose(element_average_revenue_1000, allow_label_click: true)
    when "10000"
      choose(element_average_revenue_10000, allow_label_click: true)
    when "25000"
      choose(element_average_revenue_25000, allow_label_click: true)
    end
  end

  def select_package(option)
    case option
    when "FREE"
      find(:xpath, element_package_free).click
    when "49_EUROS"
      find(:xpath, element_package_free).click
    when "299_EUROS"
      find(:xpath, element_package_free).click
    end
  end

  def select_addon(option)
    case option
    when "OSS Export"
      find(:xpath, element_addon_oss_export).click
    when "49_EUROS"
      find(:xpath, element_package_free).click
    when "299_EUROS"
      find(:xpath, element_package_free).click
    end
  end

  def select_next
    sleep(5)
    find('span', text: 'NEXT').click
  end
end
