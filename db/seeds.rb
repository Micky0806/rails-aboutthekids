
Activity.destroy_all

Activity.create(
  name: "Basketball",
  description: "Always wanted to feel like Michael Jordan?",
  city: "Amsterdam",
  address: "Admiraal de ruijterweg 296",
  period_beginning: Date.new(2016,2,3),
  period_ending: Date.new(2017,1,5)
  )
Activity.create(
  name: "Painting",
  description: "The best fingerpaiting lessons in Amsterdam",
  city: "Amsterdam",
  address: "Europaplein 57",
  period_beginning: Date.new(2016,2,3),
  period_ending: Date.new(2017,1,5)
  )
Activity.create(
  name: "Piano lessons",
  description: "Learing to play the piano is never been more fun",
  address: "James Wattstaat 75",
  period_beginning: Date.new(2016,2,3),
  period_ending: Date.new(2017,1,5)
  )

