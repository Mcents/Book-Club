class Club < ApplicationRecord
	has_many :club_users
	has_many :users, through: :club_users
	has_many :books
end
