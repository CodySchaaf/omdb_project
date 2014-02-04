class SearchesController < ApplicationController

	def results
		movie_title = params[:title]

		response = Typhoeus.get('http://www.omdbapi.com',
			params: { s: movie_title } )

		@json = JSON.parse(response.body)['Search'].sort_by { |e| e['Year'] }

	end

	def home
		
	end

end
