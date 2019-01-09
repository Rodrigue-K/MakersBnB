feature 'list spaces' do
  scenario "user can see a listed space" do
    visit "/"
    expect(page).to have_content("Price")
    expect(page).to have_content("Name")
    expect(page).to have_content("Description")
    expect(page).to have_content("Availability")
  end
end
