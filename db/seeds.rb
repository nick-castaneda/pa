# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

drake = User.find(11)
nick = User.find(12)
10.times do
  content = Faker::Lorem.paragraph
  title = Faker::Hipster.sentence
  nick.transcripts.create!(title: title, content: content, date: "01/05/2016")
end

10.times do
  content = Faker::Lorem.paragraph
  title = Faker::Hipster.sentence
  drake.transcripts.create!(title: title, content: content, date: "01/06/2016")
end
