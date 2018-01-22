class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.text :title
      t.text :author
      t.string :description
      t.text :isbn

      t.timestamps
    end
  end
end
