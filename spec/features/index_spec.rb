require './app'

feature 'Bookmarks page' do

  scenario 'can view the list of saved Bookmarks' do
    Bookmarks.create(url:"https://www.rubyguides.com/")
    Bookmarks.create(url:"http://www.destroyallsoftware.com")
    Bookmarks.create(url:"http://www.google.com")
    visit '/'

    expect(page).to have_content("https://www.rubyguides.com/")
  end
end
