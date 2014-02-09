class ChangeMoviesTypeColumnToResultType < ActiveRecord::Migration
	def change
		change_table :movies do |t|
			t.rename :type, :result_type
		end
	end
end
