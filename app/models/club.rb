class Club < ApplicationRecord
	has_many :users, through: :clubs_users
end
