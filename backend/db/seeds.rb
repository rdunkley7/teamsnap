# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#

  Team.create(team_name: "kangaroos", captain_first: 'Kirill', captain_last: 'Kaprizov')
  Team.create(team_name: "polar bears", captain_first: 'Jared', captain_last: 'Spurgeon')
  Team.create(team_name: "blue", captain_first: 'Matt', captain_last: 'Dumba')

  puts Team.all.inspect