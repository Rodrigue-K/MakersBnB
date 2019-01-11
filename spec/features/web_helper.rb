def signup
  visit '/'
  click_button 'Sign Up'
  fill_in :email, with: 'test@test.com'
  fill_in :password, with: 'testpassword'
  click_button 'Submit'
end

def signin
  visit '/'
  click_button 'Sign In'
  fill_in :email, with: 'test@test.com'
  fill_in :password, with: 'testpassword'
  click_button 'Submit'
end

def fill_in_bee_listing
  fill_in :name, with: 'Hive'
  fill_in :price, with: 350
  fill_in :description, with: 'Buzzing'
  fill_in :available_from, with: '2019-01-17'
  fill_in :available_to, with: '2019-01-19'
  click_button 'Submit'
end
