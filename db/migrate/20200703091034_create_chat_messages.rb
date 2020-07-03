class CreateChatMessages < ActiveRecord::Migration
  def change
    create_table :chat_messages do |t|
      t.references :chat, index: true, foreign_key: true
      t.text :message

      t.timestamps null: false
    end
  end
end
