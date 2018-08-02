require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/student' do
    @student = Student.new(params[:student]) 
    erb :new
  end
end
