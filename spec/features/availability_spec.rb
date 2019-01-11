feature 'Availability' do
  let!(:user) { User.create(email: 'test@test.com', password: 'testpassword') }
  background { signin }

end
