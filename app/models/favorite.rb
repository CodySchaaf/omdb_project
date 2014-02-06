class Favorite < ActiveRecord::Base
	belongs_to :favoriter, class_name: 'User'
	belongs_to :favorited, class_name: 'Movie'
	validates :favoriter_id, presence: true
	validates :favorited_id, presence: true
end
