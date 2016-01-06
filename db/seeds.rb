
Party.create(name: "Independent")
Party.create(name: "Democrat")
Party.create(name: "Republican")
Party.create(name: "Socialist")
Party.create(name: "Libertarian")
Party.create(name: "Royalist")
Party.create(name: "Green")


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

49.times do |n|
  User.create(
    name: Faker::Name.name,
    email: Faker::Internet.email,
    password: "password",
    password_confirmation: "password",
    prof_pic_url: Faker::Avatar.image,
    party_id: Faker::Number.between(1, 7),
    city: Faker::Address.city,
    state: Faker::Address.state_abbr
  )
end

users = User.all
10.times do
    users.each { |user| user.transcripts.create!(
      title: Faker::Company.buzzword,
      content: Faker::Lorem.paragraph,
      date: Faker::Date.between(100.days.ago, Date.today)
    ) }
end
users[0].transcripts.create!(
  title: "Trump Immigration Commercial",
  content: "I’m Donald Trump and I approve this message. The politicians can pretend it’s something else but Donald Trump calls it radical Islamic Terrorism. That’s why he’s calling for a temporary shutdown of Muslims entering the United States until we can figure out what’s going on. He’ll quickly cut the head off ISIS and he’ll take their oil. And he’ll stop the illegal immigration by building a wall on our southern border that Mexico will pay for. We will make America great again.",
  date: "20160104"
)

Annotation.create(comment: "This is the first comment for words 0 to 5", link: "first link", start: 0, :end => 5, user_id: 1, transcript_id: 501)
Annotation.create(comment: "This is the second comment for words 0 to 5", link: "second link", start: 10, :end => 15, user_id: 2, transcript_id: 501)
Annotation.create(comment: "This is the third comment for words 0 to 5", link: "third link", start: 18, :end => 23, user_id: 3, transcript_id: 501)








