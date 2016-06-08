# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Activity.destroy_all

Activity.create(name: "Basketball", description: "Always wanted to feel like Michael Jordan?")
Activity.create(name: "Painting", description: "The best fingerpaiting lessons in Amsterdam")
Activity.create(name: "Piano lessons", description: "Learing to play the piano is never been more fun")
