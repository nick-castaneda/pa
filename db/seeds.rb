# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create(
  name: "Nick Castaneda",
  email: "npcastaneda@gmail.com",
  password: "password",
  password_confirmation: "password",
  prof_pic_url: "https://upload.wikimedia.org/wikipedia/commons/9/97/SUMATRAN_ORANGUTAN.jpg",
  party_id: 1,
  city: "Sylmar",
  state: "CA",
  admin: true
)

50.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
    prof_pic_url: Faker::Avatar.image,
    party_id: Faker::Number.between(1, 10),
    city: Faker::Address.city,
    state: Faker::Address.state_abbr
  )
end

users = User.all

10.times do
  content = Faker::Lorem.paragraph
  users.each { |user| user.transcripts.create!(content: content) }
end
