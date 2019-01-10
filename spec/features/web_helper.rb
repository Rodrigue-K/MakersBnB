def go_home
  visit '/'
end

def signup
  go_home
  click_on 'Sign Up'
  fill_in :email, with: 'test@test.com'
  fill_in :password, with: 'testpassword'
  click_button 'Sign Up'
end

def signin
  go_home
  click_on 'Sign In'
  fill_in :email, with: 'test@test.com'
  fill_in :password, with: 'testpassword'
  click_button 'Sign In'
end
