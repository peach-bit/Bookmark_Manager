require 'sinatra/base'
require './lib/bookmarkclass'
require 'pg'

class BookmarkManager < Sinatra::Base

  get '/' do
    
    bookmark = Bookmarks.new
    @message = bookmark.all
    erb :index
  end

  post '/' do
    url = params['url']
    connection = PG.connect(dbname: 'bookmark_manager_test')
    connection.exec("INSERT INTO bookmarks (url) VALUES('#{url}')")
    redirect '/'
  end

  get '/add' do
    erb :add_bookmarks
  end

  run! if app_file == $0
end
