require 'sinatra/base'
require './lib/bookmarkclass'
require 'pg'

class BookmarkManager < Sinatra::Base

  get '/' do
    bookmark = Bookmarks.new
    @message = bookmark.all
    erb :index
  end

  run! if app_file == $0
end
