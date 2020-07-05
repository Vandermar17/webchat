class RenameUsersChatsToChatsUsers < ActiveRecord::Migration[6.0]
  def change
    rename_table :users_chats, :chats_users
  end
end
