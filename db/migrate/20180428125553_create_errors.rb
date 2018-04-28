class CreateErrors < ActiveRecord::Migration[5.1]
  def change
    create_table :errors do |t|
      t.string :type
      t.string :message

      t.timestamps
    end
  end
end
