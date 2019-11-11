# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.create(genre: "science fiction", title: :"Star Wars", first_gif: "https://media.giphy.com/media/3o7buijTqhjxjbEqjK/giphy.gif", second_gif: "http://giphygifs.s3.amazonaws.com/media/9umH7yTO8gLYY/giphy.gif")
Question.create(title: "Singing in the Rain", first_gif: "https://media.giphy.com/media/143qWPF33HtSTK/giphy.gif", second_gif: "https://media.giphy.com/media/1Yfxps0AHRYBR2tK2G/giphy.gif", genre: "Musical")

Game.create(score: 10)

#Game 1
GameQuestion.create(question_id: 1, game_id: 1)