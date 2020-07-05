class CreateUsersChats < ActiveRecord::Migration[6.0]
  def change
    create_table :users_chats do |t|
      t.references :chat, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
    end
  end
end
