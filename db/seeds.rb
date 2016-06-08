# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
+Activity.destroy_all
 +
 +Activity.create(
 +  name: "Basketball",
 +  description: "Always wanted to feel like Michael Jordan?",
 +  photo: "http://www.windailyfantasy.com/wp-content/uploads/2015/02/Playing-College-Hoops.png",
 +  city: "Amsterdam",
 +  address: "Admiraal de ruijterweg 296",
 +  period_beginning: Date.new(2016,2,3),
 +  period_ending: Date.new(2017,1,5)
 +  )
 +Activity.create(
 +  name: "Painting",
 +  description: "The best fingerpaiting lessons in Amsterdam",
 +  photo: "http://www.windailyfantasy.com/wp-content/uploads/2015/02/Playing-College-Hoops.png",
 +  city: "Amsterdam",
 +  address: "Europaplein 57",
 +  period_beginning: Date.new(2016,2,3),
 +  period_ending: Date.new(2017,1,5)
 +  )
 +Activity.create(
 +  name: "Piano lessons",
 +  description: "Learing to play the piano is never been more fun",
 +  photo: "http://www.windailyfantasy.com/wp-content/uploads/2015/02/Playing-College-Hoops.png",
 +  city: "Amsterdam",
 +  address: "James Wattstaat 75",
 +  period_beginning: Date.new(2016,2,3),
 +  period_ending: Date.new(2017,1,5)
 +  )
