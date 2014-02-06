class SearchesController < ApplicationController

	def results
		movie_title = params[:title]

		response = Typhoeus.get('http://www.omdbapi.com',
			params: { s: movie_title } )

		json = JSON.parse(response.body)['Search'].sort_by { |e| e['Year'] }

		@movies = []

		json.each do |movie|
			if(movie_from_db = Movie.find_by(imdb_id: movie['imdbID']))
				@movies << movie_from_db
			else
				@movies << Movie.create!(json: movie.to_s, title: movie['Title'], year: movie['Year'], imdb_id: movie['imdbID'], type: movie['Type'])
			end
		end

	end

	def home
		
	end

end
