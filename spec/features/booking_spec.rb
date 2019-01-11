feature 'booking' do
  let!(:user) { User.create(email: 'test@test.com', password: 'testpassword') }
  background { signin }
  background { fill_in_bee_listing }
  context "user can book" do
    scenario "user can book" do
      first("#indv_space").click_button 'Book'
      expect(page).to have_content 'When are you buzzing in?'
    end
  end
end
