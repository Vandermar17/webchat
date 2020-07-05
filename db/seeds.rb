# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Chat.destroy_all
ChatMessage.destroy_all

User.create! [
    {login: "lol", password: "kek"},
    {login: "kek", password: "lol"}
]

chats1 = Chat.create! [
    {name: "mom"},
    {name: "dad"}
]

chats2 = Chat.create! [
    {name: "left"},
    {name: "right"}
]

User.find_by(login: "lol").chats = chats1
User.find_by(login: "kek").chats = chats2

chatik = Chat.find_by(name: "left")
User.find_by(login: "lol").chats<<(chatik)

mess1 = ChatMessage.create(user_login: "lol", message: "hi")
mess2 = ChatMessage.create(user_login: "kek", message: "hello")
chatik.chat_messages = [mess1, mess2]

