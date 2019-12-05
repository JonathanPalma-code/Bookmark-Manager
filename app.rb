require 'sinatra/base'
require './lib/bookmarks'

class BookmarkManager < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/add_bookmark' do
    erb :add_bookmark
  end

  post '/add_bookmark' do
    Bookmarks.add(url: params[:url],title: params[:title])
    redirect '/bookmarks'
  end

  get '/bookmarks' do
    @bookmarks = Bookmarks.new.all
    erb :viewing_bookmark
  end

  get '/delete_bookmark' do
    erb :delete_bookmark
  end

  post '/delete_bookmark' do
    Bookmarks.delete(title: params[:title])
    redirect '/bookmarks'
  end

  run! if app_file == $0
end
