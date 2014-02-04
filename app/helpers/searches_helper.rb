module SearchesHelper
	def link_text movie
		"(#{movie['Year']}) #{movie['Title']}"
	end

	def link_url movie
		"http://www.imdb.com/title/#{movie['imdbID']}/"
	end
end
