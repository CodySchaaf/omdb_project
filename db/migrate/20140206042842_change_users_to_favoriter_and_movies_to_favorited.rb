class ChangeUsersToFavoriterAndMoviesToFavorited < ActiveRecord::Migration
	def change
		change_table :favorites do |t|
			t.rename :user_id, :favoriter_id
			t.rename :movie_id, :favorited_id
		end
	end
end
