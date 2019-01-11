feature 'Listings' do
  let!(:user) { User.create(email: 'test@test.com', password: 'testpassword') }
  background { signin }

  scenario 'A user can fill in details for a listing' do
    fill_in :name, with: 'Hive'
    fill_in :price, with: 350
    fill_in :description, with: 'Buzzing'
    click_button 'Submit'

    expect(current_path).to eq '/'
  end

  scenario 'A user can see details about a listed space' do
    fill_in_bee_listing

    expect(page).to have_content('Price')
    expect(page).to have_content('Name')
    expect(page).to have_content('Description')
    expect(page).to have_content('Available from')
    expect(page).to have_content('Available to')
  end

  scenario 'A user can see a submitted listing' do
    fill_in_bee_listing

    expect(page).to have_content 'Hive'
    expect(page).to have_content '350'
    expect(page).to have_content 'Buzzing'
  end

  scenario 'A user can see a range of available dates for a space' do
    fill_in_bee_listing

    expect(page).to have_content 'Available from: 2019-01-17'
    expect(page).to have_content 'Available to: 2019-01-19'
  end
end
