class AddColumnsToMovies < ActiveRecord::Migration
  def change
  	add_column :movies, :imdb_id, :string
  	add_column :movies, :type, :string
  end
end
