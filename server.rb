require 'sinatra'
require './models/siskel.rb'

get '/movie' do
	movie = Siskel.new("Lion King")
	"This movie title is #{movie.title}"
end