feature 'Availability' do
  let!(:user) { User.create(email: 'test@test.com', password: 'testpassword') }
  background { signin }
  scenario 'user can sets some dates of a space to be available' do
    fill_in :name, with: 'Hive'
    fill_in :price, with: 350
    fill_in :description, with: 'Buzzing'
    fill_in :available_from, with:'17/01/2019'
    fill_in :available_to, with:'19/01/2019'
    click_button 'Submit'
    expect(page).to have_content 'Dates available'
    expect(page).to have_link '17/01/2019'
    expect(page).to have_link '18/01/2019'
    expect(page).to have_link '19/01/2019'
  end
end
