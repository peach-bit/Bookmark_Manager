require './lib/bookmarkclass'
feature "Adding a new bookmark" do
  scenario "user can add a bookmark" do
    visit('/add')
    fill_in('url', with: 'http://testbookmark.com')
    click_button('Submit')

    expect(page).to have_content 'http://testbookmark.com'
  end
end
