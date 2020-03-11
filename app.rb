require 'sinatra/base'
require './lib/bookmarkclass'
require 'pg'

class BookmarkManager < Sinatra::Base

  get '/' do

    @bookmark = Bookmarks.all
    @message = @bookmark
    erb :index
  end

  post '/' do
    Bookmarks.create(url: params[:url])
    redirect '/'
  end

  get '/add' do
    erb :add_bookmarks
  end

  run! if app_file == $0
end
