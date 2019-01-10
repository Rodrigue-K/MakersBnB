feature 'User Authentication' do
  context 'Sign Up' do
    scenario 'A user can sign up' do
      visit '/'
      click_on 'Sign Up'
      fill_in :email, with: 'test@test.com'
      fill_in :password, with: 'testpassword'
      click_button 'Sign Up'

      expect(page).to have_content 'Welcome, test@test.com'
    end
  end

  context 'Sign In' do
    let!(:user) { User.create(email: 'test@test.com', password: 'testpassword') }

    scenario 'A user can sign in' do
      visit '/'
      click_on 'Sign In'
      fill_in :email, with: 'test@test.com'
      fill_in :password, with: 'testpassword'
      click_button 'Sign In'

      expect(page).to have_content 'Welcome, test@test.com'
    end

    scenario 'A signed in user can log out' do
      signin
      click_button 'Log out'
      expect(page).to have_content "Sign Up Sign In"
    end
  end
end
