feature 'Availability' do
  let!(:user) { User.create(email: 'test@test.com', password: 'testpassword') }

  background do
    signin
    fill_in_bee_listing
  end

  scenario 'A user can see a booking page' do
    first("#indv_space").click_button 'Book'

    expect(page).to have_content 'When are you buzzing in?'
    expect(page).to have_content 'Dates available'
  end

  # scenario 'A user can see the individual dates available to book' do
  #   visit '/'
  #   click_button 'Book'
  #   expect(page).to have_link '2019-01-17'
  #   expect(page).to have_link '2019-01-18'
  #   expect(page).to have_link '2019-01-19'
  # end
end
