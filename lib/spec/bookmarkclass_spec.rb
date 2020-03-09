require './bookmarkclass'
describe 'Bookmarks' do
  let(:bookmark) { Bookmarks.new }
  it 'can create an instance' do
    expect(bookmark).to be_a_kind_of Bookmarks
  end
end
