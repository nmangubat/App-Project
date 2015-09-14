# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

  festivals = Festival.create([
      {name: "Oktoberfest", date: "Middle of September - First week of October", kind: "Cultural", location: "Germany"},
      {name: "Full moon party", date: "Evening of the full moon, every month", kind: "Cultural", location: "Thailand"},
      {name: "Distortion", date: "first weekend of June", kind: "Music", location: "Copenhagen, Denmark"}
    ])

  meetups = Meetup.create([
      {festival: "Oktoberfest", location: "Hoffbrau-haus tent", time: "16:00"},
      {festival: "Full moon party", location: "beach entrance", time: "03:00"},
      {festival: "Distortion", location: "stage 5", time: "12:00"},
    ])
  
  users = User.create([
      {name: "Noah", age: "25", country: "USA"},
      {name: "Lea", age: "26", country: "France"},
      {name: "Ismael", age: "28", country: "Mexico"},

    ])



