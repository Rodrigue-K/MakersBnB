feature 'User Authentication' do
  context 'Sign Up' do
    scenario 'A user can sign up' do
      signup
      expect(page).to have_content 'Welcome, test@test.com'
    end
  end

  context 'Sign In' do
    scenario 'A user can sign in' do
      signup
      signin
      expect(page).to have_content 'Welcome, test@test.com'
    end

    scenario 'A signed in user can log out' do
      signin
      click_button 'Log out'
      expect(page).to have_content "Sign Up Sign In"
    end

  end
end
