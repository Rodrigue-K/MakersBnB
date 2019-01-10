feature 'Infrastructure' do
  let!(:user) { User.create(email: 'test@test.com', password: 'testpassword') }
  background { signin }

  context 'Homepage' do
    scenario 'A user can go directly to their profile page if signed in' do
      visit '/'
      click_link 'Profile'
      expect(current_path).to eq '/profile'
    end
  end

  context 'Profile page' do
    scenario 'A user can go back to the index' do
      click_button 'Listings'

      expect(current_path).to eq '/'
    end
  end
end
