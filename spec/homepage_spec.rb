

feature 'Testing holiday app' do
  scenario 'User visits homepage and sees question' do
    visit('/')
    expect(page).to have_content("Are you excited for your holiday?")
  end

  scenario 'homepage has button "Absolutely" ' do
    visit('/')
    expect(page).to have_button('Absolutely')
  end

  scenario 'homepage has button "mm, not really.." ' do
    visit('/')
    expect(page).to have_button('mm, not really..')
  end

  scenario 'user clicks on "mm, not really.." button ' do
    visit('/')
    click_button('mm, not really..')
    expect(page).to have_content('hope you bought holiday insurance :)')
  end

  scenario 'user clicks on "Absolutely" button ' do
    visit('/')
    click_button('Absolutely')
    expect(page).to have_content('Enter the date of your holiday')
  end

  scenario 'user clicks on "Absolutely" button ' do
    visit('/')
    click_button('Absolutely')
    expect(page).to have_unchecked_field
  end

  scenario 'user enters date and clicks "let\'s go!" ' do
    visit('/')
    click_button('Absolutely')
    fill_in 'date', with: '19/09/2019'
    click_button('Let\'s go!')
    expect(page).to have_content('71')
  end


end