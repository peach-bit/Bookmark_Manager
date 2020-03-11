require './lib/bookmarkclass'

describe 'Bookmarks' do
  let(:bookmark) { Bookmarks.new }
  it 'can create an instance' do
    expect(bookmark).to be_a_kind_of Bookmarks
  end

  it 'can respond to all method' do
    expect(Bookmarks).to respond_to(:all)
  end

  describe 'List Bookmarks' do
  it 'returns a list of bookmarks' do
    connection = PG.connect(dbname: 'bookmark_manager_test')

    # Add the test data
    connection.exec("INSERT INTO bookmarks (url) VALUES ('https://www.rubyguides.com/');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.destroyallsoftware.com');")
    connection.exec("INSERT INTO bookmarks (url) VALUES('http://www.google.com');")
    bookmark = Bookmarks.all
    expect(bookmark).to include "https://www.rubyguides.com/"
    expect(bookmark).to include "http://www.destroyallsoftware.com"
    expect(bookmark).to include "http://www.google.com"
  end
end

  describe 'Add a Bookmark' do
    let(:bookmark) { Bookmarks.new }

    it 'can add a bookmark' do
      Bookmarks.create(url: 'http://www.testbookmark.com')
      bookmark = Bookmarks.all
    expect(bookmark).to include('http://www.testbookmark.com')
    end
  end
end
