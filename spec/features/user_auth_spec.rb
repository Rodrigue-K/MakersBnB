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

  context 'Sign In/Out' do
    let!(:user) { User.create(email: 'test@test.com', password: 'testpassword') }

    scenario 'A user can sign in' do
      visit '/'
      click_on 'Sign In'
      fill_in :email, with: 'test@test.com'
      fill_in :password, with: 'testpassword'
      click_button 'Sign In'

      expect(page).to have_content 'Welcome, test@test.com'
    end

    scenario 'A user gets redirected to the sign in page if not signed in' do
      visit '/profile'
      expect(current_path).to eq '/signin'
    end

    scenario "A user can't sign in with the wrong password" do
      visit '/'
      click_on 'Sign In'
      fill_in :email, with: 'test@test.com'
      fill_in :password, with: 'wrongpassword'
      click_button 'Sign In'

      expect(current_path).to eq '/signin'
    end

    scenario 'A signed in user can log out' do
      signin
      click_button 'Log out'
      click_link 'Profile'

      expect(current_path).to eq '/signin'
    end
  end
end
