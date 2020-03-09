require './app'

feature 'Bookmarks page' do

  scenario 'can view the list of saved Bookmarks' do
    visit '/bookmarks'
    page.should have_link('Ruby Cheatsheet')
  end

end
