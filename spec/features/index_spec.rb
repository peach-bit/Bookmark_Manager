require './app'

feature 'Bookmarks page' do

  scenario 'can view the list of saved Bookmarks' do
    visit '/'
    expect(page).to have_content('https://www.rubyguides.com/')
  end

end
