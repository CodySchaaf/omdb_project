class User < ActiveRecord::Base
	has_many :favorites, foreign_key: 'favoriter_id', dependent: :destroy
	has_many :favorited_movies, through: :favorites, source: :favorited


	before_save { self.email = email.downcase }
	before_create :create_remember_token

	validates :user_name, presence: true, length: { maximum: 50 }, uniqueness: { case_sensitive: false }
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :email, presence: true, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }
	has_secure_password
	VALID_PASSWORD_REGEX = /\A(?:(?=.*[a-z])(?=.*[A-z])(?=.*\d)(?=.*[!@#$%\^&*_\-+=\\'"><?\/`~.,:\;\[\]{}]).{6,20})\z/
	validates :password, length: { minimum: 6 }, format: { with: VALID_PASSWORD_REGEX }
	validates :password_confirmation, presence: true

	def User.new_remember_token
		SecureRandom.urlsafe_base64
	end

	def User.encrypt(token)
		Digest::SHA1.hexdigest(token.to_s)
	end

	def favorite?(movie)
		favorites.find_by(favorited_id: movie.id)
	end

	def favorite!(movie)
		favorites.create!(favorited_id: movie.id)
	end

	def unfavorite!(movie)
		favorites.find_by(favorited_id: movie.id).destroy
	end

	private

	def create_remember_token
		self.remember_token = User.encrypt(User.new_remember_token)
	end
end
