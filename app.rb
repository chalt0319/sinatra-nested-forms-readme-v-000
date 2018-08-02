require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/student' do
    @student 
    erb :new 
  end 
end
