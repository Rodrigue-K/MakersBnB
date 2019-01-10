feature 'Creating a Listing' do
  let!(:user) { User.create(email: 'test@test.com', password: 'testpassword') }

  scenario 'A user can fill in details for a listing' do
    signin
    fill_in :name, with: 'Hive'
    fill_in :price, with: 350
    fill_in :description, with: 'Buzzing'

    expect(current_path).to eq '/'
  end
end
