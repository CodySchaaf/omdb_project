module SearchesHelper
	def link_text movie
		"(#{movie.year}) #{movie.title}"
	end

	def link_url movie
		"http://www.imdb.com/title/#{movie.imdb_id}/"
	end
end
