class CreateChatMessages < ActiveRecord::Migration[6.0]
  def change
    create_table :chat_messages do |t|
      t.text :message
      t.string :user_login
      t.references :chat, null: false, foreign_key: true

      t.timestamps
    end
  end
end
