require './app'

feature 'Bookmarks page' do

  scenario 'can view the list of saved Bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks VALUES(1, 'https://www.rubyguides.com/');")
    connection.exec("INSERT INTO bookmarks VALUES(2, 'http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks VALUES(3, 'http://www.google.com');")

    visit '/'

    expect(page).to have_content('https://www.rubyguides.com/')
  end
end
