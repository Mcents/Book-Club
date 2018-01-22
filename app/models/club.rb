class Club < ApplicationRecord
	has_many :users, through: :clubs_users
	has_many :books
end
