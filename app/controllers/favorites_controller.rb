class FavoritesController < ApplicationController
	before_action :signed_in_user

	def create 
		puts "Time to create"
		@movie = Movie.find(params[:favorite][:favorited_id])
		current_user.favorite!(@movie)
		respond_to do |format|
			format.html { redirect_to :back }
			format.js
		end
	end

	def destroy
		puts "Time to destroy"
		@movie = Favorite.find(params[:id]).favorited
		current_user.unfavorite!(@movie)
		respond_to do |format|
			format.html { redirect_to :back }
			format.js
		end
	end
end
