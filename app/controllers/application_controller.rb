require 'sinatra'

class ApplicationController < Sinatra::Base
  configure do
    set :views, "app/views"
    set :public_dir, "public"
  end

  get '/' do
    erb(:index)
  end

  get '/not-excited' do
    erb(:not_excited)
  end

  get '/excited' do
    erb(:excited)
  end

  post '/calculator' do
    erb(:calculator)
  end

end
