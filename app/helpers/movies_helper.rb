module MoviesHelper
	def link_text movie
		"#{movie['Title']} (#{movie['Year']})"
	end

	def link_url movie
		"http://www.imdb.com/title/#{movie['imdbID']}/"
	end
end
