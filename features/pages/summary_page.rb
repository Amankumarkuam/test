class SummaryPage
  include BASEPAGE

  def select_voluntary_optiion(option)
    choose option, allow_label_click: true
  end

  def accept_terms
    check 'accept', allow_label_click: true
  end

  def click_complete_booking
    click_button "Complete booking"
  end

  def validate_booking_confimation
    expect(page).to have_text 'Booking successful'
  end

end
