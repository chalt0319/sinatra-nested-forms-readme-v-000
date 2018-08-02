require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/student' do
    @student = Student.new(params[:student])
    params[:student][:courses].each do |details|
      Course.new(details)
    end
    @courses = Course.all

    erb :new
  end
end
