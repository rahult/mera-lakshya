# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

time_start = Time.new(2011,01,03,19,30,0, "+10:30")
time_end   = Time.new(2012,03,28,19,30,0, "+10:30")
club       = Club.first

while time_start < time_end
  weather = rand(4) > 2 ? "Cold" : "Hot"
  User.all.each do |u|
    u.scores.create!(
      club: club,
      date: time_start.localtime,
      range: "10m Indoors",
      weather: weather,
      score: rand(75..100)
    )
  end
  time_start += 6.days
end
