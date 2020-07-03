# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

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




