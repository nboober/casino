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

wordGame = Game.create(name: "Word Guesser", cost: 20, winnings: 50, company_id: getgud.id)
numberGame = Game.create(name: "Number Guesser", cost: 5, winnings: 15, company_id: getgud.id)

nick = User.create(first_name: "Nick", last_name: "Boober", age: 27, tokens: 500, username: "nboober", admin: true, password: "admin", cash: 0)
mickey = User.create(first_name: "Mickey", last_name: "Partlow", age: 27, tokens: 500, username: "mickey", admin: true, password: "admin", cash: 0)

play1 = Play.create(user_id: nick.id, game_id: wordGame.id)
play2 = Play.create(user_id: mickey.id, game_id: numberGame.id)

creditcard1 = CreditCard.create(cardnumber: 1234567812345678, expmonth: 2, expyear: 2023, securitycode: 012, user_id: nick.id)
creditcard1 = CreditCard.create(cardnumber: 8765432187654321, expmonth: 5, expyear: 2025, securitycode: 123, user_id: mickey.id)