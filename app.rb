require 'sinatra/base'

class BookmarkManager < Sinatra::Base
  get '/test' do
    erb (:index)
  end

  run! if app_file == $0
end
