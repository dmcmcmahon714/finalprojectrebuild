# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

100.times do
  User.create(
    email: Faker::Internet.email,
    encrypted_password: Faker::Alphanumeric.alphanumeric(number: 10),
  )
end

100.times do
  Post.create(
    title: Faker::Music.genre,
    content: Faker::Hipster.paragraph,
    user_id: Faker::Number.between(from: 1, to: 100),
  )
end

100.times do
  Comment.create(
    comment: Faker::Hipster.paragraph,
    post_id: Faker::Number.between(from: 1, to: 100),
    user_id: Faker::Number.between(from: 1, to: 100),
  )
end

100.times do
  Like.create(
    post_id: Faker::Number.between(from: 1, to: 100),
    user_id: Faker::Number.between(from: 1, to: 100),
  )
end




