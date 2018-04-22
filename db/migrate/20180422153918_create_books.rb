class CreateBooks < ActiveRecord::Migration[5.1]
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :name
      t.string :author
      t.string :description
      t.float :rate
      t.string :publisher
      t.string :image

      t.timestamps
    end
  end
end
