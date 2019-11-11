# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Question.create(title: "Star Wars", genre: "Science Fiction", first_gif: "https://media.giphy.com/media/3o7buijTqhjxjbEqjK/giphy.gif", second_gif: "http://giphygifs.s3.amazonaws.com/media/9umH7yTO8gLYY/giphy.gif")
Question.create(title: "Singin' in the Rain", genre: "Musical", first_gif: "https://media.giphy.com/media/143qWPF33HtSTK/giphy.gif", second_gif: "https://media.giphy.com/media/1Yfxps0AHRYBR2tK2G/giphy.gif")
Question.create(title: "Citizen Kane", genre: "Drama", first_gif: "https://media.giphy.com/media/5ME9j9hbSJYrK/giphy.gif", second_gif: "https://media.giphy.com/media/LXjFLBeyIzXUs/giphy.gif")
Question.create(title: "Casablanca", genre: "Drama", first_gif: "https://media.giphy.com/media/l2SpVMDEIJvjwavwQ/giphy.gif", second_gif: "https://media.giphy.com/media/xTdAjr0aZ8PcSAGTqE/giphy.gif")
Question.create(title: "The Rocky Horror Picture Show", genre: "Musical", first_gif: "https://media.giphy.com/media/26tPcgtbhhbU88U2A/giphy.gif", second_gif: "https://media.giphy.com/media/zXeX29w6jxjAk/giphy.gif")
Question.create(title: "The Breakfast Club", genre: "Dramedy", first_gif: "http://giphygifs.s3.amazonaws.com/media/AwyW3bCYArhbG/giphy.gif", second_gif: "https://media.giphy.com/media/26uf7O2zb8HweaHNC/giphy.gif")
Question.create(title: "The Godfather", genre: "Drama", first_gif: "http://giphygifs.s3.amazonaws.com/media/FZaNpQrCtyQms/giphy.gif", second_gif: "http://giphygifs.s3.amazonaws.com/media/GKbfzvrxr5jW0/giphy.gif")
Question.create(title: "Mean Girls", genre: "Comedy", first_gif: "https://media.giphy.com/media/xThuW9zh3xNc4uGbu0/giphy.gif", second_gif: "https://media.giphy.com/media/dvDCHPFnxnYubsrNvl/giphy.gif")
Question.create(title: "Napoleon Dynamite", genre: "Comedy", first_gif: "https://media.giphy.com/media/SsrDV8i0LSFxGHpzTq/giphy.gif", second_gif: "https://media.giphy.com/media/xUOxeXt41UOYRusw4E/giphy.gif")
Question.create(title: "A Clockwork Orange", genre: "Drama", first_gif: "https://media.giphy.com/media/3o6MbhEln7WjAKiqkM/giphy.gif", second_gif: "https://media.giphy.com/media/3o7TKPdUkkbCAVqWk0/giphy.gif")
Question.create(title: "The Lord of the Rings", genre: "Fantasy", first_gif: "http://giphygifs.s3.amazonaws.com/media/poF4AwItROabe/giphy.gif", second_gif: "https://media.giphy.com/media/p5LNTI575vmow/giphy.gif")
Question.create(title: "Taxi Driver", genre: "Drama", first_gif: "https://media.giphy.com/media/3oFzmrP8ZDnNZxsyFW/giphy.gif", second_gif: "https://media.giphy.com/media/mIMsLsQTJzAn6/giphy.gif")
Question.create(title: "Fight Club", genre: "Drama", first_gif: "http://giphygifs.s3.amazonaws.com/media/rcRwO8GMSfNV6/giphy.gif", second_gif: "https://media.giphy.com/media/l41JUhcCreHloiiru/giphy.gif")
Question.create(title: "Reservoir Dogs", genre: "Drama", first_gif: "https://media.giphy.com/media/NqXnptJhHoWTS/giphy.gif", second_gif: "https://media.giphy.com/media/kBZBlLVlfECvOQAVno/giphy.gif")
Question.create(title: "Office Space", genre: "Comedy", first_gif: "https://media.giphy.com/media/9oF7EAvaFUOEU/giphy.gif", second_gif: "https://media.giphy.com/media/xT9IgusfDcqpPFzjdS/giphy.gif")
Question.create(title: "Anchorman", genre: "Comedy", first_gif: "http://giphygifs.s3.amazonaws.com/media/1e2RyYMVRCE1y/giphy.gif", second_gif: "https://media.giphy.com/media/dsQrzqmtwYnobTQBDW/giphy.gif")
Question.create(title: "Groundhog Day", genre: "Comedy", first_gif: "https://media.giphy.com/media/lNUCXNHGH7Gog/giphy.gif", second_gif: "https://media.giphy.com/media/3ROGCp62zakRW/giphy.gif")
Question.create(title: "Wayne's World", genre: "Comedy", first_gif: "https://media.giphy.com/media/l41lZccR1oUigYeNa/giphy.gif", second_gif: "https://media.giphy.com/media/euwvytHJqMG21wSkI4/giphy.gif")
Question.create(title: "Fight Club", genre: "Drama", first_gif: "http://giphygifs.s3.amazonaws.com/media/rcRwO8GMSfNV6/giphy.gif", second_gif: "https://media.giphy.com/media/l41JUhcCreHloiiru/giphy.gif")
Question.create(title: "Fight Club", genre: "Drama", first_gif: "http://giphygifs.s3.amazonaws.com/media/rcRwO8GMSfNV6/giphy.gif", second_gif: "https://media.giphy.com/media/l41JUhcCreHloiiru/giphy.gif")




Game.create(score: 10)

#Game 1
GameQuestion.create(question_id: 1, game_id: 1)
