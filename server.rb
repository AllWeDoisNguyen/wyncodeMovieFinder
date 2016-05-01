require 'sinatra'
require './models/siskel.rb'

get '/' do
	title = params[:title]
	@movie = Siskel.new(title)
	erb :index
end

get '/movie/' do 		
	title = params[:title]
	@movie = Siskel.new(title)
	if title == nil
	@movie = Siskel.new("Lion King")
	end
	erb :movie
end



