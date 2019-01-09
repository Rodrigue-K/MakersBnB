def signup
  visit '/'
  click_on 'Sign Up'
  fill_in :email, with: 'test@test.com'
  fill_in :password, with: 'testpassword'
  click_button 'Sign Up'
end
