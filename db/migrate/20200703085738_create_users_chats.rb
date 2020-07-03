class CreateUsersChats < ActiveRecord::Migration
  def change
    create_table :users_chats do |t|
      t.references :user, index: true, foreign_key: true
      t.references :chat, index: true, foreign_key: true
    end
  end
end
