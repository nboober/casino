# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Game.destroy_all
User.destroy_all
Play.destroy_all
Company.destroy_all

getgud = Company.create(name: "Get Good, Inc.", location: "420 Already Good Lane, Germantown, MD 20893")

wordGame = Game.create(name: "Word", cost: 20, winnings: 50, company_id: getgud.id)
numberGame = Game.create(name: "Number Guesser", cost: 5, winnings: 15, company_id: getgud.id)


nick = User.create(first_name: "Nick", last_name: "Boober", age: 27, tokens: 500)
mickey = User.create(first_name: "Mickey", last_name: "Partlow", age: 27, tokens: 500)

play1 = Play.create(user_id: nick.id, games_id: wordGame.id, win: false)
play2 = Play.create(user_id: mickey.id, games_id: numberGame.id, win: false)