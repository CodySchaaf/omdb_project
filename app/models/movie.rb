class Movie < ActiveRecord::Base
	has_many :reverse_relationships, foreign_key: 'favorited_id', class_name: 'Favorite', dependent: :destroy
	has_many :favoriters, through: :reverse_relationships, source: :favoriter

	validates :json, presence: true, uniqueness: { case_sensitive: false }
	validates :year, presence: true
	validates :imdb_id, presence: true, uniqueness: { case_sensitive: false }
	validates :type, presence: true
	validates :title, presence: true, uniqueness: { scope: [:year] }
end
