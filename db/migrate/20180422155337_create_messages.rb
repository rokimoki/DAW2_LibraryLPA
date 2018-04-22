class CreateMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :messages do |t|
      t.string :message
      t.references :chatroom, foreign_key: true
      t.references :chat, foreign_key: true

      t.timestamps
    end
  end
end
