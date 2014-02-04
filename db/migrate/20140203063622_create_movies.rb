class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :json
      t.string :title
      t.integer :year

      t.timestamps
    end
    add_index :movies, :json
  end
end
