class DropUsersClubs < ActiveRecord::Migration[5.1]
  def change
		drop_table :clubs_users
  end
end
