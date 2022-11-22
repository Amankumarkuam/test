class PersonalFormPage
  include BASEPAGE

  def select_company(option)
    fill_in 'company', with: option
  end

  def select_solutation(option)
    select option, :from => "salutation"
  end

  def enter_first_name(option)
    fill_in 'First name', with: option
  end

  def enter_last_name(option)
    fill_in 'Last name', with: option
  end

  def click_manual_address
    click_button "Enter address manually"
  end

  def enter_streat(option)
    fill_in 'street', with: option
  end

  def enter_streat_number(option)
    fill_in 'streetNo', with: option
  end

  def enter_city(option)
    fill_in 'city', with: option
  end

  def enter_zip(option)
    fill_in 'zip', with: option
  end

  def enter_area(option)
    fill_in 'area', with: option
  end

  def select_country(option)
    select option, :from => "country"
  end

  def enter_vatnumber(option)
    fill_in 'vatNo', with: option
  end

  def enter_email(option)
    fill_in 'email', with: option
  end

  def enter_telephone(option)
    fill_in 'tel', with: option
  end

end
