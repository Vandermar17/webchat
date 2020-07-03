class ChangeUsersChatsToChatsUsers < ActiveRecord::Migration
  def change
    rename_table :users_chats, :chats_users
  end
end
