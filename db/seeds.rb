# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

5.times do |n|
  Category.create(
    title: Faker::Commerce.unique.department,
    description: Faker::Lorem.sentence(3)
  )
end

User.create!(name: 'Masa', email: 'masa@gmail.com', password: 'password', admin: true)

5.times do |n|
  User.create!(name: Faker::Name.unique.name,
        email: "user#{n}@gmail.com",
        password: "password")
end

categories = Category.order("id DESC").take(5)

categories.each do |category|
  5.times do
    content = Faker::Lorem.unique.word
    word = category.words.build(content: content)

    nth = rand(0..2)

    3.times do |i|
      if i == nth
        word.word_answers.build(content: content, correct: true)
      else
        word.word_answers.build(content: Faker::Lorem.word)
      end
    end
    word.save!
  end
end

puts "Success!"