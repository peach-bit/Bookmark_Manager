require './app'

feature 'test' do

  scenario 'can test drive an index page' do
    visit '/test'
    expect(page).to have_content 'Hello World'
  end

end
