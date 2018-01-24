class AddCreatorToClubs < ActiveRecord::Migration[5.1]
  def change
    add_column :clubs, :creator, :string
  end
end
