class AddClubIdToBooks < ActiveRecord::Migration[5.1]
  def change
		add_column :books, :club_id, :integer
		add_index :books, :club_id
  end
end
