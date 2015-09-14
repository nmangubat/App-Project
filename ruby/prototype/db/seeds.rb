# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  festivals = Festival.create([
      {name: "Oktoberfest", date: "Middle of September - First week of October", kind: "Cultural", location: "Germany"}
    ])

  meetups = Meetup.create([
      {festival: "Oktoberfest", location: "Hoffbrau-haus tent", time: "16:00"}
    ])
  
  users = User.create([
      {name: "Noah", age: "25", country: "USA"}
    ])



