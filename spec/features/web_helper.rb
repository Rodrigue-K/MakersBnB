def signup
  visit '/'
  click_button 'Sign Up'
  fill_in :email, with: 'test@test.com'
  fill_in :password, with: 'testpassword'
  click_button 'Sign Up'
end

def signin
  visit '/'
  click_button 'Sign In'
  fill_in :email, with: 'test@test.com'
  fill_in :password, with: 'testpassword'
  click_button 'Sign In'
end

def fill_in_bee_listing
  fill_in :name, with: 'Hive'
  fill_in :price, with: 350
  fill_in :description, with: 'Buzzing'
  click_button 'Submit'
end
