feature 'Infrastructure' do
  context 'Profile page' do
    scenario 'A user can go back to the index' do
      signup
      signin
      click_button 'Listings'

      expect(current_path).to eq '/'
    end
  end
end
