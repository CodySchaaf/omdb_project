class FavoritesController < ApplicationController
	before_action :signed_in_user

	def create
		@movie = Movie.find(params[:favorite][:favorited_id])
		@index = params[:index]
		current_user.favorite!(@movie)
		respond_to do |format|
			format.html { redirect_to :back }
			format.js
		end
	end

	def destroy
		@movie = Favorite.find(params[:id]).favorited
		@index = params[:index]
		current_user.unfavorite!(@movie)
		respond_to do |format|
			format.html { redirect_to :back }
			format.js
		end
	end
end
